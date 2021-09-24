import 'package:flutter/material.dart';
import 'package:testing/app1/abstracts/data_base.dart';
import 'package:testing/app1/abstracts/model_base.dart';
import 'package:testing/app1/ui/widgets/base_widget_builder.dart';
import 'data_repository.dart';

class _DataProviderInherited<V> extends InheritedWidget {
  final V dataRepository;

  _DataProviderInherited(
      {Key? key, required this.dataRepository, required Widget child})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}

class DataProvider<T, R extends ModelBase<T>> extends StatefulWidget {
  final String path;
  final String url;
  final Map<String, dynamic> params;

  final R modelSerializer;

  DataProvider(
      {Key? key,
        required this.path,
        required this.url,
      required this.params,
      required this.modelSerializer})
      : super(key: key);

  @override
  _DataProviderState<T, R> createState() => _DataProviderState<T, R>();

  static V of<V extends DataBase>(BuildContext buildContext) {
    _DataProviderInherited<V> providerInherited = buildContext
        .getElementForInheritedWidgetOfExactType<_DataProviderInherited<V>>()
        ?.widget as _DataProviderInherited<V>;

    return providerInherited.dataRepository;
  }
}

class _DataProviderState<T, R extends ModelBase<T>>
    extends State<DataProvider<T, R>> {
  DataRepository<T, R>? dataRepository;

  @override
  void initState() {
    super.initState();

    dataRepository = DataRepository(
        url: widget.url, params: widget.params, modelSerializer: widget.modelSerializer);
    dataRepository?.initData();
  }

  @override
  void dispose() {
    dataRepository?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _DataProviderInherited<DataRepository<T, R>>(
        dataRepository: dataRepository!,
        child: BaseWidgetBuilder<T, R>(
          path: widget.path,
        ));
  }
}
