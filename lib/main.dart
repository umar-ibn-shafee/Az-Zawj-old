import 'package:flutter/material.dart';

// import './home.dart';
import './homeWithNavBar.dart';
// import './navBar.dart';

void main() => runApp(
      MaterialApp(
        home: HomeWithNavBar(),
        title: 'Az_Zawj',
        theme: ThemeData(
          primaryColor: Colors.pink,
          buttonTheme: ButtonThemeData(
            height: 24.0,
            minWidth: 24.0,
          ),
        ),
      ),
    );
