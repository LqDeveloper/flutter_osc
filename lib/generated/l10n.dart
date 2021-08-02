// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `资讯`
  String get news {
    return Intl.message(
      '资讯',
      name: 'news',
      desc: '',
      args: [],
    );
  }

  /// `动弹`
  String get tweet {
    return Intl.message(
      '动弹',
      name: 'tweet',
      desc: '',
      args: [],
    );
  }

  /// `发现`
  String get discover {
    return Intl.message(
      '发现',
      name: 'discover',
      desc: '',
      args: [],
    );
  }

  /// `我的`
  String get my {
    return Intl.message(
      '我的',
      name: 'my',
      desc: '',
      args: [],
    );
  }

  /// `发布动弹`
  String get publish_tweet {
    return Intl.message(
      '发布动弹',
      name: 'publish_tweet',
      desc: '',
      args: [],
    );
  }

  /// `动弹小黑屋`
  String get tweet_xiao_hei_wu {
    return Intl.message(
      '动弹小黑屋',
      name: 'tweet_xiao_hei_wu',
      desc: '',
      args: [],
    );
  }

  /// `关于`
  String get about {
    return Intl.message(
      '关于',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `设置`
  String get settings {
    return Intl.message(
      '设置',
      name: 'settings',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
