import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CounterWidget();
  }
}

class CounterWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CounterWidgetState();
  }
}

class CounterWidgetState extends State<CounterWidget> {
  var counter = 0;

  void initState() {
    super.initState();
    counter = 0;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Center(
            child: Text('Counter App'),
          )),
          body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Counter value $counter',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                          child: Icon(Icons.add),
                          onPressed: () {
                            setState(
                              () {
                                counter++;
                              },
                            );
                          },
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        RaisedButton(
                          child: Icon(Icons.remove),
                          onPressed: () {
                            setState(
                              () {
                                counter--;
                              },
                            );
                          },
                        ),
                      ]),
                  SizedBox(
                    height: 60,
                  ),
                  FlatButton(
                      color: Colors.lightBlue,
                      onPressed: () {
                        setState(() {
                          counter = 0;
                        });
                      },
                      child: Text('Reset'))
                ]),
          )),
    );
  }
}
