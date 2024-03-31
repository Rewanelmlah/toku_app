import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item.dart';
import 'package:language_learning_app/models/number.dart';
class MembersPage extends StatelessWidget {
  const MembersPage({super.key});
  final List<ItemModel> numbers= const[
    ItemModel(sound:'sounds/family_members/grand father.wav' ,
        image: 'assets/images/family_members/family_grandfather.png', jpName: 'sofu', enName: 'Grand father'),
    ItemModel(sound: 'sounds/family_members/grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png', jpName: 'sobo', enName: 'Grand mother'),
    ItemModel(
        sound: 'sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_father.png', jpName: 'chichi', enName: 'Father'),
    ItemModel(
        sound: 'sounds/family_members/grand mother.wav',
        image: 'assets/images/family_members/family_mother.png', jpName: 'haha', enName: 'Mother'),
    ItemModel(
        sound: 'sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png', jpName: 'musuko', enName: 'Son'),
    ItemModel(sound: 'sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png', jpName: 'musume', enName: 'Daughter'),

    ItemModel(sound: 'sounds/family_members/older bother.wav',
        image: 'assets/images/family_members/family_older_brother.png', jpName: 'ani', enName: 'Older brother'),
    ItemModel(
        sound: 'sounds/family_members/older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png', jpName: 'ane', enName: 'Older sister'),
    ItemModel(sound: 'sounds/family_members/younger brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png', jpName: 'otooto', enName: 'Younger brother'),
    ItemModel(
        sound: 'sounds/family_members/younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png', jpName: 'imooto', enName: 'Younger sister')

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Family Members'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context , num)
        {
          return Item(color: Color(0xff558B37),
              itemModel: numbers[num]);
        },
      ),
    );
  }
}
