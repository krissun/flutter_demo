import 'package:flutter/material.dart';

class TabBarControllerDemo extends StatefulWidget {
	TabBarControllerDemo({Key key}) : super(key: key);
    @override
    _TabBarControllerDemoState createState() => _TabBarControllerDemoState();
}

class _TabBarControllerDemoState extends State <TabBarControllerDemo> with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {

    TabController _tabController;

    int _counter = 0;

    void _incrementCounter() {
        setState(() {
            _counter++;
        });
    }

    @override
    bool get wantKeepAlive => true;

    @override
    void initState() {
        super.initState();
        _tabController = new TabController(length: 2, vsync: this);
        _tabController.addListener(() {
            print(_tabController.index);
        });
    }

    @override
    void dispose() {
        super.dispose();
        _tabController.dispose();
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('TabBar切换+保持页面状态'),
                bottom: TabBar(
                    controller: this._tabController,
                    tabs: [
                        Tab(text: '推荐', icon: Icon(Icons.school),),
                        Tab(text: '热销', icon: Icon(Icons.hot_tub),),
                    ],
                ),
            ),
            body: TabBarView(
                controller: this._tabController,
                children: <Widget>[
                    ContentView(),
                    ContentView(),
                ],
            ),
        );
    }

}

class ContentView extends StatefulWidget {
	ContentView({Key key}) : super(key: key);
    @override
    _ContentViewState createState() => _ContentViewState();
}

class _ContentViewState extends State <ContentView> with AutomaticKeepAliveClientMixin {

    int _counter = 0;

    void _incrementCounter() {
        setState(() {
            _counter++;
        });
    }

    @override
    bool get wantKeepAlive => true;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Text('点击按钮数字加一：', style: Theme.of(context).textTheme.display1,),
                        Text('${this._counter}', style: Theme.of(context).textTheme.display1,),
                    ],
                ),
            ),
            floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add, size: 20, color: Colors.white,),
                onPressed: this._incrementCounter,
            ),
        );
    }
}