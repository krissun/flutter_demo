import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
	CategoryPage({Key key}) : super(key: key);
    @override
    _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State <CategoryPage> {
    @override
    Widget build(BuildContext context) {
        return DefaultTabController(
            length: 6,
            child: Scaffold(
                appBar: AppBar(
                    backgroundColor: Colors.white,
                    title: Row(
                        children: <Widget>[
                            Expanded(
                                child: TabBar(
                                    indicatorColor: Colors.redAccent,
                                    labelColor: Colors.redAccent,
                                    unselectedLabelColor: Colors.black,
                                    indicatorSize: TabBarIndicatorSize.label,
                                    isScrollable: true,
                                    tabs: <Widget>[
                                        Tab(text: '标签1',),
                                        Tab(text: '标签2',),
                                        Tab(text: '标签3',),
                                        Tab(text: '标签4',),
                                        Tab(text: '标签5',),
                                        Tab(text: '标签6',),
                                    ],
                                )
                            )
                        ],
                    ),
                ),
                body: TabBarView(
                    children: <Widget>[
                        ListView(
                            children: <Widget>[
                                ListTile(title: Text('标签1'),),
                                ListTile(title: Text('标签1'),),
                                ListTile(title: Text('标签1'),),
                                ListTile(title: Text('标签1'),),
                                ListTile(title: Text('标签1'),),
                                ListTile(title: Text('标签1'),),
                                ListTile(title: Text('标签1'),),
                                ListTile(title: Text('标签1'),),
                                ListTile(title: Text('标签1'),),
                                ListTile(title: Text('标签1'),),
                                ListTile(title: Text('标签1'),),
                                ListTile(title: Text('标签1'),),
                                ListTile(title: Text('标签1'),),
                                ListTile(title: Text('标签1'),),
                            ],
                        ),
                        ListView(
                            children: <Widget>[
                                ListTile(title: Text('标签2'),),
                                ListTile(title: Text('标签2'),),
                                ListTile(title: Text('标签2'),),
                                ListTile(title: Text('标签2'),),
                                ListTile(title: Text('标签2'),),
                                ListTile(title: Text('标签2'),),
                                ListTile(title: Text('标签2'),),
                                ListTile(title: Text('标签2'),),
                                ListTile(title: Text('标签2'),),
                                ListTile(title: Text('标签2'),),
                                ListTile(title: Text('标签2'),),
                                ListTile(title: Text('标签2'),),
                                ListTile(title: Text('标签2'),),
                                ListTile(title: Text('标签2'),),
                            ],
                        ),
                        ListView(
                            children: <Widget>[
                                ListTile(title: Text('标签3'),),
                                ListTile(title: Text('标签3'),),
                                ListTile(title: Text('标签3'),),
                                ListTile(title: Text('标签3'),),
                                ListTile(title: Text('标签3'),),
                                ListTile(title: Text('标签3'),),
                                ListTile(title: Text('标签3'),),
                                ListTile(title: Text('标签3'),),
                                ListTile(title: Text('标签3'),),
                                ListTile(title: Text('标签3'),),
                                ListTile(title: Text('标签3'),),
                                ListTile(title: Text('标签3'),),
                                ListTile(title: Text('标签3'),),
                                ListTile(title: Text('标签3'),),
                            ],
                        ),
                        ListView(
                            children: <Widget>[
                                ListTile(title: Text('标签4'),),
                                ListTile(title: Text('标签4'),),
                                ListTile(title: Text('标签4'),),
                                ListTile(title: Text('标签4'),),
                                ListTile(title: Text('标签4'),),
                                ListTile(title: Text('标签4'),),
                                ListTile(title: Text('标签4'),),
                                ListTile(title: Text('标签4'),),
                                ListTile(title: Text('标签4'),),
                                ListTile(title: Text('标签4'),),
                                ListTile(title: Text('标签4'),),
                                ListTile(title: Text('标签4'),),
                                ListTile(title: Text('标签4'),),
                                ListTile(title: Text('标签4'),),
                            ],
                        ),
                        ListView(
                            children: <Widget>[
                                ListTile(title: Text('标签5'),),
                                ListTile(title: Text('标签5'),),
                                ListTile(title: Text('标签5'),),
                                ListTile(title: Text('标签5'),),
                                ListTile(title: Text('标签5'),),
                                ListTile(title: Text('标签5'),),
                                ListTile(title: Text('标签5'),),
                                ListTile(title: Text('标签5'),),
                                ListTile(title: Text('标签5'),),
                                ListTile(title: Text('标签5'),),
                                ListTile(title: Text('标签5'),),
                                ListTile(title: Text('标签5'),),
                                ListTile(title: Text('标签5'),),
                                ListTile(title: Text('标签5'),),
                            ],
                        ),
                        ListView(
                            children: <Widget>[
                                ListTile(title: Text('标签6'),),
                                ListTile(title: Text('标签6'),),
                                ListTile(title: Text('标签6'),),
                                ListTile(title: Text('标签6'),),
                                ListTile(title: Text('标签6'),),
                                ListTile(title: Text('标签6'),),
                                ListTile(title: Text('标签6'),),
                                ListTile(title: Text('标签6'),),
                                ListTile(title: Text('标签6'),),
                                ListTile(title: Text('标签6'),),
                                ListTile(title: Text('标签6'),),
                                ListTile(title: Text('标签6'),),
                                ListTile(title: Text('标签6'),),
                                ListTile(title: Text('标签6'),),
                            ],
                        ),
                    ]
                ),
            ),
        );
    }
}