import 'package:flutter/material.dart ';
import 'package:flutter/material.dart';

class RootApp extends StatefulWidget {
  RootApp({Key key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getFooter() {
    return Container(
      height: 80,
      decoration: BoxDecoration(color: Colors.black),
      child: Row(
        children:  List.generate(4, (index) {
          return IconButton(
            icon: Icon(Icons.home), 
            onPressed: null,)
        }),
      )
    );
  }
}
