import 'package:flutter/material.dart';
import 'package:toku/Screens/colors_screen.dart';
import 'package:toku/Screens/family_members_screen.dart';
import 'package:toku/Screens/numbers_page.dart';
import 'package:toku/Screens/phrases_screen.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffef6db),
      appBar: AppBar(title: Text("Tuko"),backgroundColor: Color(0xff543D36)),
      body: Column(
        children: [
          Category("Numbers", Color(0xfffa9532),(){Navigator.pushNamed(context, NumbersScreen.routeName);}),
          Category("Family Members", Color(0xfff538033),(){Navigator.pushNamed(context, FamilyScreen.routeName);}),
          Category("Colors", Color(0xfff7e3fa3),(){Navigator.pushNamed(context, ColorsScreen.routeName);}),
          Category("Phrases", Color(0xfff48a5cc),(){Navigator.pushNamed(context, PhrasesScreen.routeName);})
        ],
      ),
    );
  }
  Widget Category (String text,Color color, Function() onTap){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: color,
        child: Text(text,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
        width: double.infinity,
        height: 70,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 12),
      ),
    );
  }
}