import 'package:flutter/material.dart';

class StudyOffstageApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Offstage组件学习',
      home: OffstageDemo(),
    );
  }

}

class OffstageDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => OffstageState();
}

class OffstageState extends State<OffstageDemo>{

  ///是否显示组件
  bool offstage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Offstage组件学习'),),
      body: Center(
        child: Offstage(
          offstage: offstage,
          child: Text('我出来啦！',style: TextStyle(fontSize: 36.0),),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            offstage = !offstage;
          });
        },
        tooltip: '显示隐藏',
        child: Icon(Icons.flip),
      ),
    );
  }
}