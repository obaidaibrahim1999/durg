import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'second.dart';
import 'First.dart';
import 'third.dart';
main()=>runApp(Main(),
  );

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Third() ,
    );
  }
}
