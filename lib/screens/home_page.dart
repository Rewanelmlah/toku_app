import 'package:flutter/material.dart';
import 'package:language_learning_app/components/category_item.dart';
import 'package:language_learning_app/screens/colors_bage.dart';
import 'package:language_learning_app/screens/members_page.dart';
import 'package:language_learning_app/screens/numbers_page.dart';
import 'package:language_learning_app/screens/phrases_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6D8),
      //apppar
      appBar: AppBar(
        backgroundColor: Color(0xff46322b),
        title: Text('Toku'),),
      //container
      body: Column(
        children: [
          Category(
            OnTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
               return NumbersPage();
             }));
            },
            text: "Numbers",
            color: Color(0xffEF9235),
          ),
          Category(
            OnTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
                return MembersPage();

              }));
            },
            text: "Family Members",
            color: Color(0xff458B00),
          ),
          Category(
            OnTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
                return ColorsPage();

              }));
            },
            text: 'Colors',
            color: Colors.purple,
          ),
          Category(
            OnTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
                return PhrasesPage();

              }));
            },
            text: 'phrases',
            color: Colors.blue,
          ),
        ],
      ),
    ) ;
  }
}

