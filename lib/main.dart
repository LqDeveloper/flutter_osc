import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_osc/bean/theme_data_bean.dart';
import 'package:flutter_osc/generated/l10n.dart';
import 'package:flutter_osc/utils/router_utils.dart';
import 'package:provider/provider.dart';

import 'utils/launch_app.dart';

void main() {
  LaunchApp.launch(() {
    runApp(MultiProvider(
      child: MyApp(),
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => ThemeDataBean(),
          child: MyApp(),
        )
      ],
    ));
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: const <Locale>[
        Locale('zh', 'CN'),
      ],
      localizationsDelegates: [
        S.delegate,
        //本地化代理
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      theme:
          context.select<ThemeDataBean,ThemeData>((value) => value.themeData),
      initialRoute: RouterUtils.instance.initialRoute,
      routes: RouterUtils.instance.routes,
    );
  }
}
