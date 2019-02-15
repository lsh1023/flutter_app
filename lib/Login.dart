import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/Home.dart';
import 'package:flutter_app/NewRoute.dart';

//添加登录输入框
class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _Login();
  }
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        TextField(
          autofocus: true,
          decoration: InputDecoration(
              labelText: "用户名",
              hintText: "用户名或邮箱",
              prefixIcon: Icon(Icons.person)),
        ),
        TextField(
          decoration: InputDecoration(
              labelText: "密码",
              hintText: "您的登录密码",
              prefixIcon: Icon(Icons.lock)),
          obscureText: true,
        ),
        RaisedButton(
          child: Text("Login"),
          onPressed: () {
            Navigator.push(context, new MaterialPageRoute(builder: (context) {
              return new Home();
            }));
          },
        )
      ],
    );
  }
}
