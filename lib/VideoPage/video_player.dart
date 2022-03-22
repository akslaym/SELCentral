import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class MyVideoPlayer extends StatefulWidget {
  final String customURL;
  const MyVideoPlayer(this.customURL);
//  const MyVideoPlayer({Key? key}) : super(key: key)
  @override
  State<StatefulWidget> createState() {
    return _MyVideoPlayerState();
  }
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  YoutubePlayerController controller;

  @override
  void initState() {
    controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(widget.customURL),
        flags: const YoutubePlayerFlags(
          mute: false,
          loop: false,
          autoPlay: true,
          controlsVisibleAtStart: true,
        )
    );
    super.initState();
  }

  @override
  void deactivate() {
    controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: screenSize.height,
      width: screenSize.width,
      child: YoutubePlayer(controller: controller,),
    );
  }
}
