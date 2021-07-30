import 'package:flutter/material.dart';
import 'package:flutter_osc/ui/osc_drawer.dart';

import 'package:flutter_osc/utils/osc_colors.dart';
import 'news/news.dart';
import 'tweet/tweet.dart';
import 'discover/discover.dart';
import 'my/my.dart';

class MainWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainState();
  }
}

class _MainState extends State<MainWidget> {
  final _tabTitles = const <String>['资讯', '动弹', '发现', '我的'];
  int _currentIndex = 0;

  final _normalImages = const <String>[
    'images/ic_nav_news_normal.png',
    'images/ic_nav_tweet_normal.png',
    'images/ic_nav_discover_normal.png',
    'images/ic_nav_my_normal.png'
  ];

  final _activeImages = const <String>[
    'images/ic_nav_news_actived.png',
    'images/ic_nav_tweet_actived.png',
    'images/ic_nav_discover_actived.png',
    'images/ic_nav_my_actived.png'
  ];

  final _tabWidgets = [News(), Tweet(), Discover(), My()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _tabTitles[_currentIndex],
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: _tabWidgets[_currentIndex],
      drawer: OSCDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        selectedItemColor: OSCColors.green,
        unselectedItemColor: OSCColors.gray,
        items: [
          BottomNavigationBarItem(icon: getImage(0), label: _tabTitles[0]),
          BottomNavigationBarItem(icon: getImage(1), label: _tabTitles[1]),
          BottomNavigationBarItem(icon: getImage(2), label: _tabTitles[2]),
          BottomNavigationBarItem(icon: getImage(3), label: _tabTitles[3]),
        ],
      ),
    );
  }

  Image getImage(int index) {
    if (_currentIndex == index) {
      return Image.asset(
        _activeImages[index],
        width: 20,
        height: 20,
      );
    } else {
      return Image.asset(
        _normalImages[index],
        width: 20,
        height: 20,
      );
    }
  }
}
