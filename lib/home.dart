import 'package:flutter/material.dart';

import './navBar.dart';

class Home extends StatelessWidget {
  final int _currentIndex = 0;
  final List _children = [
    PlaceHolderWidget(Colors.black),
    PlaceHolderWidget(Colors.blue),
    PlaceHolderWidget(Colors.red),
    PlaceHolderWidget(Colors.grey),
    PlaceHolderWidget(Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Az-Zawj'),
        ),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: NavBar(
        currentIndex: _currentIndex,
      ),
    );
  }
}

class PlaceHolderWidget extends StatelessWidget {
  final Color color;

  PlaceHolderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
