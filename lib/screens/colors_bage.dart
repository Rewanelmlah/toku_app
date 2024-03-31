import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item.dart';
import 'package:language_learning_app/models/number.dart';
class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<ItemModel> numbers= const[
    ItemModel(sound:'sounds/colors/red.wav' ,
        image: 'assets/images/colors/color_red.png', jpName: 'aka', enName: 'Red'),
    ItemModel(sound: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png', jpName: 'kuro', enName: 'Black'),
    ItemModel(
        sound: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png', jpName: 'chairo', enName: 'Brown'),
    ItemModel(
        sound: 'sounds/colors/dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png', jpName: 'kiniro', enName: 'Dusty_yellow'),
    ItemModel(
        sound: 'sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png', jpName: 'gure', enName: 'Gray'),
    ItemModel(sound: 'sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png', jpName: 'midori', enName: 'Green'),

    ItemModel(sound: 'sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png', jpName: 'shiro', enName: 'White'),
    ItemModel(
        sound: 'sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png', jpName: 'ki iro', enName: 'Yellow'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context , num)
        {
          return Item(color: Colors.purple,
              itemModel: numbers[num]);
        },
      ),
    );
  }
}
