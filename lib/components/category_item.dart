import 'package:flutter/material.dart';
class Category extends StatelessWidget {
  Category({this.text,this.color,this.OnTap});
  String? text;
  Color? color;
  Function()? OnTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Container(
        padding: EdgeInsets.only(left: 24,),
        alignment: Alignment.centerLeft,
        height: 56,
        width: double.infinity,
        color: color,
        child: Text(text!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}