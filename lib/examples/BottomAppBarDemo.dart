import 'package:flutter/material.dart';

class BottomAppBarDemo extends StatefulWidget {
    final Map arguments;
	BottomAppBarDemo({Key key, this.arguments}) : super(key: key);
    @override
    _BottomAppBarDemoState createState() => _BottomAppBarDemoState(arguments: arguments);
}

class _BottomAppBarDemoState extends State <BottomAppBarDemo> {
    final Map arguments;

    _BottomAppBarDemoState({this.arguments});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text('${this.arguments['title']}'),),
            body: Center(
                child: Text('${this.arguments['title']}'),
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: () {},
                child: Icon(
                    Icons.add,
                    color: Colors.white,
                ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomAppBar(
                color: Colors.lightBlue,
                shape: CircularNotchedRectangle(),
                child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.home),
                            color: Colors.white,
                            onPressed: () {},
                        ),
                        IconButton(
                            icon: Icon(Icons.airplay),
                            color: Colors.white,
                            onPressed: () {},
                        ),
                    ],
                ),
            ),
        );
    }
}