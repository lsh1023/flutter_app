import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_app/NewRoute.dart';
import 'package:flutter_app/RandomWords.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

//    return new MaterialApp(
//      title: 'Welcome to Flutter',
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text('Welcome to Flutter'),
//        ),
//        body: new Center(
////          child: new Text('Hello World'),
////          child: new Text(wordPair.asPascalCase),
//        child: new RandomWords(),
//        ),
//      ),
//    );

    return new MaterialApp(
      title: 'Startup Name Generator',
      theme: new ThemeData(
//        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
      ),

//      注册路由
//      routes: {
//        "new_page":(context)=>NewRoute(),
//      },

      home: new RandomWords(),
//      home: new AppHome(),
    );
  }


}


class AppHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Center(
        child: new FlatButton(
          onPressed: () {
            debugDumpApp();
          },
          child: new Text('Dump App'),
        ),
      ),
    );
  }

}



