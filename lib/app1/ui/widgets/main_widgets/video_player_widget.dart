import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerWidget extends StatefulWidget {
  final YoutubePlayerController youtubePlayerController;

  const VideoPlayerWidget({Key? key, required this.youtubePlayerController})
      : super(key: key);

  @override
  _VideoPlayerWidgetState createState() =>
      _VideoPlayerWidgetState(youtubePlayerController);
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  final YoutubePlayerController youtubePlayerController;

  _VideoPlayerWidgetState(this.youtubePlayerController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: YoutubePlayer(
              controller: youtubePlayerController,
            ),
          ),
          Positioned(
            top: 40.0,
            right: 20.0,
            child: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
