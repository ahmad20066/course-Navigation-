import 'package:flutter/material.dart';
import 'package:navigation/screens/screen2.dart';

class Screen1 extends StatelessWidget {
  static const routeName = '/Screen1';
  String name = "ahmad";
  String name2 = "mohammed";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Screen 1"),
        ),
        body: Center(
          child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, Screen2.routeName, arguments: {
                  //Map
                  "name 1": name,
                  "name 2": name2
                });
              },
              child: Text("Go to Screen 2")),
        ));
  }
}
