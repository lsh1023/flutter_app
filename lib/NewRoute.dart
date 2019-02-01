

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class NewRoute extends StatelessWidget{

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
      child: Text(tip),
      ),
    );
  }



 }