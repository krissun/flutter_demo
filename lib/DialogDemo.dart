import 'package:flutter/material.dart';

class DialogDemo extends StatefulWidget {
	DialogDemo({Key key}) : super(key: key);
    @override
    _DialogDemoState createState() => _DialogDemoState();
}

class _DialogDemoState extends State <DialogDemo> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text('自定义弹出框'),),
            body: Text('弹出框'),
        );
    }
}