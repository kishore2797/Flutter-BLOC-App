import 'package:testing/practice/item_model.dart';
import 'package:testing/practice/service_providers.dart';

class DataRepository {
  final serviceProviders = ServiceProviders();

  Future<ItemModel> fetchAllMovies() => serviceProviders.fetchMovieList();
}
