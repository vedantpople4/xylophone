import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());
class XylophoneApp extends StatelessWidget {
  void playSound(int num){
    final assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer.open(
      Audio('assets/note$num.wav'),
    );
  }

  Expanded buildKey({Color color, int num}){
    return Expanded(
      child: FlatButton(
        child : Text('Note $num'),
        color: color,
        onPressed: (){
          playSound(num);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, num:1),
              buildKey(color: Colors.orange, num:2),
              buildKey(color: Colors.yellow, num:3),
              buildKey(color: Colors.lightGreen, num:4),
              buildKey(color: Colors.green, num:5),
              buildKey(color: Colors.lightBlue, num:6),
              buildKey(color: Colors.blue, num:7),

            ],
          ),
        ),
      ),
    );
  }
}