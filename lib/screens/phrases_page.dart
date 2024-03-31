import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item.dart';
import 'package:language_learning_app/models/number.dart';
class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<ItemModel> numbers= const[
    ItemModel(sound:'sounds/phrases/are_you_coming.wav' ,
         jpName: 'Kimasu ka', enName: 'are you coming'),
    ItemModel(sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
         jpName: 'Kōdoku suru koto o wasurenaide', enName: 'dont forget to subscribe'),
    ItemModel(
        sound: 'sounds/phrases/how_are_you_feeling.wav',
         jpName: 'Go kibun wa ikagadesu ka.', enName: 'how are you feeling'),
    ItemModel(
        sound: 'sounds/phrases/i_love_anime.wav',
         jpName: 'Watashi wa anime ga daisukidesu', enName: 'i love anime'),

    ItemModel(sound: 'sounds/phrases/i_love_programming.wav',
         jpName: 'Watashi wa puroguramingu ga ', enName: 'i love programming'),

    ItemModel(sound: 'sounds/phrases/programming_is_easy.wav',
         jpName: 'Puroguramingu wa kantandesu', enName: 'programming is easy'),
    ItemModel(
        sound: 'sounds/phrases/what_is_your_name.wav',
         jpName: 'anata no namea wa nandesuka', enName: 'what is your name'),
    ItemModel(sound: 'sounds/phrases/where_are_you_going.wav',
         jpName: 'Doko ni iku no', enName: 'where are you going'),
    ItemModel(
        sound: 'sounds/phrases/yes_im_coming.wav',
         jpName: 'Hai, kimasu', enName: 'yes im coming')

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Phrases'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context , num) {
          return PhrasesItem(
            color: Colors.blue,
              item: numbers[num]);
        }
      ),
    );
  }
}
