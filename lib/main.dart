import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                color: Colors.redAccent,
                onPressed: (){
                  final player = AudioCache();
                  player.play('assets/note1.wav');
                },
              ),
              FlatButton(
                color: Colors.deepOrangeAccent,
                onPressed: (){
                  final player = AudioCache();
                  player.play('assets/note2.wav');
                },
              ),
              FlatButton(
                color: Colors.yellowAccent,
                onPressed: (){
                  final player = AudioCache();
                  player.play('assets/note3.wav');
                },
              ),
              FlatButton(
                color: Colors.lightGreen,
                onPressed: (){
                  final player = AudioCache();
                  player.play('assets/note4.wav');
                },
              ),
              FlatButton(
                color: Colors.green,
                onPressed: (){
                  final player = AudioCache();
                  player.play('assets/note5.wav');
                },
              ),
              FlatButton(
                color: Colors.blueAccent,
                onPressed: (){
                  final player = AudioCache();
                  player.play('assets/note6.wav');
                },
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: (){
                  final player = AudioCache();
                  player.play('assets/note7.wav');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}