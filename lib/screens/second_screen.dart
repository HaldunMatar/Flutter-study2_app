import 'package:flutter/material.dart';
import '../widgets/menu.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text( "Second screen Title"),),
      drawer: MyDrawer(),
      body: Center(child: Text(' Second Screen'),),);
  }
}