import 'package:flutter/material.dart';

/* what is typedef? why is it used? What is it doing here */
typedef NavHandler(int currentIndex);

class NavBar extends StatefulWidget {
  final int currentIndex;
  final NavHandler navHandler;

  NavBar({@required this.currentIndex, @required this.navHandler});

  @override
  State<StatefulWidget> createState() {
    return _NavBarState();
  }
}

class _NavBarState extends State<NavBar> {
  int _currentIndex;

  Color _activeIcon = Colors.purple;
  Color _unactiveIcon = Colors.grey;
  Color _accountIconColor;
  Color _notifyIconColor;
  Color _addNewIconColor;
  Color _messagesIconColor;
  Color _searchIconColor;

  @override
  void initState() {
    _currentIndex = widget.currentIndex;
    _searchIconColor = _messagesIconColor =
        _addNewIconColor = _notifyIconColor = _accountIconColor = _unactiveIcon;
    _manageIconColor(_currentIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              widget.navHandler(0); /* Why is this ? */
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
              widget.navHandler(1);
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
              widget.navHandler(2);
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
              widget.navHandler(3);
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
              widget.navHandler(4);
              setState(() {
                _currentIndex = 4;
                _manageIconColor(_currentIndex);
              });
            },
          ),
        ],
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
