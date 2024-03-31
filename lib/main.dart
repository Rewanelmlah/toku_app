import 'package:flutter/material.dart';
import 'package:language_learning_app/screens/home_page.dart';

void main() {
  runApp(TokuAPP());
}

class TokuAPP  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home:HomePage() ,
    );

  }
}

