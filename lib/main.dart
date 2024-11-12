import 'package:flutter/material.dart';
import 'package:listview_example/di/setup_locator.dart';
import 'package:listview_example/screens/list_screen.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ListViewScreen(),
    );
  }
}
