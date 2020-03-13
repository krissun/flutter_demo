import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
	TabBarControllerPage({Key key}) : super(key: key);
    @override
    _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State <TabBarControllerPage> with SingleTickerProviderStateMixin {

    TabController _tabController;

    @override
    void initState() {
        super.initState();
        _tabController = new TabController(length: 2, vsync: this);
        _tabController.addListener(() {
           print(_tabController.index);
        });
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                bottom: TabBar(
                    controller: this._tabController,
                    tabs: [
                        Tab(text: '推荐',),
                        Tab(text: '热销',),
                    ],
                ),
            ),
            body: TabBarView(
                controller: this._tabController,
                children: <Widget>[
                    Center(child: Text('111111'),),
                    Center(child: Text('222222'),),
                ],
            ),
        );
    }
}