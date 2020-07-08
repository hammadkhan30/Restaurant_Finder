import 'package:flutter/material.dart';
import 'package:restaurant_finder/Bloc/bloc_provider.dart';
import 'package:restaurant_finder/Bloc/location_bloc.dart';
import 'package:restaurant_finder/DataLayer/location.dart';
import './location_screen.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Location>(
      // 1
      stream: BlocProvider.of<LocationBloc>(context).locationStream,
      builder: (context, snapshot) {
        final location = snapshot.data;

        // 2
        if (location == null) {
          return LocationScreen();
        }

        // This will be changed this later
        return Container();
      },
    );
  }
}
