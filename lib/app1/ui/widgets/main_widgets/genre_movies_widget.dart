import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:testing/app1/data/data_models/movies/genre_movies_model.dart';
import 'package:testing/app1/ui/styles/colors.dart';
import 'package:testing/movie_details_page.dart';

import '../helper_widgets.dart';

class GenreMoviesWidget extends StatefulWidget {
  final Stream stream;

  const GenreMoviesWidget({Key? key, required this.stream}) : super(key: key);

  @override
  _GenreMoviesWidgetState createState() => _GenreMoviesWidgetState();
}

class _GenreMoviesWidgetState extends State<GenreMoviesWidget> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: widget.stream,
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            GenreMoviesModel genreMoviesModel =
                snapshot.data as GenreMoviesModel;

            List<Results>? genreMoviesResults = genreMoviesModel.results;

            if (genreMoviesResults != null && genreMoviesResults.length > 0) {
              return Container(
                height: 270.0,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: genreMoviesResults.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        print(
                            "genreMoviesResults[index].id ${genreMoviesResults[index].id}");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MovieDetailsPage(
                              movieId: genreMoviesResults[index].id!,
                            ),
                          ),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            genreMoviesResults[index].posterPath == null
                                ? Container(
                                    width: 120.0,
                                    height: 170.0,
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(2.0),
                                      ),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.movie_outlined,
                                          color: AppColors.whiteColor,
                                          size: 50.0,
                                        ),
                                      ],
                                    ),
                                  )
                                : Container(
                                    width: 120.0,
                                    height: 170.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(2.0),
                                        ),
                                        shape: BoxShape.rectangle,
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              "https://image.tmdb.org/t/p/w200/" +
                                                  genreMoviesResults[index]
                                                      .posterPath!),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              width: 100.0,
                              child: Text(
                                genreMoviesResults[index].title!.length > 15
                                    ? genreMoviesResults[index]
                                            .title!
                                            .substring(0, 15) +
                                        '...'
                                    : genreMoviesResults[index].title!,
                                style: TextStyle(
                                  height: 1.4,
                                  color: AppColors.whiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              children: [
                                Text(
                                  (genreMoviesResults[index].voteAverage! / 2)
                                      .toString(),
                                  style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                RatingBar.builder(
                                  itemSize: 8.0,
                                  initialRating:
                                      genreMoviesResults[index].voteAverage! /
                                          2,
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
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            } else {
              return EmptyWidget(msg: "No Genre Movies Found", height: 310);
            }
          } else if (snapshot.hasError) {
            return EmptyWidget(msg: "No Genre Movies Found", height: 310);
          } else {
            return LoadingWidget(height: 310);
          }
        });
  }
}
