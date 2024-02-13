import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            XylophoneButton(
              color: Colors.red,
              audio: AssetSource('assets_note1.wav'),
            ),
            XylophoneButton(
              color: Colors.orange,
              audio: AssetSource('assets_note2.wav'),
            ),
            XylophoneButton(
              color: Colors.yellow,
              audio: AssetSource('assets_note3.wav'),
            ),
            XylophoneButton(
              color: Colors.green,
              audio: AssetSource('assets_note4.wav'),
            ),
            XylophoneButton(
              color: Colors.teal,
              audio: AssetSource('assets_note5.wav'),
            ),
            XylophoneButton(
              color: Colors.blue,
              audio: AssetSource('assets_note6.wav'),
            ),
            XylophoneButton(
              color: Colors.purple,
              audio: AssetSource('assets_note7.wav'),
            ),
          ],
        ),
      ),
    );
  }
}

class XylophoneButton extends StatelessWidget {
  final Color color;
  final AssetSource audio;
  final AudioPlayer player;
  XylophoneButton({
    super.key,
    required this.color,
    required this.audio,
  }) : player = AudioPlayer() {
    player.setSource(audio);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            player.stop();
            player.resume();
          },
          child: Text(''),
        ),
      ),
    );
  }
}
