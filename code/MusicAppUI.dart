import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    home: MusicPlayer(),
  ));
}

class MusicPlayer extends StatefulWidget {
  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  AudioPlayer audioPlayer;
  String audioUrl =
      "https://example.com/sample_audio.mp3"; // Replace with your audio URL

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music Player'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.play_arrow),
              iconSize: 64,
              onPressed: () {
                audioPlayer.play(audioUrl);
              },
            ),
            IconButton(
              icon: Icon(Icons.pause),
              iconSize: 64,
              onPressed: () {
                audioPlayer.pause();
              },
            ),
            IconButton(
              icon: Icon(Icons.stop),
              iconSize: 64,
              onPressed: () {
                audioPlayer.stop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
