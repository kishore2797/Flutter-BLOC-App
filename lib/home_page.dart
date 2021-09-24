import 'package:flutter/material.dart';
import 'package:testing/app1/data/data_models/movies/genres_model.dart';
import 'package:testing/app1/data/data_models/movies/now_playing_model.dart';
import 'package:testing/app1/data/data_models/movies/trending_movies_model.dart';
import 'package:testing/app1/data/data_models/persons/trending_persons.dart';
import 'package:testing/app1/data/data_provider.dart';
import 'package:testing/app1/ui/styles/colors.dart';
import 'package:testing/app1/utils/constants.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

void main() {
  runApp(new MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        title: Text("Movies Troop"),
        leading: Icon(Icons.menu),
        actions: <Widget>[
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search,
              color: AppColors.whiteColor,
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          DataProvider<NowPlayingModel, NowPlayingModeSerializer>(
            path: Constants.nowPlayingUrl,
            url: Constants.nowPlayingUrl,
            params: {},
            modelSerializer: NowPlayingModeSerializer(),
          ),
          DataProvider<GenresModel, GenresModelSerializer>(
            path: Constants.genresUrl,
            url: Constants.genresUrl,
            params: {},
            modelSerializer: GenresModelSerializer(),
          ),
          DataProvider<TrendingPersonsModel, TrendingPersonsModelSerializer>(
            path: Constants.trendingPersonsUrl,
            url: Constants.trendingPersonsUrl,
            params: {},
            modelSerializer: TrendingPersonsModelSerializer(),
          ),
          DataProvider<TrendingMoviesModel, TrendingMoviesModelSerializer>(
            path: Constants.trendingMoviesUrl,
            url: Constants.trendingMoviesUrl,
            params: {},
            modelSerializer: TrendingMoviesModelSerializer(),
          ),
        ],
      ),
    );
  }
}
