import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:testing/app1/data/data_models/movies/now_playing_model.dart';
import 'package:testing/app1/ui/styles/colors.dart';

import '../helper_widgets.dart';

class NowPlayingWidget extends StatelessWidget {
  final Stream stream;

  NowPlayingWidget({Key? key, required this.stream});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: stream,
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data != null) {
          NowPlayingModel nowPlayingModel = snapshot.data as NowPlayingModel;

          List<Results>? movieResults = nowPlayingModel.results;

          if (movieResults != null && movieResults.length > 0) {
            return Container(
              height: 220,
              child: PageIndicatorContainer(
                align: IndicatorAlign.bottom,
                indicatorSpace: 10.0,
                padding: EdgeInsets.all(5.0),
                indicatorColor: AppColors.secondaryColor,
                indicatorSelectorColor: AppColors.infoColor,
                shape: IndicatorShape.circle(size: 5.0),
                length: 5,
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: movieResults.take(5).length,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 220,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://image.tmdb.org/t/p/original/" +
                                      movieResults[index].backdropPath!),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    AppColors.primaryColor.withOpacity(1.0),
                                    AppColors.primaryColor.withOpacity(0),
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  stops: [0.0, 0.9])),
                        ),
                        Positioned(
                          child: Icon(
                            Icons.play_circle_outline_rounded,
                            color: AppColors.infoColor,
                            size: 35.0,
                          ),
                          top: 0,
                          left: 0,
                          bottom: 0,
                          right: 0,
                        ),
                        Positioned(
                          height: 190.0,
                          child: Container(
                            padding: EdgeInsets.only(left: 10.0, right: 10.0),
                            width: 250.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  movieResults[index].title!,
                                  style: TextStyle(
                                      height: 1.5,
                                      color: AppColors.lightColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
            );
          } else {
            return EmptyWidget(msg: "No Movies Found", height: 220,);
          }
        } else if (snapshot.hasError) {
          return EmptyWidget(msg: "No Genres Found", height: 220);
        } else {
          return LoadingWidget(height: 220);
        }
      },
    );
  }
}
