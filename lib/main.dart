import 'package:flutter/material.dart';

import './text.dart';
import './text_control.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Just Text", textDirection: TextDirection.ltr,),
        ),
        body: StateTextControl("Butterflies are great!"),
      ),
    );
  }
}