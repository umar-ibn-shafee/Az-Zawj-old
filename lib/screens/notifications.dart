import 'dart:async';
import 'package:flutter/material.dart';

class Post {
  final String icon;
  final String text;
  final List<Map<String, String>> postList = [];

  Post({this.icon, this.text});

  factory Post.fromResponse(Map<String, String> input) {
    return Post(icon: input['icon'], text: input['text']);
  }
}

Future fetchResponse() async {
  Map<String, String> newData = {
    "icon": "images/msg.png",
    "text": "User 1 has messaged you"
  };

  var xData = [
    {'name': 'umar', 'age': 24, 'color': 'brown'},
    {'name': 'azhar', 'age': 21, 'color': 'fair'},
    {'name': 'noor', 'age': 22, 'color': 'brown'}
  ];

  List<Map<String, String>> response = [
    {
      "icon": "images/msg.png",
      "userName": "XXXXXXXXX",
      "userImage": "XXXX.png",
      "action": "messaged you",
      "when": "6d",
      "text":
          "User 1 has messaged you user 1 has messaged you user 1 has messaged you"
    },
    {
      "icon": "images/msg.png",
      "text": "User 1 has messaged you",
    },
    {
      "icon": "images/msg.png",
      "text": "User 1 has messaged you",
    },
    {
      "icon": "images/msg.png",
      "text": "User 1 has messaged you",
    },
    {
      "icon": "images/msg.png",
      "text": "User 1 has messaged you",
    },
    {
      "icon": "images/msg.png",
      "text":
          "User 1 has messaged you user 1 has messaged you user 1 has messaged you"
    },
    {
      "icon": "images/msg.png",
      "text":
          "User 1 has messaged you user 1 has messaged you user 1 has messaged you"
    },
    {
      "icon": "images/msg.png",
      "text":
          "User 1 has messaged you user 1 has messaged you user 1 has messaged you"
    },
    {
      "icon": "images/msg.png",
      "text":
          "User 1 has messaged you user 1 has messaged you user 1 has messaged you"
    },
    {
      "icon": "images/msg.png",
      "text":
          "User 1 has messaged you user 1 has messaged you user 1 has messaged you"
    },
    {
      "icon": "images/msg.png",
      "text":
          "User 1 has messaged you user 1 has messaged you user 1 has messaged you"
    },
    {
      "icon": "images/msg.png",
      "text":
          "User 1 has messaged you user 1 has messaged you user 1 has messaged you"
    },
    {
      "icon": "images/msg.png",
      "text":
          "User 1 has messaged you user 1 has messaged you user 1 has messaged you"
    },
    {
      "icon": "images/msg.png",
      "text":
          "User 1 has messaged you user 1 has messaged you user 1 has messaged you"
    },
    {
      "icon": "images/msg.png",
      "text":
          "User 1 has messaged you user 1 has messaged you user 1 has messaged you"
    },
    {
      "icon": "images/msg.png",
      "text":
          "User 1 has messaged you user 1 has messaged you user 1 has messaged you"
    },
    {
      "icon": "images/msg.png",
      "text":
          "User 1 has messaged you user 1 has messaged you user 1 has messaged you"
    },
    {
      "icon": "images/msg.png",
      "text":
          "User 1 has messaged you user 1 has messaged you user 1 has messaged you"
    },
    {
      "icon": "images/msg.png",
      "text":
          "User 1 has messaged you user 1 has messaged you user 1 has messaged you"
    },
    {
      "icon": "images/msg.png",
      "text":
          "User 1 has messaged you user 1 has messaged you user 1 has messaged you"
    },
    {
      "icon": "images/msg.png",
      "text":
          "User 1 has messaged you user 1 has messaged you user 1 has messaged you"
    },
    {
      "icon": "images/msg.png",
      "text":
          "User 1 has messaged you user 1 has messaged you user 1 has messaged you"
    },
    {
      "icon": "images/msg.png",
      "text":
          "User 1 has messaged you user 1 has messaged you user 1 has messaged you"
    },
    {
      "icon": "images/msg.png",
      "text":
          "User 1 has messaged you user 1 has messaged you user 1 has messaged you"
    },
    {
      "icon": "images/msg.png",
      "text":
          "User 1 has messaged you user 1 has messaged you user 1 has messaged you"
    },
    {
      "icon": "images/msg.png",
      "text":
          "User 1 has messaged you user 1 has messaged you user 1 has messaged you"
    }
  ];

  await Future.delayed(Duration(seconds: 2));
  // final futureData = await Future.value(newData);
  // return response;
  // return newData;
  return response;
}

class ZawjNotification extends StatelessWidget {
  final finalData = fetchResponse();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchResponse(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.none ||
            snapshot.connectionState == ConnectionState.waiting) {
          return Text('loading.......');
        } else if (snapshot.hasError) {
          return Text('Error ${snapshot.error}');
        } else {
          return createListView(context, snapshot);
        }
      },
    );
  }

  createListView(context, snapshot) {
    var data = snapshot.data;
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return SafeArea(
          child: Container(
            child: ListTile(
              leading: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('images/umarAgra1.jpg'),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Colors.black,
                    width: 0.3,
                  ),
                ),
              ),
              title: Text(data[index]['text']),
              contentPadding: EdgeInsets.only(
                top: 15.0,
                left: 20.0,
                right: 20.0,
              ),
              dense: true,
              trailing: Image(
                image: AssetImage(data[index]['icon']),
                fit: BoxFit.cover,
                height: 40.0,
                width: 40.0,
              ),
              subtitle: Text('6d'),
            ),
            color: Colors.white,
          ),
          // minimum: EdgeInsets.only(top: 15.0),
        );
      },
    );
  }
}

// return ListView.builder(
//   itemCount: _data.length,
//   padding: EdgeInsets.all(10.0),
//   itemExtent: null,
//   itemBuilder: (BuildContext context, int i) {
//     return Text(_data[i]);
//   },
// );
