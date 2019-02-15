import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/CounterWidget.dart';
import 'package:flutter_app/Echo.dart';
import 'package:flutter_app/TapboxA.dart';

class NewRoute extends StatelessWidget {
//  路由传值
  NewRoute(this.tip);

  final String tip;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(
//        child: Text("This is new route"),
//      child: Text(tip),
//        child: Echo(text:"hello Flutter"),
//        child: CounterWidget(),
//      child: TapboxA(),

//      child: Text("Hello world",
//        style: TextStyle(
//            color: Colors.blue,
//            fontSize: 36.0,
//            height: 1.2,
//            fontFamily: "Courier",
//            background: new Paint()..color=Colors.yellow,
//            decoration:TextDecoration.underline,
//            decorationStyle: TextDecorationStyle.dashed
//        ),
//      ),

      //RaisedButton 即"漂浮"按钮，它默认带有阴影和灰色背景。按下后，阴影会变大
//      child: RaisedButton(
//        child: Text("normal"),
//        onPressed: () => {},
//      ),

          //FlatButton即扁平按钮，默认背景透明并不带阴影。按下后，会有背景色：
//        child: FlatButton(
//          child: Text("normal"),
//          onPressed: () => {},
//        ),
//OutlineButton默认有一个边框，不带阴影且背景透明。按下后，边框颜色会变亮、同时出现背景和阴影(较弱)
//      child: OutlineButton(
//        child: Text("normal"),
//        onPressed: () => {},
//      ),

//          IconButton是一个可点击的Icon，不包括文字，默认没有背景，点击后会出现背景：
      child: IconButton(icon: Icon(Icons.thumb_up),  onPressed: () => {},),


//      child: Text.rich(TextSpan(
//          children: [
//            TextSpan(
//                text: "Home: "
//            ),
//            TextSpan(
//                text: "https://flutterchina.club",
//                style: TextStyle(
//                    color: Colors.blue
//                ),
//
//            ),
//          ]
//      )),
      ),
    );
  }
}
