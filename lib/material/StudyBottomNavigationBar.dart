import 'package:flutter/material.dart';

class StudyBottomNavigationBarApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'BottomNavigationBar组件学习',home:BottomNavigationBarPage());
  }
}

class BottomNavigationBarPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => BottomNavigationBarState();

}

class BottomNavigationBarState extends State<BottomNavigationBarPage>{

  int _selectedIndex = 1;
  final _indexMessage = [
    Text('Index 0:信息'),
    Text('Index 1:通讯录'),
    Text('Index 2:发现'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar'),
      ),
      body: Center(child: _indexMessage[_selectedIndex],),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.chat),title: Text('信息')),
          BottomNavigationBarItem(icon: Icon(Icons.contacts),title: Text('通讯录')),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),title: Text('发现')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.deepPurple,
        onTap: (index){
          //选中之后执行setState改变状态
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}