import 'package:flutter/material.dart';

enum _TAB {
  TAB1,
  TAB2,
  TAB3,
}

class NavBarTrail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavBar();
  }
}

class _NavBar extends State<NavBarTrail> with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: _TAB.values.length);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.black,
        title: Text(_getTitleForCurrentTab(_TAB.values[_currentIndex])),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          TabWidget(Colors.red),
          TabWidget(Colors.blue),
          TabWidget(Colors.orange)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
          _tabController.animateTo(index);
        },
        items: _TAB.values
            .map(
              (_TAB tab) => BottomNavigationBarItem(
                    title: Text(_getTitleForCurrentTab(tab)),
                    icon: Image.asset(
                      'images/search-ios.png',
                      height: 24.0,
                      width: 24.0,
                    ),
                  ),
            )
            .toList(),
      ),
    );
  }

  _getAssetsForTabs(_TAB tab) {
    final active = tab == _TAB.values[_currentIndex];

    if (tab == _TAB.TAB1) {
      return active ? 'images/search-active.png' : 'images/search.png';
    } else if (tab == _TAB.TAB2) {
      return active ? 'images/add-new-active.jpg' : 'images/add-new.jpg';
    }
    return active ? 'images/user-active.png' : 'images/user.png';
  }

  String _getTitleForCurrentTab(_TAB tab) {
    if (tab == _TAB.TAB1) {
      return 'First Tab';
    } else if (tab == _TAB.TAB2) {
      return '2nd Tab';
    }
    return '3rd Tab';
  }

  @override
    void dispose() {
      super.dispose();
    }
}

class TabWidget extends StatelessWidget {
  final Color color;

  TabWidget(this.color);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: color,
    );
  }
}
