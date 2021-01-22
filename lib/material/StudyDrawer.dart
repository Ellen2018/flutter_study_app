import 'package:flutter/material.dart';

class StudyDrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer组件学习',
      home: DrawerDemo(),
    );
  }
}

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('Drawer组件学习'),
        ),
        drawer: Drawer(
            child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Drawer'),
              accountEmail: Text('1961075191@qq.com'),
              currentAccountPicture: CircleAvatar(backgroundColor: Colors.red,),
              onDetailsPressed: (){},
              otherAccountsPictures: <Widget>[
                Container(child: Text('其他文本设置'),)
              ],
            ),
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
          ],
        )));
  }
}
