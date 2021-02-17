import 'package:flutter/material.dart';
import 'package:study2_app/screens/home_screen.dart';
import 'package:study2_app/screens/second_screen.dart';
import '../screens/first_screen.dart';
class MyMenuItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [

        Card(
          elevation: 5 ,
          child: ListTile(
            title: Text("Home Screen"),
            onTap:() {

              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context)
                  {
                    return HomScreen();
                  }


              ),


              );

            },
          ),
        ),
        Card(
          elevation: 5 ,
          child: ListTile(
            title: Text("First Screen"),
            onTap:() {
              Navigator.of(context).pushNamed('/first');
             
            },
          ),
        ),
        Card(
          elevation: 5 ,
          child: ListTile(
            title: Text("Second Screen"),
            onTap:() {

              Navigator.of(context).pushNamed('/second');
            },
          ),
        ),

      ],


    );
  }
}
