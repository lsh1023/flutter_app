import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/FlexLayoutTestRoute.dart';
import 'package:flutter_app/Home.dart';
import 'package:flutter_app/NewRoute.dart';
import 'package:flutter_app/WrapLayoutTestRoute.dart';

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

//    return Scaffold(
//
//      body: Padding(
//        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
//        child: Form(
//          key: _formKey, //设置globalKey，用于后面获取FormState
//          autovalidate: true, //开启自动校验
//          child: Column(
//            children: <Widget>[
//              TextFormField(
//                  autofocus: true,
//                  controller: _unameController,
//                  decoration: InputDecoration(
//                      labelText: "用户名",
//                      hintText: "用户名或邮箱",
//                      icon: Icon(Icons.person)
//                  ),
//                  // 校验用户名
//                  validator: (v) {
//                    return v
//                        .trim()
//                        .length > 0 ? null : "用户名不能为空";
//                  }
//
//              ),
//              TextFormField(
//                  controller: _pwdController,
//                  decoration: InputDecoration(
//                      labelText: "密码",
//                      hintText: "您的登录密码",
//                      icon: Icon(Icons.lock)
//                  ),
//                  obscureText: true,
//                  //校验密码
//                  validator: (v) {
//                    return v
//                        .trim()
//                        .length > 5 ? null : "密码不能少于6位";
//                  }
//              ),
//              // 登录按钮
//              Padding(
//                padding: const EdgeInsets.only(top: 28.0),
//                child: Row(
//                  children: <Widget>[
//                    Expanded(
//                      child: RaisedButton(
//                        padding: EdgeInsets.all(15.0),
//                        child: Text("登录"),
//                        color: Theme
//                            .of(context)
//                            .primaryColor,
//                        textColor: Colors.white,
//                        onPressed: () {
//                          //在这里不能通过此方式获取FormState，context不对
//                          //print(Form.of(context));
//
//                          // 通过_formKey.currentState 获取FormState后，
//                          // 调用validate()方法校验用户名密码是否合法，校验
//                          // 通过后再提交数据。
//                          if ((_formKey.currentState as FormState).validate()) {
//                            //验证通过提交数据
//                          }
//                        },
//                      ),
//                    ),
//                  ],
//                ),
//              )
//            ],
//          ),
//        ),
//      ),
//    );

    return Column(
      children: <Widget>[
        TextField(
          autofocus: true,
          decoration: InputDecoration(
              labelText: "用户名",
              hintText: "用户名或邮箱",
              prefixIcon: Icon(Icons.person)),
          onChanged: (v){
            print("onChange:$v");
          },
        ),

        TextField(
          decoration: InputDecoration(
              labelText: "密码",
              hintText: "您的登录密码",
              prefixIcon: Icon(Icons.lock)),
          obscureText: true,
//          controller: _unameController,
        ),
        RaisedButton(
          child: Text("Login"),
          onPressed: () {
            Navigator.push(context, new MaterialPageRoute(builder: (context) {
//              return new Home();
              return new FlexLayoutTestRoute();

//            return WrapLayoutTestRoute();
            }));
          },
        )
      ],
    );
  }

}


