import 'package:flutter/material.dart';
import 'package:restaurant_finder/Bloc/bloc_provider.dart';
import 'package:restaurant_finder/Bloc/loc_query_bloc.dart';

class LocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 1
    final bloc = LocationQueryBloc();

    // 2
    return BlocProvider<LocationQueryBloc>(
      bloc: bloc,
      child: Scaffold(
        appBar: AppBar(title: Text('Where do you want to eat?')),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Enter a location'),

                // 3
                onChanged: (query) => bloc.submitQuery(query),
              ),
            ),
            // 4
            Expanded(
              child: _buildResults(bloc),
            )
          ],
        ),
      ),
    );
  }
}
