import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'QuoteFuntions/Quote.dart';
import 'VideoPageV.dart';

class MyVideoPlayer extends StatefulWidget {
  final String customURL;
  final Quote quote;

  const MyVideoPlayer(this.customURL, this.quote);

  @override
  State<StatefulWidget> createState() {
    return _MyVideoPlayerState();
  }
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  YoutubePlayerController controller;
  Quote quote;
  @override
  void initState() {
    controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(widget.customURL),
        flags: const YoutubePlayerFlags(
          mute: false,
          loop: false,
          autoPlay: true,
          controlsVisibleAtStart: false,
          enableCaption: true,
        ));

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 100,
        leading: ElevatedButton.icon(
          onPressed: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => VideoPageV(quote)));
          },
          icon: const Icon(Icons.arrow_back_ios),
          label: const Text('Back'),
          style: ElevatedButton.styleFrom(
              elevation: 0, primary: Colors.transparent),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SizedBox(
        height: screenSize.height,
        width: screenSize.width,
        child: YoutubePlayer(
          controller: controller,
        ),
      ),
    );
  }
}
