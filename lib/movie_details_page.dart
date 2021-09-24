import 'package:flutter/material.dart';
import 'package:testing/app1/data/data_models/movies/movie_details_model.dart';
import 'package:testing/app1/ui/styles/colors.dart';

import 'app1/data/data_provider.dart';
import 'app1/utils/constants.dart';

class MovieDetailsPage extends StatefulWidget {
  final int movieId;

  MovieDetailsPage({Key? key, required this.movieId}) : super(key: key);

  @override
  _MovieDetailsPageState createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState extends State<MovieDetailsPage> {
  @override
  Widget build(BuildContext context) {

    print(widget.movieId);

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: DataProvider<MovieDetailsModel, MovieDetailsModelSerializer>(
        path: Constants.movieDetailsUrl,
        url: Constants.getMovieDetailsUrl(widget.movieId),
        params: {},
        modelSerializer: MovieDetailsModelSerializer(),
      ),
    );
  }
}
