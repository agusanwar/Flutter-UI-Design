import 'package:flutter/material.dart';
import 'package:uidesign/screens/responsive_design/responsive_design.dart';
import 'package:uidesign/screens/sliverappbar/sliverappbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ResponsiveDesignScreens());
  }
}
