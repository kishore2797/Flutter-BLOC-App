import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:testing/app1/data/data_models/movies/movie_credits_model.dart';
import 'package:testing/app1/data/data_models/movies/movie_details_model.dart';
import 'package:testing/app1/data/data_models/movies/movie_videos_model.dart';
import 'package:testing/app1/data/data_models/movies/trending_movies_model.dart';
import 'package:testing/app1/data/data_provider.dart';
import 'package:testing/app1/ui/styles/colors.dart';
import 'package:testing/app1/utils/constants.dart';

import '../helper_widgets.dart';

class MovieDetailsWidget extends StatefulWidget {
  final Stream stream;

  MovieDetailsWidget({Key? key, required this.stream}) : super(key: key);

  @override
  _MovieDetailsWidgetState createState() => _MovieDetailsWidgetState();
}

class _MovieDetailsWidgetState extends State<MovieDetailsWidget> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = new ScrollController();
    _scrollController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: widget.stream,
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data != null) {
          MovieDetailsModel movieDetailsModel =
              snapshot.data as MovieDetailsModel;

          return Stack(
            children: <Widget>[
              new CustomScrollView(
                controller: _scrollController,
                slivers: [
                  SliverAppBar(
                    backgroundColor: AppColors.primaryColor,
                    expandedHeight: 250,
                    pinned: true,
                    centerTitle: false,
                    flexibleSpace: FlexibleSpaceBar(
                      centerTitle: false,
                      titlePadding: EdgeInsets.only(left: 10.0, bottom: 10.0),
                      title: Text(
                        movieDetailsModel.title!.length > 30
                            ? movieDetailsModel.title!.substring(0, 27) + "..."
                            : movieDetailsModel.title!,
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      background: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://image.tmdb.org/t/p/original/" +
                                      movieDetailsModel.backdropPath!,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  AppColors.primaryColor.withOpacity(0.9),
                                  AppColors.primaryColor.withOpacity(0.0),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: EdgeInsets.all(0.0),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          Padding(
                            padding: EdgeInsets.only(left: 10.0, top: 20.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  (movieDetailsModel.voteAverage! / 2)
                                      .toString(),
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                RatingBar.builder(
                                  itemSize: 10.0,
                                  initialRating:
                                      movieDetailsModel.voteAverage! / 2,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 2.0),
                                  unratedColor: AppColors.secondaryColor,
                                  itemBuilder: (context, _) => Icon(Icons.star,
                                      color: AppColors.infoColor),
                                  onRatingUpdate: (rating) {},
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0, top: 20.0),
                            child: Text(
                              "OVERVIEW",
                              style: TextStyle(
                                color: AppColors.secondaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              movieDetailsModel.overview!,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                height: 1.5,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "BUDGET",
                                      style: TextStyle(
                                          color: AppColors.secondaryColor),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      movieDetailsModel.budget.toString() +
                                          "\$",
                                      style: TextStyle(
                                        color: AppColors.infoColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "DURATION",
                                      style: TextStyle(
                                          color: AppColors.secondaryColor),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      movieDetailsModel.runtime.toString() +
                                          "min",
                                      style: TextStyle(
                                        color: AppColors.infoColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "RELEASE DATE",
                                      style: TextStyle(
                                          color: AppColors.secondaryColor),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      movieDetailsModel.releaseDate.toString(),
                                      style: TextStyle(
                                        color: AppColors.infoColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "GENRES",
                                  style: TextStyle(
                                    color: AppColors.secondaryColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0,
                                  ),
                                ),
                                Container(
                                  height: 45.0,
                                  padding: EdgeInsets.symmetric(
                                    vertical: 10.0,
                                  ),
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: movieDetailsModel.genres?.length,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        padding: EdgeInsets.all(5.0),
                                        margin: EdgeInsets.symmetric(
                                          horizontal: 4.0,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(5.0),
                                          ),
                                          border: Border.all(
                                            width: 1.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        child: Text(
                                          movieDetailsModel
                                              .genres![index].name!,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10.0,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          DataProvider<MovieCreditsModel,
                              MovieCreditsModelSerializer>(
                            path: Constants.movieCreditsUrl,
                            url: Constants.getMovieCreditsUrl(
                                movieDetailsModel.id!),
                            params: {},
                            modelSerializer: MovieCreditsModelSerializer(),
                          ),
                          DataProvider<TrendingMoviesModel, TrendingMoviesModelSerializer>(
                            path: Constants.similarMoviesUrl,
                            url: Constants.getSimilarMoviesUrl(movieDetailsModel.id!),
                            params: {},
                            modelSerializer: TrendingMoviesModelSerializer(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              DataProvider<MovieVideosModel, MovieVideosModelSerializer>(
                path: Constants.movieVideosUrl,
                url: Constants.getMovieVideosUrl(movieDetailsModel.id!),
                params: {},
                modelSerializer: MovieVideosModelSerializer(),
              ),
            ],
          );
        } else if (snapshot.hasError) {
          return EmptyWidget(msg: "Movie Details Not Found", height: 200);
        } else {
          return LoadingWidget(height: 200);
        }
      },
    );
  }
}
