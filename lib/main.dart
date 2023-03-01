import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:register/AnimatedListView.dart';
import 'package:register/Register.dart';

import 'HeadClipper.dart';
void main() {
  runApp( MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home:Scaffold(
        body: AnimatedListView(),
      )
    );
  }
}

