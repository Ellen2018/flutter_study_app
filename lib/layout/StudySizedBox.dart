import 'package:flutter/material.dart';

class StudySizedBoxApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SizedBox组件学习',
      home: SizedBoxDemo(),
    );
  }

}

class SizedBoxDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SizedBox组件学习'),),
      body: SizedBox(
        width: 200,
        height: 300,
        child: Card(
          child: Text('SizedBox',style: TextStyle(fontSize: 36.0),),
        ),
      ),
    );
  }
}