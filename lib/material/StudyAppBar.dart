
import 'package:flutter/material.dart';

class StudyAppBarApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       title: 'AppBar学习',
       home: AppBarDemo(),
     );
  }
}

class AppBarDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar组件学习'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),tooltip: '搜索',onPressed: (){},),
          IconButton(icon: Icon(Icons.add),tooltip: '添加',onPressed: (){},),
        ],
      ),
    );
  }

}