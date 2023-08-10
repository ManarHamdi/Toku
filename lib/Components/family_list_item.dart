import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class FamilyListItem extends StatelessWidget{
  String imagePath ;
  String member ;
  String memberInEnglish;
  String mumberSound;
  FamilyListItem({
    required this.imagePath,
    required this.member ,
    required this.memberInEnglish,
    required this.mumberSound});
  @override
  Widget build(BuildContext context) {
    return Container(height: 100,
      color: const Color(0xfff589138),
      child: Row(
        children: [
          Container(color: const Color(0xfffff4dc),
              child: Image.asset(imagePath)),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(member,style: const TextStyle(color: Colors.white,fontSize: 20)),
                Text(memberInEnglish,style: const TextStyle(color: Colors.white,fontSize: 20))
              ],
            ),
          ),
          const Spacer(),
          Padding(
              padding: EdgeInsets.only(right: 16.0),
              child:
              IconButton(onPressed: ()  {
                final player = AudioPlayer();
                player.play(AssetSource(mumberSound));
              },
                  icon: Icon(Icons.play_arrow,color: Colors.white,size: 28,))
          )
        ],
      ),
    );
  }

}