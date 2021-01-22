
import 'package:flutter/material.dart';

class StudyFloatingActionButtonApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FloatingActionButton组件学习',
      home: FloatingActionButtonDemo(),
    );
  }

}

class FloatingActionButtonDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FloatingActionButton组件学习'),),
      body: Center(
        child: Text('FloatingActionButton示例',style: TextStyle(fontSize: 28.0),),
      ),
      floatingActionButton: Builder(builder: (BuildContext context){
        return FloatingActionButton(
          child: const Icon(Icons.add),
          tooltip: "请点击FloatingActionButton",
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          elevation: 7.0,//阴影效果
          highlightElevation: 14.0,//点击后高亮阴影效果
          onPressed: (){
            Scaffold.of(context).showSnackBar(SnackBar(content: Text("你点击了FloatingActionButton"),));
          },
          mini: false,
          shape: CircleBorder(),
          isExtended: false,
        );
      },),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,//居中摆放
    );
  }
}