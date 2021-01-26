import 'package:flutter/material.dart';

class StudyWrapApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Wrap组件学习',
     home: WrapDemo(),
   );
  }
}

///轻轻松松利用Wrap完成流式布局
class WrapDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wrap组件学习'),),
      body: Wrap(
        spacing: 8.0,///Chip之间的间隔大小
        runSpacing: 4.0,///行之间的间隔大小
        children: <Widget>[
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.lightGreen.shade800,
              child: Text('西门',style: TextStyle(fontSize: 10.0),),
            ),
            label: Text('西门吹雪'),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.lightGreen.shade800,
              child: Text('西门',style: TextStyle(fontSize: 10.0),),
            ),
            label: Text('西门吹雪'),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.lightGreen.shade800,
              child: Text('西门',style: TextStyle(fontSize: 10.0),),
            ),
            label: Text('西门吹雪'),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.lightGreen.shade800,
              child: Text('西门',style: TextStyle(fontSize: 10.0),),
            ),
            label: Text('西门吹雪'),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.lightGreen.shade800,
              child: Text('西门',style: TextStyle(fontSize: 10.0),),
            ),
            label: Text('西门吹雪'),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.lightGreen.shade800,
              child: Text('西门',style: TextStyle(fontSize: 10.0),),
            ),
            label: Text('西门吹雪'),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.lightGreen.shade800,
              child: Text('西门',style: TextStyle(fontSize: 10.0),),
            ),
            label: Text('西门吹雪'),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.lightGreen.shade800,
              child: Text('西门',style: TextStyle(fontSize: 10.0),),
            ),
            label: Text('西门吹雪'),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.lightGreen.shade800,
              child: Text('西门',style: TextStyle(fontSize: 10.0),),
            ),
            label: Text('西门吹雪'),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.lightGreen.shade800,
              child: Text('西门',style: TextStyle(fontSize: 10.0),),
            ),
            label: Text('西门吹雪'),
          ),
        ],
      ),
    );
  }

}