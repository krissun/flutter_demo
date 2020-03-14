import 'package:flutter/material.dart';

class SearchBarDemo extends StatefulWidget {
	SearchBarDemo({Key key}) : super(key: key);
    @override
    _SearchBarDemoState createState() => _SearchBarDemoState();
}

class _SearchBarDemoState extends State <SearchBarDemo> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('搜索'),
                actions: <Widget>[
                    IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                            showSearch(context: context, delegate: Search());
                        },
                    ),
                ],
            ),
        );
    }
}

List _searchList = [
    '电视',
    '电脑',
    '电子书',
    'iphone 6',
    'iphone 7',
    'iphone 8',
    'iphone x'
];

List _recentSuggest = [
    '推荐1',
    '推荐2',
    '推荐3'
];

class Search extends SearchDelegate {

    @override
    Widget buildSuggestions(BuildContext context) {
        final suggestionList = query.isEmpty
                ? _recentSuggest
                : _searchList.where((input) => input.contains(query)).toList();

        return ListView.builder(
            itemCount: suggestionList.length,
            itemBuilder: (context, index) => ListTile(
                title: RichText(text: TextSpan(
                    text: suggestionList[index].substring(0, query.length),
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                    ),
                    children: [
                        TextSpan(
                            text: suggestionList[index].substring(query.length),
                            style: TextStyle(
                                color: Colors.grey,
                            ),
                        ),
                    ]
                )),
            ),
        );
    }

    @override
    List<Widget> buildActions(BuildContext context) {
        return [
            IconButton(icon: Icon(Icons.clear), onPressed: () => query = '')
        ];
    }

    @override
    Widget buildLeading(BuildContext context) {
        return IconButton(
            icon: AnimatedIcon(icon: AnimatedIcons.menu_arrow, progress: transitionAnimation,),
            onPressed: () => close(context, null),
        );
    }

    @override
    Widget buildResults(BuildContext context) {
        return Container(
            width: 100,
            height: 100,
            child: Card(
                color: Colors.redAccent,
                child: Text(query),
            ),
        );
    }
}