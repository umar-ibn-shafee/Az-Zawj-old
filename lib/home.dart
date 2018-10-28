import 'package:flutter/material.dart';

import './navBar.dart';
import './screens/notifications.dart';
import './screens/search.dart';

class Home extends StatefulWidget {
  var _notifyScreen;

  Home() {
    this._notifyScreen = ZawjNotification();
  }

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List _children = [
    SearchScreen(),
    PlaceHolderWidget(Colors.blue),
    PlaceHolderWidget(Colors.red),
    ZawjNotification(),
    PlaceHolderWidget(Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Padding(
            padding: EdgeInsets.only(top: 2.0),
            child: Center(
              child: Text(
                'Az-Zawj',
                style: TextStyle(
                  fontFamily: 'Arabic_DS',
                  color: Colors.black,
                  fontSize: 60.0,
                ),
              ),
            ),
          )),
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

  List<Object> jsonData = [
    {
      "type": "Invite",
      "typeId": 1,
      "message": "XXXXXXXX has invited you have a look over her profile",
      "date": "05-10-2018",
      "time": "10:05 PM",
      "user": {"username": "XXXXX", "userIcon": "image", "userLink": "link"}
    },
    {
      "type": "Message",
      "typeId": 2,
      "message": "XXXXXXXX has messaged you.",
      "date": "05-10-2018",
      "time": "10:05 PM",
      "user": {"username": "XXXXX", "userIcon": "image", "userLink": "link"}
    },
    {
      "type": "Like",
      "typeId": 3,
      "message": "XXXXXXXX has Liked your profile.",
      "date": "05-10-2018",
      "time": "10:05 PM",
      "user": {"username": "XXXXX", "userIcon": "image", "userLink": "link"}
    },
    {
      "type": "Favourite",
      "typeId": 4,
      "message": "XXXXXXXX has added your profile to his favourites list.",
      "date": "05-10-2018",
      "time": "10:05 PM",
      "user": {"username": "XXXXX", "userIcon": "image", "userLink": "link"}
    }
  ];
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

class NotifyUser extends StatelessWidget {
  List _data = [
    "User 1 has messaged you",
    "User 1 has messaged you",
    "User 1 has messaged you",
    "User 1 has messaged you"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _data.length,
      padding: EdgeInsets.all(10.0),
      itemExtent: null,
      itemBuilder: (BuildContext context, int i) {
        return Text(_data[i]);
      },
    );
  }
}
