import 'package:flutter/material.dart';

class HomeWithTabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeWithTabs();
  }
}

class _HomeWithTabs extends State<HomeWithTabs> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          elevation: 5.0,
          backgroundColor: Colors.purple,
          title: Center(
            child: Text(
              'Az-Zawj',
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.grey,
            ),
            Container(
              color: Colors.orange,
            ),
            Container(
              color: Colors.yellow,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.search)),
            Tab(icon: Icon(Icons.message)),
            Tab(icon: Icon(Icons.add_box)),
            Tab(icon: Icon(Icons.notifications)),
            Tab(icon: Icon(Icons.account_box))
          ],
          unselectedLabelColor: Colors.grey[600],
          labelColor: Colors.purple,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.purple,

        ),
      ),
    );
  }

  navItemTitle(NavItems item) {
    return Text('');
  }

  navItemIcon(NavItems item) {
    switch (item) {
      case NavItems.Item1:
        {
          Tab(icon: Icon(Icons.search));
          break;
        }
      case NavItems.Item2:
        {
          Tab(icon: Icon(Icons.message));
          break;
        }
      case NavItems.Item3:
        {
          Tab(icon: Icon(Icons.add_box));
          break;
        }
      case NavItems.Item4:
        {
          Tab(icon: Icon(Icons.notifications));
          break;
        }
      default:
        {
          Tab(icon: Icon(Icons.account_box));
          break;
        }
    }
  }
}

enum NavItems { Item1, Item2, Item3, Item4, Item5 }

// import 'package:flutter/material.dart';

// class AzZawjHome extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _NavBar();
//   }
// }

// class _NavBar extends State<AzZawjHome> {
//   int index = 0;
//   List<Widget> _children = [
//     PlaceHolderWidget(Colors.green),
//     PlaceHolderWidget(Colors.blue),
//     PlaceHolderWidget(Colors.red),
//     PlaceHolderWidget(Colors.orange),
//     PlaceHolderWidget(Colors.grey),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.pink,
//         elevation: 7.0,
//         title: Text('Az Zawj'),
//       ),
//       body: _children[index],
//       bottomNavigationBar: Theme(
//           data: ThemeData(
//             canvasColor: Colors.pink[50],
//             primaryColor: Colors.red,
//             textTheme: TextTheme(
//               caption: TextStyle(
//                 color: Colors.grey,
//               ),
//             ),
//           ),
//           child: BottomAppBar(
//             notchMargin: null,
//             child: Row(
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: <Widget>[
//                 IconButton(
//                   iconSize: 30.0,
//                   icon: Image.asset(
//                     'images/search-ios.png',
//                     height: 24.0,
//                     width: 24.0,
//                   ),
//                   onPressed: () {},
//                 ),
//                 IconButton(
//                   iconSize: 30.0,
//                   icon: Icon(Icons.chat_bubble_outline),
//                   onPressed: () {},
//                 ),
//                 IconButton(
//                   iconSize: 30.0,
//                   icon: Icon(Icons.add_box),
//                   onPressed: () {},
//                 ),
//                 IconButton(
//                   iconSize: 30.0,
//                   icon: Icon(Icons.notification_important),
//                   onPressed: () {},
//                 ),
//                 IconButton(
//                   iconSize: 30.0,
//                   icon: Icon(Icons.account_box),
//                   onPressed: () {},
//                 ),
//               ],
//             ),
//           )
//           // BottomNavigationBar(
//           //   items: [
//           //     BottomNavigationBarItem(
//           //       icon: Icon(Icons.search),
//           //       title: Text('Search'),
//           //     ),
//           //     BottomNavigationBarItem(
//           //       icon: Icon(Icons.chat),
//           //       title: Text('Chat'),
//           //     ),
//           //     BottomNavigationBarItem(
//           //       icon: Icon(Icons.add_box),
//           //       title: Text('Add'),
//           //     ),
//           //     BottomNavigationBarItem(
//           //       icon: Icon(Icons.notifications),
//           //       title: Text('Notification'),
//           //     ),
//           //     BottomNavigationBarItem(
//           //       icon: Icon(Icons.account_box),
//           //       title: Text('Profile'),
//           //     ),
//           //   ],
//           //   type: BottomNavigationBarType.fixed,
//           //   fixedColor: Colors.pink,
//           //   currentIndex: index,
//           //   onTap: onNavTaped,
//           // ),
//           ),
//     );
//   }

//   void onNavTaped(int i) {
//     setState(() {
//       index = i;
//     });
//   }
// }

// class PlaceHolderWidget extends StatelessWidget {
//   final Color color;

//   PlaceHolderWidget(this.color);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: color,
//     );
//   }
// }

// // Animation related code.............--->
// // class _NavBar extends State<AzZawjHome> with TickerProviderStateMixin {

// // Animation<double> animation;
// // AnimationController controller;

// // @override
// // void initState() {
// //   controller = AnimationController(
// //     vsync: this,
// //     duration: Duration(milliseconds: 2000),
// //     value: 0.1,
// //   );
// //   animation = Tween(
// //     begin: 0.0,
// //     end: 100.0,
// //   ).animate(controller)
// //     ..addListener(() {
// //       setState(() {});
// //     });
// //   super.initState();
// // }

// // BottomNavigationBarItem(
// //   icon: AnimatedIcon(
// //     icon: AnimatedIcons.search_ellipsis,
// //     progress: controller,
// //   ),
// //   title: Text('Search'),
// // ),
