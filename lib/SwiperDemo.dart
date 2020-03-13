import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperDemo extends StatefulWidget {
	SwiperDemo({Key key}) : super(key: key);
    @override
    _SwiperDemoState createState() => _SwiperDemoState();
}

class _SwiperDemoState extends State <SwiperDemo> {

    List<Map> _imageList = [
        {'url': 'https://img4.sycdn.imooc.com/5c18cf540001ac8206000338-360-202.jpg'},
        {'url': 'https://img3.sycdn.imooc.com/5d7612e408b9681f06000338-360-202.jpg'},
        {'url': 'https://img4.sycdn.imooc.com/5a72827d0001cb8006000338-360-202.jpg'},
        {'url': 'https://img4.sycdn.imooc.com/5b9a01a40001fe1805400300-360-202.jpg'},
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text('Swiper图片滑动'),),
            body: Column(
                children: <Widget>[
                    Container(
                        child: AspectRatio(
                            aspectRatio: 16/9,
                            child: Swiper(
                                itemBuilder: (BuildContext context,int index){
                                    return new Image.network(
                                        this._imageList[index]['url'],
                                        fit: BoxFit.fitWidth,
                                    );
                                },
                                loop: true,
                                autoplay: true,
                                itemCount: this._imageList.length,
                                pagination: new SwiperPagination(),
//                                control: new SwiperControl(),
                            ),
                        ),
                    ),
                ],
            ),
        );
    }
}