import 'package:flutter/material.dart';
import 'package:toku/Components/phrases_list_item.dart';
import 'package:toku/Model/phrase_model.dart';

class PhrasesScreen extends StatelessWidget{
  static String routeName="Phrases screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Phrases"),backgroundColor: const Color(0xff543D36)),
    body: NumbersListView(),
    );
  }

  Widget NumbersListView() {
    return

      Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 9,
              itemBuilder: (context,index)=>
                  PhrasesListItem(phrase: PhraseModel.phrase[index],
                      phraseInEnglish: PhraseModel.phraseInEnglish[index], phraseSound: PhraseModel.phraseSound[index])
    ),
          ),
        ],
      );
  }

}