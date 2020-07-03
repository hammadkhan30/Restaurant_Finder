import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurant Quaerere"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(11),
            child: TextField(
              autocorrect: true,
              decoration: InputDecoration(
                hintText: 'Select The city',
                hintStyle: TextStyle(color: Theme.of(context).primaryColor),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(12, 6),
                  ),
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
