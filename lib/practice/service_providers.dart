import 'dart:convert';

import 'package:http/http.dart' show Client;

import 'item_model.dart';

class ServiceProviders {
  Client client = Client();
  final _apiKey = '63e2f7bc00c513994d63c9be541a08d1';

  Future<ItemModel> fetchMovieList() async {
    print("entered");
    final response = await client.get(Uri.parse("https://api.themoviedb.org/3/movie/popular?api_key=$_apiKey"));
    print(response.body.toString());
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
}