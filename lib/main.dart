import 'package:flutter/material.dart';

import './home.dart';
// import './homeWithNavBar.dart';
// import './navBar.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
        title: 'Az_Zawj',
        theme: ThemeData(
          primaryColor: Colors.pink,
        ),
      ),
    );

//export PATH=/home/mercyofallah/Umar/development/flutter/bin:$PATH