import 'package:flutter/material.dart';

class StudyCenterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '布局组件Center组件学习',
      home: CenterDemo(),
    );
  }

}

class CenterDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Center组件学习'),),
      body: Center(
        child: Text('Center组件学习',style: TextStyle(fontSize: 36.0),),
      ),
    );
  }

}