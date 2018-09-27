import 'package:flutter/material.dart';

import './home.dart';
// import './homeWithNavBar.dart';
// import './navBar.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
        title: 'Az_Zawj',
        theme: ThemeData(
          primaryColor: Colors.pink,
        ),
      ),
    );

