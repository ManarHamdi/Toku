import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class NumberListItem extends StatelessWidget{
  String imagePath ;
  String number ;
  String numberInEnglish;
  String numberSound;
  NumberListItem({required this.imagePath, required this.number, required this.numberInEnglish, required this.numberSound});
  @override
  Widget build(BuildContext context) {
    return Container(height: 100,
      color: const Color(0xfffa9532),
      child: Row(
        children: [
          Container(color: const Color(0xfffff4dc),
              child: Image.asset(imagePath)),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(number,style: const TextStyle(color: Colors.white,fontSize: 20)),
                Text(numberInEnglish,style: const TextStyle(color: Colors.white,fontSize: 20))
              ],
            ),
          ),
          const Spacer(),
           Padding(
            padding: EdgeInsets.only(right: 16.0),
            child:
            IconButton(onPressed: ()  {
              final player = AudioPlayer();
               player.play(AssetSource(numberSound));
            },
                icon: Icon(Icons.play_arrow,color: Colors.white,size: 28,))
          )
        ],
      ),
    );
  }

}