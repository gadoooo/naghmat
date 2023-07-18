import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() {
  runApp(MusicApp());
}


class MusicApp extends StatelessWidget{
  void playmusic(int number){
    Audio audio = Audio.load('assets/music-$number.mp3');
    audio.play();
  }

  Expanded mybutton(int songnumber,Color color,String btext){

    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(3),
        child:  ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.white,
            ),
            onPressed: (){
              playmusic(songnumber);
            },
            child: Row(
              children: [
                Icon(Icons.music_note,color: color,),
                SizedBox(
                  width: 150,
                ),
                Text(btext,style: TextStyle(color: color,fontSize: 20),)
              ],
            ),

        ),
      ),


    );

  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title:const Text("نغمات"),
          centerTitle: true,
          backgroundColor: Colors.purple[300],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            mybutton(1,Colors.red,"S 1"),
            mybutton(2,Colors.cyan,"S 2"),
            mybutton(3,Colors.black,"S 3"),
            mybutton(4,Colors.blue,"S 4"),
            mybutton(5,Colors.green,"S 5"),
            mybutton(6,Colors.purple,"S 6"),
            mybutton(7,Colors.red,"S 7"),
          ],
        ),
      ),
    );
  }

}


