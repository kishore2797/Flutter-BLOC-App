import 'package:flutter/material.dart';
import 'package:testing/app1/data/data_models/movies/movie_videos_model.dart';
import 'package:testing/app1/ui/styles/colors.dart';
import 'package:testing/app1/ui/widgets/main_widgets/video_player_widget.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../helper_widgets.dart';

class VideoFloatingWidget extends StatefulWidget {
  final Stream stream;

  VideoFloatingWidget({Key? key, required this.stream}) : super(key: key);

  @override
  _VideoFloatingWidgetState createState() => _VideoFloatingWidgetState();
}

class _VideoFloatingWidgetState extends State<VideoFloatingWidget> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
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
          MovieVideosModel movieVideosModel = snapshot.data as MovieVideosModel;
          List<Results>? results = movieVideosModel.results;
          return results != null && results.length > 0
              ? _buildFab(results)
              : Container();
        } else if (snapshot.hasError) {
          return EmptyWidget(msg: "", height: 60);
        } else {
          return LoadingWidget(height: 60);
        }
      },
    );
  }

  Widget _buildFab(List<Results> results) {
    //starting fab position
    final double defaultTopMargin = 250.0 - 4.0;
    //pixels from top where scaling should start
    final double scaleStart = 96.0;
    //pixels from top where scaling should end
    final double scaleEnd = scaleStart / 2;

    double top = defaultTopMargin;
    double scale = 1.0;
    if (_scrollController.hasClients) {
      double offset = _scrollController.offset;
      top -= offset;
      if (offset < defaultTopMargin - scaleStart) {
        //offset small => don't scale down
        scale = 1.0;
      } else if (offset < defaultTopMargin - scaleEnd) {
        //offset between scaleStart and scaleEnd => scale down
        scale = (defaultTopMargin - scaleEnd - offset) / scaleEnd;
      } else {
        //offset passed scaleEnd => hide fab
        scale = 0.0;
      }
    }

    return Positioned(
      top: top,
      right: 16.0,
      child: Transform(
        transform: Matrix4.identity()..scale(scale),
        alignment: Alignment.center,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VideoPlayerWidget(
                  youtubePlayerController:
                      YoutubePlayerController(initialVideoId: results[0].key!),
                ),
              ),
            );
          },
          backgroundColor: AppColors.infoColor,
          child: Icon(
            Icons.play_arrow_rounded,
          ),
        ),
      ),
    );
  }
}
