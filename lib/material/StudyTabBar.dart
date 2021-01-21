import 'package:flutter/material.dart';

class StudyTabBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '学习TabBar组件',
      home: AppBarDemo2(),
    );
  }
}

class AppBarDemo1 extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[Tab(text: '选项卡一'), Tab(text: '选项卡二')];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: myTabs,
          ),
        ),
        body: TabBarView(
          children: myTabs.map((Tab tab) {
            return Center(child: Text(tab.text));
          }).toList(),
        ),
      ),
    );
  }
}

class ItemView {
  ItemView({this.title, this.icon});

  String title; //标题
  IconData icon;
}

class AppBarDemo2 extends StatelessWidget {
  List<ItemView> myTabs = <ItemView>[
    ItemView(title: '自驾', icon: Icons.directions_car),
    ItemView(title: '自行车', icon: Icons.directions_bike),
    ItemView(title: '轮船', icon: Icons.directions_boat),
    ItemView(title: '公交车', icon: Icons.directions_bus),
    ItemView(title: '火车', icon: Icons.directions_railway),
    ItemView(title: '步行', icon: Icons.directions_walk),
    ItemView(title: '轮船', icon: Icons.directions_boat),
    ItemView(title: '公交车', icon: Icons.directions_bus),
    ItemView(title: '火车', icon: Icons.directions_railway),
    ItemView(title: '步行', icon: Icons.directions_walk),
    ItemView(title: '轮船', icon: Icons.directions_boat),
    ItemView(title: '公交车', icon: Icons.directions_bus),
    ItemView(title: '火车', icon: Icons.directions_railway),
    ItemView(title: '步行', icon: Icons.directions_walk),
    ItemView(title: '轮船', icon: Icons.directions_boat),
    ItemView(title: '公交车', icon: Icons.directions_bus),
    ItemView(title: '火车', icon: Icons.directions_railway),
    ItemView(title: '步行', icon: Icons.directions_walk),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar选项卡示例'),
          bottom: TabBar(
            isScrollable: true,
            tabs: myTabs.map((ItemView itemview) {
              return Tab(text: itemview.title, icon: Icon(itemview.icon));
            }).toList(),
          ),
        ),
        body: new TabBarView(
            children: myTabs.map((ItemView itemView) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: SelectedView(itemView: itemView),
          );
        }).toList()),
      ),
    );
  }
}

class SelectedView extends StatelessWidget {
  final ItemView itemView;

  SelectedView({Key key, this.itemView}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
        color: Colors.white,
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(itemView.icon, size: 128.0, color: textStyle.color),
            Text(
              itemView.title,
              style: textStyle,
            )
          ],
        )));
  }
}
