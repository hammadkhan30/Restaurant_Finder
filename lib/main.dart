import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "RestaurantFinder",
      theme: ThemeData(
        primaryColor: Colors.orangeAccent,
        accentColor: Colors.yellowAccent,
        canvasColor: Color.fromRGBO(255,254,229,1),
      ),
      initialRoute: '/',
      routes: {
        
      },
    );
  }
}

