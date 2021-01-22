
import 'package:flutter/material.dart';

class StudyFlatButtonApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlatButton组件学习',
      home: FlatButtonDemo(),
    );
  }

}

class FlatButtonDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FlatButton组件学习'),),
      body: Center(
        child: FlatButton(
          onPressed: (){},
          child: Text('FlatButton',style: TextStyle(fontSize: 24.0),),
        ),
      ),
    );
  }

}