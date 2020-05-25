import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playsound(int num){
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded createButton({Color color,int soundNum}){
   return Expanded(
      child: FlatButton(
        onPressed: (){
          playsound(soundNum);
        },
        color:color,
        // child: Text("Click here"),

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
            createButton(color:Colors.redAccent,soundNum:1),
            createButton(color:Colors.orange,soundNum:2),
            createButton(color:Colors.blue,soundNum:3),
            createButton(color:Colors.green,soundNum:4),
            createButton(color:Colors.deepPurple,soundNum:5),
            createButton(color:Colors.teal,soundNum:6),
            createButton(color:Colors.purpleAccent,soundNum:7),

          ],
         ),
        ),
      ),
    );
  }
}