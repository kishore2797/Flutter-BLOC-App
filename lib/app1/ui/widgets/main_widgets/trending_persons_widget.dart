import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/app1/data/data_models/persons/trending_persons.dart';
import 'package:testing/app1/ui/styles/colors.dart';

import '../helper_widgets.dart';

class TrendingPersonsWidget extends StatelessWidget {
  final Stream stream;

  const TrendingPersonsWidget({Key? key, required this.stream})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10.0, top: 10.0),
          child: Text(
            "TRENDING PERSONS ON THIS WEEK",
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
        StreamBuilder(
          stream: stream,
          builder: (context, snapshot) {
            if (snapshot.hasData && snapshot.data != null) {
              TrendingPersonsModel trendingPersonsModel =
                  snapshot.data as TrendingPersonsModel;

              List<Results>? personsResults = trendingPersonsModel.results;

              if (personsResults != null && personsResults.length > 0) {
                return Container(
                  height: 120,
                  padding: EdgeInsets.only(left: 10.0),
                  margin: EdgeInsets.only(bottom: 10.0),
                  child: ListView.builder(
                    itemCount: personsResults.length,
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
                            personsResults[index].profilePath == null
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
                                                personsResults[index]
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
                              personsResults[index].name!.length > 15
                                  ? personsResults[index]
                                  .name!
                                  .substring(0, 15) +
                                  '...'
                                  : personsResults[index].name!,
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
                                  "Trending for ${personsResults[index].knownForDepartment}",
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
                );
              } else {
                return EmptyWidget(
                  msg: "No Persons Found",
                  height: 120,
                );
              }
            } else if (snapshot.hasError) {
              return EmptyWidget(msg: "No Persons Found", height: 120);
            } else {
              return LoadingWidget(height: 120);
            }
          },
        )
      ],
    );
  }
}
