import 'package:flutter/material.dart';
import 'package:restaurant_finder/Bloc/location_bloc.dart';
import './UI/homepage.dart';
import './Bloc/bloc_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocationBloc>(
      bloc: LocationBloc(),
      child: MaterialApp(
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
      ),
    );
  }
}

