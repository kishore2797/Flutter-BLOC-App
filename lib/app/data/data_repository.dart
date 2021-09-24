import 'package:rxdart/rxdart.dart';
import 'package:testing/app/abstracts/data_base.dart';
import 'package:testing/app/abstracts/model_base.dart';
import 'package:testing/app/data/data_models/movies/now_playing_model.dart';
import 'package:testing/app/data/data_source.dart';

class DataRepository<T, R extends ModelBase<T>> extends DataBase {
  final _responseSubject = PublishSubject<T>();
  late Stream<T> responseSubjectStream;

  final String url;
  final R modelSerializer;

  DataSource<T, R>? _dataSource;

  DataRepository({required this.url, required this.modelSerializer}) {
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
        ?.getDataResponse()
        .then((value) => _responseSubject.sink.add(value));
  }

  @override
  void dispose() {
    _responseSubject.close();
  }
}
