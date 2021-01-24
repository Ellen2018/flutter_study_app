import 'package:flutter/material.dart';

class StudyCardApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '学习Card组件',
      home: CardDemo(),
    );
  }

}

class CardDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var card = SizedBox(
      height: 250.0,
      child:  Card(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('武汉市财神街38号',style: TextStyle(fontWeight: FontWeight.w300),),
              subtitle: Text('武汉金子无限有限公司'),
              leading: Icon(Icons.home,color: Colors.lightBlue,),
            ),
            Divider(),
            ListTile(
              title: Text('武汉市福禄寿街32号',style: TextStyle(fontWeight: FontWeight.w300),),
              subtitle: Text('武汉玉器无限有限公司'),
              leading: Icon(Icons.school,color: Colors.lightBlue,),),
            Divider()
          ],
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(title: Text('Card组件学习'),),
      body: Center(
        child: card,
      ),
    );
  }
}