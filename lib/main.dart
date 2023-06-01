import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void play(int x){
    final player= AudioPlayer();
                    player.play(AssetSource("note$x.wav"));}

            Expanded make_w({required Color color,required int num}){
    return Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.all(0)
                  ),
                  onPressed: () {
                    play(num);
                    },
                child:Container(
                  color: color,
                ),)
              );
  }        
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:  SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              make_w(color: Colors.red, num: 1),
              make_w(color: Colors.orange, num: 2),
              make_w(color: Colors.yellow, num: 3),
              make_w(color: Colors.green, num: 4),
              make_w(color: Colors.blue, num: 5),
              make_w(color: Colors.pink, num: 6),
              make_w(color: Colors.purple, num: 7),

              
             
              
              
              
            ],
          ),
        ),
      ),
    );
  }
}
