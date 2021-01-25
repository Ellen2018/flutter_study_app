import 'package:flutter/material.dart';

///突破父控件的约束，就要使用OverflowBox组件
class StudyOverflowBoxApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OverflowBox组件学习',
      home: OverflowBoxDemo(),
    );
  }
}

class OverflowBoxDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('OverflowBox学习'),),
      body: Container(
        color: Colors.green,
        width: 200,
        height: 200,
        padding: EdgeInsets.all(50),
        child: OverflowBox(
          alignment: Alignment.topLeft,
          maxHeight: 400,
          maxWidth: 400,
          child: Container(
            color: Colors.blue,
            width: 300,
            height: 300,
          ),
        ),
      ),
    );
  }

}