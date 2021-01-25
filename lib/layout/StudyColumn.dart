import 'package:flutter/material.dart';

class StudyColumnApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column组件学习',
      home: ColumnDemo(),
    );
  }

}

class ColumnDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text('Row组件学习'),),
       body: Column(
         children: <Widget>[
           Expanded(
             child: Text('文本1',textAlign: TextAlign.center,),
           ),
           Expanded(
             child: Text('文本2',textAlign: TextAlign.center),
           ),
           Expanded(
             child: Text('文本3',textAlign: TextAlign.center),
           ),
         ],
       ),
     );
  }
}