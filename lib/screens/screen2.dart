import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  static const routeName = "/Screen 2";

  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context)!.settings.arguments
        as Map; //{"name1" : name,....}
    String name1 = arguments['name 1'];
    String name2 = arguments['name 2'];
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name1),
            Text(name2),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Go back")),
          ],
        ),
      ),
    );
  }
}
