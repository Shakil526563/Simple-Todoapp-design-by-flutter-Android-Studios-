import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:simpletodoapp/todopageui.dart';

void main(){
  runApp(const Myapp());
}
class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "To Do App",
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Todopage(),
    );
  }

}