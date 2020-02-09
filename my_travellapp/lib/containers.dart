import 'dart:math';

import 'package:flutter/material.dart';

class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return appState();
  }
}

class appState extends State<Myapp> {
  Color getColor() {
    var random = Random();
    return Color.fromARGB(random.nextInt(255), random.nextInt(255),
        random.nextInt(255), random.nextInt(255));
  }

  Color _color1 = Colors.blue;
  Color _color2 = Colors.purple;
  Color _color3 = Colors.pink;
  Color _color4 = Colors.blue;
  Color _color5 = Colors.brown;
  Color _color6 = Colors.red;
  Color _color7 = Colors.yellow;
  Color _color8 = Colors.lightBlue;
  Color _color9 = Colors.orange;
  Color _color10 = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mobile App",
          style: TextStyle(fontFamily: 'DancingScript'),
        ),
      ),
      body: Container(
          child: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
                child: Row(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Container(
                        child: Column(
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _color10 = getColor();
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.all(5.0),
                                  color: _color10,
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.laptop_windows,
                                    size: 50,
                                  ),
                                ))),
                        Expanded(
                            flex: 1,
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _color9 = getColor();
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.all(5.0),
                                  color: _color9,
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.mail,
                                    size: 50,
                                  ),
                                ))),
                      ],
                    ))),
                Expanded(
                    flex: 1,
                    child: Container(
                        child: Column(
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _color8 = getColor();
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(5.0),
                                color: _color8,
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.wifi,
                                  size: 50,
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 3,
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 3,
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _color7 = getColor();
                                            });
                                          },
                                          child: Container(
                                            margin: EdgeInsets.all(5.0),
                                            color: _color7,
                                            alignment: Alignment.center,
                                            child: Icon(
                                              Icons.access_alarm,
                                              size: 50,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _color6 = getColor();
                                            });
                                          },
                                          child: Container(
                                            margin: EdgeInsets.all(5.0),
                                            color: _color6,
                                            alignment: Alignment.center,
                                            child: Icon(
                                              Icons.bluetooth,
                                              size: 50,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 1,
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _color5 = getColor();
                                            });
                                          },
                                          child: Container(
                                            margin: EdgeInsets.all(5.0),
                                            color: _color5,
                                            alignment: Alignment.center,
                                            child: Icon(
                                              Icons.apps,
                                              size: 50,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _color4 = getColor();
                                            });
                                          },
                                          child: Container(
                                            margin: EdgeInsets.all(5.0),
                                            color: _color4,
                                            alignment: Alignment.center,
                                            child: Icon(
                                              Icons.call,
                                              size: 50,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ],
                    )))
              ],
            )),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _color3 = getColor();
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(5.0),
                        color: _color3,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.battery_alert,
                          size: 50,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _color2 = getColor();
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(5.0),
                        color: _color2,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.desktop_windows,
                          size: 50,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _color1 = getColor();
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  color: _color1,
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.radio,
                    size: 50,
                  ),
                ),
              ))
        ],
      )),
    );
  }
}
