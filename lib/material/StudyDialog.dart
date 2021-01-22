import 'package:flutter/material.dart';

///Flutter中所有对话框演示
class StudyDialogApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dialog组件学习',
      home: SimpleDialogDemo(),
    );
  }
}

///SimpleDialog
class SimpleDialogDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AlertDialog组件'),),
      body: Center(
        child: SimpleDialog(
          title: Text('对话框标题'),
          children: <Widget>[
            SimpleDialogOption(onPressed: (){},child: const Text('第一行信息'),),
            SimpleDialogOption(onPressed: (){},child: const Text('第二行信息'),),
          ],
        ),
      ),
    );
  }

}

///AlertDialog
class AlertDialogDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AlertDialog组件'),),
      body: Center(
        child: AlertDialog(
          title: Text('提示'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('是否要删除？'),
                Text('一旦删除数据不可恢复!')
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(child: Text('确定'),onPressed: (){},),
            FlatButton(child: Text('取消'),onPressed: (){},),
          ],
        ),
      ),
    );
  }
}