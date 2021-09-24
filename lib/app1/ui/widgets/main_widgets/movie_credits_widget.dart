import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/app1/data/data_models/movies/movie_credits_model.dart';
import 'package:testing/app1/ui/styles/colors.dart';

import '../helper_widgets.dart';

class MovieCreditsWidget extends StatelessWidget {
  final Stream stream;

  const MovieCreditsWidget({Key? key, required this.stream}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: stream,
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data != null) {

          MovieCreditsModel movieCreditsModel =
              snapshot.data as MovieCreditsModel;

          List<Cast>? cast = movieCreditsModel.cast;
          List<Crew>? crew = movieCreditsModel.crew;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0, top: 10.0),
                child: Text(
                  "CAST",
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
              cast != null && cast.length > 0 ? Container(
                height: 120,
                padding: EdgeInsets.only(left: 10.0),
                margin: EdgeInsets.only(bottom: 10.0),
                child: ListView.builder(
                  itemCount: cast.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(
                        top: 10.0,
                        right: 0.0,
                      ),
                      margin: EdgeInsets.only(
                        right: 10.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          cast[index].profilePath == null
                              ? Container(
                            width: 70.0,
                            height: 70.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.infoColor,
                            ),
                            child: Icon(Icons.person),
                          )
                              : Container(
                            width: 70.0,
                            height: 70.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                    "https://image.tmdb.org/t/p/w200/" +
                                        cast[index]
                                            .profilePath
                                            .toString(),
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            cast[index].name!.length > 15
                                ? cast[index]
                                .name!
                                .substring(0, 15) +
                                '...'
                                : cast[index].name!,
                            style: TextStyle(
                              height: 1.4,
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 9.0,
                            ),
                          ),
                          SizedBox(
                            height: 3.0,
                          ),
                          Container(
                            width: 100.0,
                            child: Center(
                              child: Text(
                                "Trending for ${cast[index].knownForDepartment}",
                                style: TextStyle(
                                  color: AppColors.secondaryColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 8.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
              : Container(
                height: 100,
                child: Center(
                  child: Text("No Cast Found"),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0, top: 10.0),
                child: Text(
                  "CREW",
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
              crew != null && crew.length > 0 ? Container(
                height: 120,
                padding: EdgeInsets.only(left: 10.0),
                margin: EdgeInsets.only(bottom: 10.0),
                child: ListView.builder(
                  itemCount: crew.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(
                        top: 10.0,
                        right: 0.0,
                      ),
                      margin: EdgeInsets.only(
                        right: 10.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          crew[index].profilePath == null
                              ? Container(
                            width: 70.0,
                            height: 70.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.infoColor,
                            ),
                            child: Icon(Icons.person),
                          )
                              : Container(
                            width: 70.0,
                            height: 70.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                    "https://image.tmdb.org/t/p/w200/" +
                                        crew[index]
                                            .profilePath
                                            .toString(),
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            crew[index].name!.length > 15
                                ? crew[index]
                                .name!
                                .substring(0, 15) +
                                '...'
                                : crew[index].name!,
                            style: TextStyle(
                              height: 1.4,
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 9.0,
                            ),
                          ),
                          SizedBox(
                            height: 3.0,
                          ),
                          Container(
                            width: 100.0,
                            child: Center(
                              child: Text(
                                "${crew[index].job}",
                                style: TextStyle(
                                  color: AppColors.secondaryColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 8.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
                  : Container(
                height: 100,
                child: Center(
                  child: Text("No Cast Found"),
                ),
              ),
            ],
          );
        } else if (snapshot.hasError) {
          return EmptyWidget(msg: "No Persons Found", height: 120);
        } else {
          return LoadingWidget(height: 120);
        }
      },
    );
  }
}
