import 'package:flutter/material.dart';

class StudyContainerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container布局组件学习',
      home: ContainerDemo(),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget container = Container(
      decoration: BoxDecoration(color: Colors.grey),
      child: Column(
        children: <Widget>[
          Row(children: <Widget>[
            Expanded(
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    border: Border.all(width: 10.0, color: Colors.blueGrey),
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                margin: EdgeInsets.all(4.0),
                child: Image.asset('images/img1.jpg'),
              ),
            ),
            Expanded(
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    border: Border.all(width: 10.0, color: Colors.blueGrey),
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                margin: EdgeInsets.all(4.0),
                child: Image.asset('images/img2.jpg'),
              ),
            ),
          ]),
          Row(
            children: <Widget>[
              Expanded(
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    border: Border.all(width: 10.0, color: Colors.blueGrey),
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                margin: EdgeInsets.all(4.0),
                child: Image.asset('images/img3.jpg'),
              ),
            ),
              Expanded(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      border: Border.all(width: 10.0, color: Colors.blueGrey),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  margin: EdgeInsets.all(4.0),
                  child: Image.asset('images/img4.jpg'),
                ),
              ),
            ],
          )
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('布局组件'),
      ),
      body: container,
    );
  }
}
