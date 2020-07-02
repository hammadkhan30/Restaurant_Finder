import 'package:flutter/material.dart';
import './UI/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "RestaurantFinder",
      theme: ThemeData(
        primaryColor: Colors.teal[700],
        accentColor: Colors.tealAccent[700],
        canvasColor: Color.fromRGBO(255,254,229,1),
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => Homepage(),
      },
    );
  }
}

