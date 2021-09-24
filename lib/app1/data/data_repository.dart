import 'package:rxdart/rxdart.dart';
import 'package:testing/app1/abstracts/data_base.dart';
import 'package:testing/app1/abstracts/model_base.dart';
import 'package:testing/app1/data/data_source.dart';

class DataRepository<T, R extends ModelBase<T>> extends DataBase {
  final _responseSubject = PublishSubject<T>();
  late Stream<T> responseSubjectStream;

  final String url;
  final Map<String, dynamic> params;
  final R modelSerializer;

  DataSource<T, R>? _dataSource;

  DataRepository({required this.url, required this.params, required this.modelSerializer}) {
    _dataSource = DataSource<T, R>(url: url, model: modelSerializer);
    responseSubjectStream = _responseSubject.stream;
    // fetchDataResponse();
  }

  // void fetchDataResponse() {
  //
  // }

  @override
  void initData() {
    _dataSource
        ?.getDataResponse(params: params)
        .then((value) => _responseSubject.sink.add(value));
  }

  @override
  void dispose() {
    _responseSubject.close();
  }
}
