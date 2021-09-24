import 'package:flutter/material.dart';
import 'package:testing/app/abstracts/model_base.dart';
import 'package:testing/app/data/data_builder.dart';
import 'package:testing/app/data/data_models/movies/now_playing_model.dart';
import 'package:testing/app/data/data_provider.dart';
import 'package:testing/app/data/data_repository.dart';

class DataBuilder<T, R extends ModelBase<T>> extends StatelessWidget {
  final R modelSerializer;

  DataBuilder({Key? key, required this.modelSerializer}) : super(key: key);

  @override
  Widget build(BuildContext buildContext) {
    final DataRepository<T, R> dataRepository =
        DataProvider.of<DataRepository<T, R>>(buildContext);

    return StreamBuilder(
        stream: dataRepository.responseSubjectStream,
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            NowPlayingModel nowPlayingModel = snapshot.data as NowPlayingModel;

            List<Results>? movieResults = nowPlayingModel.results;

            if (movieResults != null && movieResults.length > 0) {
              return ListView.builder(
                  itemCount: movieResults.length,
                  itemBuilder: (context, index) {
                    return Text(movieResults[index].id.toString());
                  });
            } else {
              return Text("No Items Found");
            }
          } else {
            return Text("No Items Found");
          }
        });
  }
}
