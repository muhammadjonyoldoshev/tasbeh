import 'package:flutter/material.dart';
import 'package:my_app/pages/detail_page.dart';
import 'package:my_app/pages/home_page.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: const Screen(),
      routes: {
        Screen.id: (context) => Screen(),
        Counter.id: (context) => Counter(),
      },
    );
  }
}


