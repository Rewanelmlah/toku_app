import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_learning_app/models/number.dart';
class Item extends StatelessWidget {
  const Item({Key? key,
    required this.itemModel,
required this.color,
  }):super(key: key);
final ItemModel itemModel;
final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: Color(0xffFFF6DC),
            child: Image.asset(itemModel.image!),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(itemModel.jpName,style: TextStyle(color: Colors.white,fontSize: 18,),),
                Text(itemModel.enName,style: TextStyle(color: Colors.white,fontSize: 18,),),
              ],),
          ),

          Spacer(flex: 1,),
          Padding(
            padding: const EdgeInsets.only(right: 16),

            child: IconButton(

                onPressed: (){
                  itemModel.playSound();

                },
                icon:const Icon(Icons.play_arrow,color: Colors.white,size: 30,
            )) ,
          ),
        ],
      ),
    );
  }
}
class PhrasesItem extends StatelessWidget {
  const PhrasesItem({Key? key,
    required this.item,
    required this.color,
  }):super(key: key);
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color:color ,
      child: Row(
        children: [
      Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text(item.jpName,style: TextStyle(color: Colors.white,fontSize: 18,),),
      Text(item.enName,style: TextStyle(color: Colors.white,fontSize: 18,),),
      ],),
      ),

      Spacer(flex: 1,),
      Padding(
      padding: const EdgeInsets.only(right: 16),

      child: IconButton(

      onPressed: (){
      //play sound
      item.playSound();
      },
      icon:const Icon(Icons.play_arrow,color: Colors.white,size: 30,
      )) ,
      )
      ],
      ),
    );
  }
}

