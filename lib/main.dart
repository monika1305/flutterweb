import 'package:flutter/material.dart';
import 'package:web/locator.dart';
import 'package:web/screens/home/homeview.dart';
import 'package:web/screens/layout_template/layout_template.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(
            fontFamily: 'Open Sans',
          )
      ),
      home: LayoutTemplate(),
    );
  }
}
