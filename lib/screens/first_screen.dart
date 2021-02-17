import 'package:flutter/material.dart';
import '../widgets/menu.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text( "First screen Title"),),
      drawer: MyDrawer(),
      body: Center(child: Text(' First SCREEN'),),);
  }
}