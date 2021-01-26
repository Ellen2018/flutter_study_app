import 'package:flutter/material.dart';

class StudyTransformApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transform属性学习',
      home: TransformDemo(),
    );
  }
}

class TransformDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Transform属性学习')),
      body: Center(
        child: Container(
          color: Colors.grey,
          alignment: Alignment.topRight,
          transform: Matrix4.rotationZ(0.3),
          child: Container(
            padding: EdgeInsets.all(8.0),
            color: Color(0xFFE8581C),
            child: Text('Transform矩阵转换'),
          ),
        ),
      ),
    );
  }

}