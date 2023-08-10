import 'package:flutter/material.dart';
import 'package:toku/Screens/colors_screen.dart';
import 'package:toku/Screens/family_members_screen.dart';
import 'package:toku/Screens/home_page.dart';
import 'package:toku/Screens/numbers_page.dart';
import 'package:toku/Screens/phrases_screen.dart';

void main() {
  runApp(Toku());
}
class Toku extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        NumbersScreen.routeName: (_) => NumbersScreen(),
        FamilyScreen.routeName:(_)=>FamilyScreen(),
        ColorsScreen.routeName:(_)=>ColorsScreen(),
        PhrasesScreen.routeName:(_)=>PhrasesScreen()
      },

    );

  }
}