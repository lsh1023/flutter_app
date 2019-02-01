import 'package:flutter_app/Person.dart';

main() {
  // numbers
  var a = 0;
  int b = 1;
  double c = 0.1;

  // strings
  var s1 = 'hello';
  String s2 = "world";

  // booleans
  var real = true;
  bool isReal = false;

  // lists
  var arr = [1, 2, 3, 4, 5];
  List<String> arr2 = ['hello', 'world', "123", "456"];
  List<dynamic> arr3 = [1, true, 'haha', 1.0];

  print(arr);
  print(arr2);
  print(arr3);

  // maps
  var map = new Map();
  map['name'] = 'zhangsan';
  map['age'] = 10;
  Map m = new Map();
  m['a'] = 'a';

  print(map);
  print(m);

  //runes，Dart 中 使用runes 来获取UTF-32字符集的字符。String的 codeUnitAt and codeUnit属性可以获取UTF-16字符集的字符
  var clapping = '\u{1f44f}';
  print(clapping); // 打印的是拍手emoji的表情

  // symbols
  print(#s == new Symbol("s")); // true

  var ss = 'Single double ';
  print(ss);

  say("bob", "hwdy");

  var tt;
  tt = "hello world";
  tt = 1000;
  print(tt);

  print(say("bob", "hwdy"));

  print(say('Bob', 'Howdy', 'smoke signal'));

//  Future.delayed(new Duration(seconds: 2),(){
//    return "hi world!";
//  }).then((data){
//    print(data);
//  });

  Future.delayed(new Duration(seconds: 2), () {
    //return "hi world!";
    throw AssertionError("Error");
  }).then((data) {
    print("success");
  }, onError: (e) {
    print(e);
  });

  Future.delayed(new Duration(seconds: 2), () {
    //return "hi world!";
    throw AssertionError("Error");
  }).then((data) {
    //执行成功会走到这里
    print(data);
  }).catchError((e) {
    //执行失败会走到这里
    print(e);
  }).whenComplete(() {
    //无论成功或失败都会走到这里
    print("ok");
  });

  Stream.fromFutures([
    // 1秒后返回结果
    Future.delayed(new Duration(seconds: 1), () {
      return "hello 1";
    }),
    // 抛出一个异常
    Future.delayed(new Duration(seconds: 2), () {
      throw AssertionError("Error");
    }),
    // 3秒后返回结果
    Future.delayed(new Duration(seconds: 3), () {
      return "hello 3";
    })
  ]).listen((data) {
    print(data);
  }, onError: (e) {
    print(e.message);
  }, onDone: () {});

  print(add(3, 4));

  var arrs = [2, 3, 5, 4];
  arrs.forEach(printNum);

  print(ss is String);

  int score = 80;
  if (score < 60) {
    print("So bad");
  } else if (score >= 60 && score < 80) {
    print("just so so");
  } else if(score>=80){
    print("So good");
  }





  var person=new Person("LSH",20,"male");
  print(person.toString());

}

printNum(int a) {
  print("$a");
}

//可选的位置参数
String say(String from, String msg, [String device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

//typedef bool CALLBACK();
//
//
//bool isNoble(int atomicNumber)
//{
//  return _nobleGases[atomicNumber]!=null;
//}

/**
 * 可选的命名参数
 *  定义函数时，使用{param1,param2,...} 用于指定命名参数
 */
void enableFlags({bool bold, bool hidden}) {}

int add(int a, int b) {
  return a + b;
}
