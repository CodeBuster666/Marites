import 'package:flutter/material.dart';
import 'package:first_project_marites/pages/home.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  //This is the root of Marites.
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Marites',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Home(),
    );
  }
}