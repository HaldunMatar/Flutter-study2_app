

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_menu_items.dart';

class  MyDrawer   extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
         color: Theme.of(context).accentColor,
       child: ListView(
         children:<Widget>[UserAccountsDrawerHeader(
             accountName: Text('HALDUN MATAR'),
             accountEmail: Text('kh82matar@gmail.com') ,

           currentAccountPicture: Image.asset("assets/images/logo.png"),
         )
      ,SizedBox(height: 10,) ,
      Divider(color: Colors.white,) ,

      MyMenuItems(),

    ],),),) ;
  }
}


