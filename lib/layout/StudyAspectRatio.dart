import 'package:flutter/material.dart';

class StudyAspectRatioApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AspectRatio组件学习',
      home: AspectRatioDemo(),
    );
  }
}

class AspectRatioDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AspectRatio调整宽高比示例'),),
      body: AspectRatio(
        aspectRatio: 1.5,//调整比例位1：1.5
        child: Container(
          color: Colors.green,
        ),
      ),
    );
  }
}