import 'package:flutter/material.dart';

class StudyDismissibleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dismissible滑动删除',
      home: DismissibleDemo(),
    );
  }
}

class DismissibleDemo extends StatelessWidget {
  List<String> items = List<String>.generate(30, (index) => "列表项 ${index+1}");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible滑动删除'),
      ),
      body: ListView.builder(
          itemCount:items.length ,
          itemBuilder: (context, index) {
            final item = items[index];
            return Dismissible(
              key: Key(item),
              onDismissed: (direction){
                items.removeAt(index);
                Scaffold.of(context).showSnackBar(SnackBar(content: Text('$item 被删除了'),));
              },
              child: ListTile(title: Text('$item'),),
            );
          }
          ),
    );
  }
}
