import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/app1/data/data_models/movies/genre_movies_model.dart';
import 'package:testing/app1/data/data_models/movies/genres_model.dart';
import 'package:testing/app1/data/data_provider.dart';
import 'package:testing/app1/ui/styles/colors.dart';
import 'package:testing/app1/ui/widgets/helper_widgets.dart';
import 'package:testing/app1/ui/widgets/main_widgets/genre_movies_widget.dart';
import 'package:testing/app1/utils/constants.dart';

class GenresWidget extends StatelessWidget {
  final Stream stream;

  const GenresWidget({Key? key, required this.stream}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: stream,
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            GenresModel genresModel = snapshot.data as GenresModel;

            List<Genres>? genresResults = genresModel.genres;

            if (genresResults != null && genresResults.length > 0) {
              return GenresTabWidget(
                genresList: genresResults,
              );
            } else {
              return EmptyWidget(msg: "No Genres Found", height: 325);
            }
          } else if (snapshot.hasError) {
            return EmptyWidget(msg: "No Genres Found", height: 325);
          } else {
            return LoadingWidget(height: 325);
          }
        });
  }
}

class GenresTabWidget extends StatefulWidget {
  final List<Genres> genresList;

  const GenresTabWidget({Key? key, required this.genresList}) : super(key: key);

  @override
  _GenresTabWidgetState createState() => _GenresTabWidgetState();
}

class _GenresTabWidgetState extends State<GenresTabWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController =
        TabController(length: widget.genresList.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310.0,
      child: DefaultTabController(
        length: widget.genresList.length,
        child: Scaffold(
          backgroundColor: AppColors.primaryColor,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: AppBar(
              backgroundColor: AppColors.primaryColor,
              bottom: TabBar(
                controller: _tabController,
                indicatorColor: AppColors.infoColor,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 3.0,
                unselectedLabelColor: AppColors.secondaryColor,
                labelColor: AppColors.whiteColor,
                isScrollable: true,
                tabs: widget.genresList.map(
                      (Genres genres) {
                    return Container(
                      padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
                      child: Text(
                        genres.name!.toUpperCase(),
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            physics: NeverScrollableScrollPhysics(),
            children: widget.genresList.map(
                  (Genres genres) {
                return DataProvider<GenreMoviesModel, GenreMoviesModelSerializer>(
                  path: Constants.genreMoviesUrl,
                  url: Constants.genreMoviesUrl,
                  params: {"with_genres": genres.id},
                  modelSerializer: GenreMoviesModelSerializer(),
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }
}
