import 'package:flutter/material.dart';

class HomeWithNavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeWithNavBar();
  }
}

class _HomeWithNavBar extends State<HomeWithNavBar> {
  int _currentIndex = 0;
  List _children = [
    PlaceHolderWidget(Colors.black),
    PlaceHolderWidget(Colors.blue),
    PlaceHolderWidget(Colors.red),
    PlaceHolderWidget(Colors.grey),
    PlaceHolderWidget(Colors.green),
  ];

  Color _activeIcon = Colors.purple;
  Color _unactiveIcon = Colors.grey;
  Color _accountIconColor;
  Color _notifyIconColor;
  Color _addNewIconColor;
  Color _messagesIconColor;
  Color _searchIconColor;

  @override
  void initState() {
    _searchIconColor = _messagesIconColor =
        _addNewIconColor = _notifyIconColor = _accountIconColor = _unactiveIcon;
    _manageIconColor(_currentIndex);
    super.initState();
  }

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
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            GestureDetector(
              child: Icon(
                Icons.search,
                color: _searchIconColor,
              ),
              onTap: () {
                setState(() {
                  _currentIndex = 0;
                  _manageIconColor(_currentIndex);
                });
              },
            ),
            GestureDetector(
              child: Icon(
                Icons.message,
                color: _messagesIconColor,
              ),
              onTap: () {
                setState(() {
                  _currentIndex = 1;
                  _manageIconColor(_currentIndex);
                });
              },
            ),
            GestureDetector(
              child: Icon(
                Icons.add_box,
                color: _addNewIconColor,
              ),
              onTap: () {
                setState(() {
                  _currentIndex = 2;
                  _manageIconColor(_currentIndex);
                });
              },
            ),
            GestureDetector(
              child: Icon(
                Icons.notifications,
                color: _notifyIconColor,
              ),
              onTap: () {
                setState(() {
                  _currentIndex = 3;
                  _manageIconColor(_currentIndex);
                });
              },
            ),
            GestureDetector(
              child: Icon(
                Icons.account_box,
                color: _accountIconColor,
              ),
              onTap: () {
                setState(() {
                  _currentIndex = 4;
                  _manageIconColor(_currentIndex);
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  _manageIconColor(i) {
    switch (_currentIndex) {
      case 0:
        {
          _searchIconColor = _activeIcon;
          _messagesIconColor = _addNewIconColor =
              _notifyIconColor = _accountIconColor = _unactiveIcon;
          break;
        }
      case 1:
        {
          _messagesIconColor = _activeIcon;
          _searchIconColor = _addNewIconColor =
              _notifyIconColor = _accountIconColor = _unactiveIcon;
          break;
        }
      case 2:
        {
          _addNewIconColor = _activeIcon;
          _messagesIconColor = _searchIconColor =
              _notifyIconColor = _accountIconColor = _unactiveIcon;
          break;
        }
      case 3:
        {
          _notifyIconColor = _activeIcon;
          _messagesIconColor = _addNewIconColor =
              _searchIconColor = _accountIconColor = _unactiveIcon;
          break;
        }
      default:
        {
          _accountIconColor = _activeIcon;
          _messagesIconColor = _addNewIconColor =
              _searchIconColor = _notifyIconColor = _unactiveIcon;
          break;
        }
    }
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
