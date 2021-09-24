import 'package:dio/dio.dart';
import 'package:testing/app/abstracts/model_base.dart';
import 'package:testing/app/data/data_models/movies/now_playing_model.dart';

class DataSource<T, R extends ModelBase<T>> {
  final String _apiKey = "63e2f7bc00c513994d63c9be541a08d1";
  final String _baseURL = "https://api.themoviedb.org/3";

  final Dio _dio = Dio();

  var _params;

  final String url;
  final R model;

  DataSource({
    required this.url,
    required this.model
  }) {
    _params =  {'api_key': _apiKey};
  }

  // Future<NowPlayingModel> getNowPlayingDataResponse() async {
  //   Response _tResponse = await _dio.get(_baseURL + url, queryParameters: _params);
  //
  //   return NowPlayingModel.fromJson(_tResponse.data);
  // }

  Future<T> getDataResponse() async {
    Response _tResponse = await _dio.get(_baseURL + url, queryParameters: _params);

    return model.fromJson(_tResponse.data);
  }
}