import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int x){
    final player=AudioCache();
    player.play('note$x.wav');
  }
  Expanded keysound(Color s ,int z){
    return Expanded(
      child: FlatButton(
 color: s,
        onPressed: (){
          playsound(z);

        }, ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                keysound(Colors.red,1),
                keysound(Colors.orange,2),
                keysound(Colors.yellow,3),
                keysound(Colors.green,4),
                keysound(Colors.teal,5),
                keysound(Colors.blue,6),
                keysound(Colors.purple,7),


              ],
          ),
            ),),
      ),
    );
  }
}
