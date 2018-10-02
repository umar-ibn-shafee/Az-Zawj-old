import 'package:flutter/material.dart';

import './navBar.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List _children = [
    PlaceHolderWidget(Colors.black),
    PlaceHolderWidget(Colors.blue),
    PlaceHolderWidget(Colors.red),
    PlaceHolderWidget(Colors.grey),
    PlaceHolderWidget(Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Az-Zawj'),
        ),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: NavBar(
        currentIndex: _currentIndex,
        navHandler: (index) => _changeIndex(index),
      ),
    );
  }

  _changeIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
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
