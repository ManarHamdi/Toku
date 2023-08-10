import 'package:flutter/material.dart';
import 'package:toku/Components/family_list_item.dart';
import 'package:toku/Model/family_model.dart';

import '../Model/color_model.dart';

class FamilyScreen extends StatelessWidget{
  static String routeName="Family screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: const Text("Numbers"),backgroundColor: const Color(0xff543D36)) ,
      body: familyListView(),
    );
  }

  Widget familyListView() {
    return
      Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context,index)=>
                FamilyListItem(imagePath: ColorModel.imagePath[index], member: ColorModel.color[index],
                    memberInEnglish: ColorModel.colorInEnglish[index], mumberSound: ColorModel.colorSound[index])

              ),
          ),
        ],
      );
  }

}