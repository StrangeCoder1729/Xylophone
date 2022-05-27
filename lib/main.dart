import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int num){

          final player = AudioCache();
          player.play('note$num.wav');
    }

    Expanded buildKey(color , int num){
      return Expanded(
        child: TextButton (
          child : const Text(''),
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color),),
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

              child : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildKey(Colors.red, 1),
                  buildKey(Colors.orange,2),
                  buildKey(Colors.yellow,3),
                  buildKey(Colors.green,4),
                  buildKey(Colors.teal,5),
                  buildKey(Colors.blue,6),
                  buildKey(Colors.purple,7),
                ],
              ),

          )

      ),

      );

  }
}
