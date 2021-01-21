
import 'package:flutter/material.dart';

class StudyScaffoldApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scaffold组件演示',
      home: ScaffoldDemo(),
    );
  }
}

class ScaffoldDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //头部
      appBar: AppBar(title: Text('Scaffold组件演示'),),
      //中间内容
      body: Center(child: Text('Scaffold'),),
      //底部导航栏
      bottomNavigationBar: BottomAppBar(child: Container(height: 50.0,),),
      //添加FAB按钮
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: '增加',
        child: Icon(Icons.add),
      ),
      //FAB按钮居中显示
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}