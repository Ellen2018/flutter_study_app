import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  _navigateHandler(BuildContext context) async {
    final result = await Navigator.push(context,
        MaterialPageRoute(builder: (context) => Page2(strMessage: '发送的数据')));

    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('$result'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('页面1'),
        ),
        body: Builder(
          builder: (BuildContext context) {
            return Center(
              child: RaisedButton(
                child: Text('跳转到页面2'),
                onPressed: () {
                  //处理路由 & 发送数据 & 接收数据
                  _navigateHandler(context);
                },
              ),
            );
          },
        ));
  }
}

class Page2 extends StatelessWidget {
  ///接收来自页面1的数据
  final String strMessage;

  Page2({Key key, this.strMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('页面2'),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.pop(context, '返回的数据');
            },
            child: Text('返回页面1,接收的数据:$strMessage'),
          ),
        ));
  }
}
