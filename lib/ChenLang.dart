
import 'package:flutter/material.dart';

class ChenLangApp extends StatelessWidget{

  final String title = '陈浪的Flutter总结';
  List<String> studyTitle = List();

  void initData(){
    studyTitle.add('Container组件');
    studyTitle.add('Image组件');
    studyTitle.add('Text组件');
    studyTitle.add('Icon组件');
    studyTitle.add('IconButton组件');
    studyTitle.add('RaisedButton组件');
    studyTitle.add('ListView组件(垂直方向，数据固定)');
    studyTitle.add('ListView组件(水平方向，数据固定)');
    studyTitle.add('ListView组件(垂直方向，数据不固定)');
    studyTitle.add('GridView组件');
    studyTitle.add('TextFromField组件');
  }

  @override
  Widget build(BuildContext context) {
    initData();
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: Text(title),),
        body: ListView.builder(
          itemCount: studyTitle.length,
          itemBuilder: (context,index){
            return Text('${studyTitle[index]}');
          },
        ),
      ),
    );
  }
}