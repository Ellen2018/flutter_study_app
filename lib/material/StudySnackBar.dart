import 'package:flutter/material.dart';

class StudySnackBarApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       title: 'SnackBar组件学习',
       home: SnackBarDemo(),
     );
  }
}

class SnackBarDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text('SnackBar组件学习'),),
       body: Center(
         child: Text('SnackBar组件学习',style: TextStyle(fontSize: 28.0),),
       ),
       floatingActionButton: Builder(builder: (BuildContext context){
         return FloatingActionButton(
           child: Icon(Icons.add),
           onPressed: (){
             Scaffold.of(context).showSnackBar(SnackBar(content: Text('显示SnackBar'),));
           },
           shape: CircleBorder(),
         );
       },),
       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
     );
  }
}