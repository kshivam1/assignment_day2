import 'package:flutter/material.dart';

class Horizontl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Horizontal_view();
  }
}

class Horizontal_view extends State<Horizontl> {
  @override
  Widget build(BuildContext context) {
    Widget horizontalList1 = new Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 160.0,
              child: Image.asset('./images/1.jpeg'),
            ),
            Container(
              width: 160.0,
              child: Image.asset('./images/2.jpeg'),
            ),
            Container(
              width: 160.0,
              child: Image.asset('./images/3.jpeg'),
            ),
            Container(
              width: 160.0,
              child: Image.asset('./images/4.jpeg'),
            ),
            Container(
              width: 160.0,
              child: Image.asset('./images/5.jpeg'),
            ),
            Container(
              width: 160.0,
              child: Image.asset('./images/6.jpeg'),
            ),
            Container(
              width: 160.0,
              child: Image.asset('./images/7.jpeg'),
            ),
          ],
        ));
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('horizontal list app'),
      ),

      body: Center(
        child: Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              horizontalList1,
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    ));
  }
}
