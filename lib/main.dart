import 'package:flutter/material.dart';
import 'screens/first_screen.dart';
import 'screens/second_screen.dart';
import 'utils/theme.dart';

import 'screens/home_screen.dart';


  void main (){

    runApp(MyApp());

  }

class MyApp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: true ? '/' : 'second',

    routes: {
        '/':(context)=> HomScreen(),
      '/second':(context)=> SecondScreen(),
      '/first':(context)=> FirstScreen(),

            },


    theme: myThemeData,
    );
  }
}
