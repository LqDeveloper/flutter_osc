import 'package:flutter/material.dart';
import 'package:flutter_osc/ui/discover/discover.dart';
import 'package:flutter_osc/ui/main_widget.dart';
import 'package:flutter_osc/ui/my/my.dart';
import 'package:flutter_osc/ui/news/news.dart';
import 'package:flutter_osc/ui/tweet/tweet.dart';
import 'package:flutter_osc/utils/logger_utils.dart';

class RouterUtils {
  static RouterUtils _intance = RouterUtils._internal();

  static RouterUtils get instance => _intance;

  RouterUtils._internal() {
    LoggerUtils.d("初始化路由");
  }

  factory RouterUtils() {
    return _intance;
  }

  final initialRoute = RouterUrl.main.name;
  final routes = <String, WidgetBuilder>{
    RouterUrl.main.name: (context) => MainWidget(),
    RouterUrl.news.name: (context) => News(),
    RouterUrl.tweet.name: (context) => Tweet(),
    RouterUrl.discover.name: (context) => Discover(),
    RouterUrl.my.name: (context) => My(),
  };

  static Future<T?> push<T extends Object?>(BuildContext context, RouterUrl url,
      {Object? arguments}) {
    return Navigator.pushNamed(context, url.name, arguments: arguments);
  }

  static void pop(BuildContext context) {
    Navigator.pop(context);
  }
}

enum RouterUrl {
  main,
  news,
  tweet,
  discover,
  my,
}

extension RouterString on RouterUrl {
  String get name {
    switch (this) {
      case RouterUrl.main:
        return 'main';
      case RouterUrl.news:
        return 'news';
      case RouterUrl.tweet:
        return 'tweet';
      case RouterUrl.discover:
        return 'discover';
      case RouterUrl.my:
        return 'my';
    }
  }
}
