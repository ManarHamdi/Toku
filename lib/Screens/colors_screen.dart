import 'package:flutter/material.dart';
import 'package:toku/Model/color_model.dart';

import '../Components/color_list_item.dart';

class ColorsScreen extends StatelessWidget{
  static String routeName="Colors screen";
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(title: const Text("Colors"),backgroundColor: const Color(0xff543D36)),
        body:       colorListView()
        ,
      );
  }
  Widget colorListView() {
    return
      Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context,index)=>
                    ColorListItem(imagePath: ColorModel.imagePath[index],
                        color: ColorModel.color[index],
                        colorInEnglish: ColorModel.colorInEnglish[index], colorSound: ColorModel.colorSound[index])

            ),
          ),
        ],
      );
  }

}