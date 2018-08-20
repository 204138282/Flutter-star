import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /**
     * 无导航栏
     */
    // return new Container(
    //   decoration: new BoxDecoration(color: Colors.white),
    //   child: new Center(
    //     child: new Text(
    //       'Hello, Flutter!',
    //       textDirection: TextDirection.ltr,
    //       style: TextStyle(fontSize: 40.0, color: Colors.black87)
    //     )
    //   ),
    // );

    /**
     * 有导航栏
     */
    return new MaterialApp(
      title: 'title-testhhhhhhh',
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var descTextStyle = new TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18.0,
      height: 2.0,
    );

    //5星
    Widget _ratings() {
      return new Container(
          padding: new EdgeInsets.all(20.0),
          margin: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            border: Border.all(width: 2.0, color: Colors.green),
          ),
          child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Icon(Icons.star, color: Colors.black),
                    new Icon(Icons.star, color: Colors.black),
                    new Icon(Icons.star, color: Colors.black),
                    new Icon(Icons.star, color: Colors.black),
                    new Icon(Icons.star, color: Colors.black),
                  ],
                ),
                new Text('170 Reviews',
                    style: new TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Roboto',
                      letterSpacing: 0.5,
                      fontSize: 20.0,
                    ))
              ]));
    }

    var iconList = DefaultTextStyle.merge(
        style: descTextStyle,
        child: new Container(
            padding: EdgeInsets.all(20.0),
            margin: const EdgeInsets.all(20.0),
            decoration: new BoxDecoration(
                border: new Border.all(width: 2.0, color: Colors.blue)),
            child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new Column(children: [
                    new Icon(Icons.kitchen, color: Colors.green),
                    new Text('PREP'),
                    new Text('25 min')
                  ]),
                  new Column(children: [
                    new Icon(Icons.timer, color: Colors.green),
                    new Text('COOK'),
                    new Text('1 hour')
                  ]),
                  new Column(children: [
                    new Icon(Icons.restaurant, color: Colors.green),
                    new Text('FEEDS'),
                    new Text('4-6 hour')
                  ]),
                ])));

    var container = new Container(
      decoration: new BoxDecoration(
        color: Colors.black26,
      ),
      child: new Column(children: [
        new Row(children: [
          new Expanded(
              child: new Container(
            decoration: new BoxDecoration(
                border: new Border.all(width: 1.0, color: Colors.blue),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(2.0))),
            margin: const EdgeInsets.all(4.0),
            child: new Image.asset('images/lake.jpg'),
          )),
          new Expanded(
              child: new Container(
            decoration: new BoxDecoration(
                border: new Border.all(width: 1.0, color: Colors.blue),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(2.0))),
            margin: const EdgeInsets.all(4.0),
            child: new Image.asset('images/lake.jpg'),
          ))
        ]),
        new Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.blue),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(2.0)),
                ),
                margin: const EdgeInsets.all(4.0),
                child: Image.asset('images/lake.jpg'),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.blue),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(2.0)),
                ),
                margin: const EdgeInsets.all(4.0),
                child: Image.asset('images/lake.jpg'),
              ),
            ),
          ],
        ),
      ]),
    );

    return new Scaffold(
        appBar: AppBar(title: new Text('Flutter-嵌套行和列[布局]')),
        body: new Column(children: [
          // new Image.asset('images/lake.jpg',
          //     width: 300.0, height: 200.0, fit: BoxFit.cover),
          _ratings(),
          iconList,
          container
        ]));
  }
}
