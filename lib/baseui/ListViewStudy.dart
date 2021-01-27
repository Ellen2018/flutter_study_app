import 'package:flutter/material.dart';

//竖直列表
class StudyListViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String title = 'ListView组件基础用法';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: new Text(title)),
        body: ListView(children: <Widget>[
          ListTile(leading: Icon(Icons.alarm), title: Text('Alarm')),
          ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
          ListTile(leading: Icon(Icons.airplay), title: Text('AirPlay')),
          ListTile(leading: Icon(Icons.airplay), title: Text('AirPlay')),
          ListTile(leading: Icon(Icons.airplay), title: Text('AirPlay')),
          ListTile(leading: Icon(Icons.airplay), title: Text('AirPlay')),
          ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
          ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
          ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
          ListTile(leading: Icon(Icons.alarm), title: Text('Alarm')),
          ListTile(leading: Icon(Icons.alarm), title: Text('Alarm')),
          ListTile(leading: Icon(Icons.alarm), title: Text('Alarm')),
          ListTile(leading: Icon(Icons.alarm), title: Text('Alarm')),
          ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
          ListTile(leading: Icon(Icons.airplay), title: Text('AirPlay')),
          ListTile(leading: Icon(Icons.airplay), title: Text('AirPlay')),
          ListTile(leading: Icon(Icons.airplay), title: Text('AirPlay')),
          ListTile(leading: Icon(Icons.airplay), title: Text('AirPlay')),
          ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
          ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
          ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
          ListTile(leading: Icon(Icons.alarm), title: Text('Alarm')),
          ListTile(leading: Icon(Icons.alarm), title: Text('Alarm')),
          ListTile(leading: Icon(Icons.alarm), title: Text('Alarm')),
        ]),
      ),
    );
  }
}

//横向列表
class StudyListViewApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String title = 'ListView组件基础用法';
    return MaterialApp(
      title: title,
      home: Scaffold(
          appBar: AppBar(title: new Text(title)),
          body: Container(
            child:ListView(
                scrollDirection:Axis.horizontal,
                children: <Widget>[
                  Container(width: 160.0,color: Colors.red),
                  Container(width: 160.0,color: Colors.yellow),
                  Container(width: 160.0,color: Colors.black),
                  Container(width: 160.0,color: Colors.blue),
                  Container(width: 160.0,color: Colors.red),
                  Container(width: 160.0,color: Colors.yellow),
                  Container(width: 160.0,color: Colors.blue),
                  Container(width: 160.0,color: Colors.red),
                ]),)
      ),
    );
  }
}

//长列表
class StudyListViewApp3 extends StatelessWidget {

  final List<String> list = List();

  @override
  Widget build(BuildContext context) {
    for(int i=0;i<100;i++){
      list.add('$i');
    }
    final String title = 'ListView组件基础用法';
    return MaterialApp(
      title: title,
      home: Scaffold(
          appBar: AppBar(title: new Text(title)),
          body: Container(
            child:ListView.builder(
              itemCount: list.length,
              itemBuilder: (context,index){
                return new ListTile(leading: Icon(Icons.phone),title: Text('${list[index]}'));
              },
            ))
      ),
    );
  }
}