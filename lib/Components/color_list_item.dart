import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ColorListItem extends StatelessWidget{
  String imagePath ;
  String color ;
  String colorInEnglish;
  String colorSound;
  ColorListItem({required this.imagePath,required this.color ,
    required this.colorInEnglish , required this.colorSound});
  @override
  Widget build(BuildContext context) {
    return Container(height: 100,
      color: const Color(0xfff7e3fa3),
      child: Row(
        children: [
          Container(color: const Color(0xfffff4dc),
              child: Image.asset(imagePath)),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(color,style: const TextStyle(color: Colors.white,fontSize: 20)),
                Text(colorInEnglish,style: const TextStyle(color: Colors.white,fontSize: 20))
              ],
            ),
          ),
          const Spacer(),
          Padding(
              padding: EdgeInsets.only(right: 16.0),
              child:
              IconButton(onPressed: ()  {
                final player = AudioPlayer();
                player.play(AssetSource(colorSound));
              },
                  icon: Icon(Icons.play_arrow,color: Colors.white,size: 28,))
          )
        ],
      ),
    );
  }

}