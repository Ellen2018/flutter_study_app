
import 'package:flutter/material.dart';

///演示路由的用法
class StudyRouteApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      title: '路由演示',
      routes: {
        '/first':(BuildContext context) =>  FirstPage(),//添加路由
        '/second':(BuildContext context) => SecondPage(),
      },
      initialRoute: '/first',
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('路由演示'),),
      body: Center(child: Text('主页',style: TextStyle(fontSize: 28.0),),),
    );
  }
}

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('这是第一页'),),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.pushNamed(context, '/second');
          },
          child: Text('这是第一页',style: TextStyle(fontSize: 28.0),),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('这是第二页'),),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.pushNamed(context, '/first');
          },
          child: Text('这是第二页',style: TextStyle(fontSize: 28.0),),
        ),
      ),
    );
  }
}