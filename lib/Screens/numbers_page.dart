import 'package:flutter/material.dart';
import 'package:toku/Model/number_Model.dart';
import '../Components/number_list_item.dart';
class NumbersScreen extends StatelessWidget{
  static String routeName="Numbers screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffef6db),
      appBar: AppBar(title: const Text("Numbers"),backgroundColor: const Color(0xff543D36)),
      body:
      NumbersListView()
    );
  }
  Widget NumbersListView (){
    return Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context,index)=>NumberListItem(imagePath: NumberModel.imagePath[index],number: NumberModel.numberInLanguage[index],numberInEnglish: NumberModel.numbersInEnglish[index],numberSound: NumberModel.numberSounds[index],)),
          ),
        ],
      );
  }
}

