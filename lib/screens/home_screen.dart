import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:study2_app/models/Photo.dart';
import '../widgets/menu.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';

class HomScreen extends StatefulWidget {
  @override
  _HomScreenState createState() => _HomScreenState();
}

class _HomScreenState extends State<HomScreen> {
  final List<String> myList = [];
  /* = [
    'https://i.picsum.photos/id/20/800/800.jpg?hmac=sH0rrI15LYL1gL5Kk-CtGwe5SrAPimAS-ZQyFajNzVk',
    'https://i.picsum.photos/id/20/800/800.jpg?hmac=sH0rrI15LYL1gL5Kk-CtGwe5SrAPimAS-ZQyFajNzVk',
  ];*/
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Home screen Title"),
        ),
        drawer: MyDrawer(),
        body: Center(
          child: myList.length > 0
              ? Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ListView.builder(
                    itemCount: myList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildMyList(myList[index]);
                    },
                  ),
                )
              : CircularProgressIndicator(),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => _addPhoto(),
        ));
  }

  Widget _buildMyList(String img) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      width: 200,
      child: Card(
        elevation: 5,
        child: Image.network(img),
      ),
    );
  }

  _addPhoto()  async{
    final num = Random().nextInt(1000) ;
    final response=
        await http.get('http://jsonplaceholder.typicode.com/photos/2');
    final parsedResponse=jsonDecode(response.body);
   final  photo= Photo(
      id :parsedResponse['id'],
     albumId :parsedResponse['albumId'],
     title :parsedResponse['title'],
     url :parsedResponse['url'],
     thumbnailUrl :parsedResponse['thumbnailUrl'],

    );
    setState(() {

      //myList.add(photo.url);
     myList.add('https://i.picsum.photos/id/20/800/800.jpg?hmac=sH0rrI15LYL1gL5Kk-CtGwe5SrAPimAS-ZQyFajNzVk');


    });
/*  Future.delayed(


Duration(seconds: 4),()
    {
      final response = http.get('fff').then((value) => print(value.body));
    }
    ,
);*/
  }
}
