import 'package:flutter/material.dart';

InputDecoration inputstyle(label){
  return InputDecoration(
    contentPadding: EdgeInsets.all(20),
    filled: true,
    border: OutlineInputBorder(),
    labelText: label,

  );
}
ButtonStyle btnstyle(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(20),
    backgroundColor:Colors.indigo,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    )

  );
}
SizedBox sizedBox(child){
  return SizedBox(
    height: 30,
    width: double.infinity,
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      child: child,
    ),
  );
}