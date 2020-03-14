import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {
	FormDemo({Key key}) : super(key: key);
    @override
    _FormDemoState createState() => _FormDemoState();
}

class _FormDemoState extends State <FormDemo> {
    String _username;
    int _sex = 1;
    List _hobby = [
        {'checked': true, 'title': 'JAVA'},
        {'checked': false, 'title': 'FLUTTER'},
        {'checked': true, 'title': 'ANDROID'}
    ];
    String _marks;

    void _sexChanged(value) => setState(() => this._sex = value);

    List<Widget> _getHobbyList() {
        List<Widget> tempList = [];
        for (var i = 0; i < _hobby.length; i++) {
            tempList.add(
                Row(
                    children: <Widget>[
                        Text(this._hobby[i]['title'] + ":"),
                        Checkbox(
                            value: this._hobby[i]['checked'],
                            onChanged: (value) {
                                setState(() {
                                    this._hobby[i]['checked'] = value;
                                });
                            },
                        ),
                    ],
                )
            );
        }
        return tempList;
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text('表单'),),
            body: SingleChildScrollView(
                child: Padding(padding: EdgeInsets.all(20),
                    child: Column(
                        children: <Widget>[
                            TextField(
                                decoration: InputDecoration(
                                    hintText: '姓名',
                                    border: OutlineInputBorder(),
                                ),
                                onChanged: (value) => setState(() => this._username = value),
                            ),
                            SizedBox(height: 20,),
                            Row(
                                children: <Widget>[
                                    Text('男'),
                                    Radio(value: 1, groupValue: this._sex, onChanged: this._sexChanged),
                                    Text('女'),
                                    Radio(value: 2, groupValue: this._sex, onChanged: this._sexChanged),
                                ],
                            ),
                            SizedBox(height: 20,),
                            Wrap(
                                children: this._getHobbyList(),
                            ),
                            SizedBox(height: 20,),
                            TextField(
                                maxLines: 4,
                                keyboardAppearance: Brightness.light,
                                decoration: InputDecoration(
                                    hintText: '备注',
                                    border: OutlineInputBorder(),
                                ),
                                onChanged: (value) => setState(() => this._marks = value),
                            ),
                            SizedBox(height: 50,),
                            Container(
                                height: 50,
                                width: double.infinity,
                                child: RaisedButton(
                                        child: Text('提交'),
                                        color: Colors.lightBlue,
                                        textColor: Colors.white,
                                        onPressed: () {
                                            print(this._username);
                                            print(this._sex);
                                            print(this._hobby);
                                            print(this._marks);
                                        }
                                ),
                            ),
                        ],
                    ),
                ),
            ),
        );
    }
}