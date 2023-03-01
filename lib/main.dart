import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const xylophone());
}

class xylophone extends StatelessWidget {
  const xylophone({Key? key}) : super(key: key);

  void PlaySound(int SoundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$SoundNumber.wav'));
  }

  Expanded Xylophone_key({int SoundNumber = 0, Color bgcolor = Colors.grey}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          PlaySound(SoundNumber);
        },
        style: TextButton.styleFrom(
            backgroundColor: bgcolor,
            enableFeedback: false),
        child: Center(child: Text('$SoundNumber', style: TextStyle(color: bgcolor),)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(children: [
            Xylophone_key(SoundNumber: 1, bgcolor: Colors.red),
            Xylophone_key(SoundNumber: 2, bgcolor: Colors.orange),
            Xylophone_key(SoundNumber: 3, bgcolor: Colors.yellow),
            Xylophone_key(SoundNumber: 4, bgcolor: Colors.green),
            Xylophone_key(SoundNumber: 5, bgcolor: Colors.blue),
            Xylophone_key(SoundNumber: 6, bgcolor: Colors.indigo),
            Xylophone_key(SoundNumber: 7, bgcolor: Colors.purpleAccent),
          ]),
        ),
      ),
    );
  }
}
