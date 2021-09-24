import 'package:flutter/material.dart';
import 'package:testing/app1/abstracts/model_base.dart';
import 'package:testing/app1/data/data_provider.dart';
import 'package:testing/app1/data/data_repository.dart';
import 'package:testing/app1/ui/widgets/main_widgets/genre_movies_widget.dart';
import 'package:testing/app1/ui/widgets/main_widgets/genres_widget.dart';
import 'package:testing/app1/ui/widgets/main_widgets/movie_credits_widget.dart';
import 'package:testing/app1/ui/widgets/main_widgets/movie_details_widget.dart';
import 'package:testing/app1/ui/widgets/main_widgets/now_playing_widget.dart';
import 'package:testing/app1/ui/widgets/main_widgets/trending_movies_widget.dart';
import 'package:testing/app1/ui/widgets/main_widgets/trending_persons_widget.dart';
import 'package:testing/app1/utils/constants.dart';

import 'helper_widgets.dart';
import 'main_widgets/video_floating_widget.dart';

class BaseWidgetBuilder<T, R extends ModelBase<T>> extends StatelessWidget {
  final String path;

  BaseWidgetBuilder({Key? key, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext buildContext) {
    final DataRepository<T, R> dataRepository =
        DataProvider.of<DataRepository<T, R>>(buildContext);

    switch (path) {
      case Constants.nowPlayingUrl:
        return NowPlayingWidget(stream: dataRepository.responseSubjectStream);
      case Constants.genresUrl:
        return GenresWidget(stream: dataRepository.responseSubjectStream);
      case Constants.genreMoviesUrl:
        return GenreMoviesWidget(
          stream: dataRepository.responseSubjectStream,
        );
      case Constants.trendingPersonsUrl:
        return TrendingPersonsWidget(
          stream: dataRepository.responseSubjectStream,
        );
      case Constants.trendingMoviesUrl:
        return TrendingMoviesWidget(
          stream: dataRepository.responseSubjectStream,
            title: "TODAY TRENDING MOVIES"
        );
      case Constants.movieDetailsUrl:
        return MovieDetailsWidget(
          stream: dataRepository.responseSubjectStream,
        );
      case Constants.movieCreditsUrl:
        return MovieCreditsWidget(
          stream: dataRepository.responseSubjectStream,
        );
      case Constants.similarMoviesUrl:
        return TrendingMoviesWidget(
          stream: dataRepository.responseSubjectStream,
          title: "SIMILAR MOVIES",
        );
      case Constants.movieVideosUrl:
        return VideoFloatingWidget(
          stream: dataRepository.responseSubjectStream,
        );
      default:
        return EmptyWidget(
          msg: "No Movies Found",
          height: 200,
        );
    }
  }
}
