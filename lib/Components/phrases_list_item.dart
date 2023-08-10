import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PhrasesListItem extends StatelessWidget{
  String phrase;
  String phraseInEnglish;
  String phraseSound;
  PhrasesListItem({required this.phrase , required this.phraseInEnglish , required this.phraseSound});
  @override
  Widget build(BuildContext context) {
    return
      Container(height: 100,
        color: const Color(0xfff56b4c5),
        child: Row(
          children: [

            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(phrase,style: const TextStyle(color: Colors.white,fontSize: 14)),
                  SizedBox(height: 12,),
                  Text(phraseInEnglish,style: const TextStyle(color: Colors.white,fontSize: 14))
                ],
              ),
            ),
            const Spacer(),
            Padding(
                padding: EdgeInsets.only(right: 16.0),
                child:
                IconButton(onPressed: ()  {
                  final player = AudioPlayer();
                  player.play(AssetSource(phraseSound));
                },
                    icon: Icon(Icons.play_arrow,color: Colors.white,size: 28,))
            )
          ],
        ),
      );
  }

}