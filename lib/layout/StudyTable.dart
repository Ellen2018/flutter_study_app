import 'package:flutter/material.dart';

class StudyTableApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Table表格示例',
      home: TableDemo(),
    );
  }

}

class TableDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Table组件示例'),),
      body: Center(
        child: Table(
          columnWidths: <int,TableColumnWidth>{
            0:FixedColumnWidth(100),
            1:FixedColumnWidth(40),
            2:FixedColumnWidth(80),
            3:FixedColumnWidth(80),
          },
          border: TableBorder.all(color: Colors.black38,width: 2,style: BorderStyle.solid),
          children: <TableRow>[
            TableRow(
              children: <Widget>[
                Text('姓名'),
                Text('性别'),
                Text('年龄'),
                Text('身高'),
              ]
            ),
            TableRow(
                children: <Widget>[
                  Text('张三'),
                  Text('男'),
                  Text('26'),
                  Text('172'),
                ]
            ),
            TableRow(
                children: <Widget>[
                  Text('李四'),
                  Text('男'),
                  Text('28'),
                  Text('178'),
                ]
            ),
          ],
        ),
      ),
    );
  }

}