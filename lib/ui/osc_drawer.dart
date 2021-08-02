import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osc/utils/osc_colors.dart';
import 'package:flutter_osc/generated/l10n.dart';

class OSCDrawer extends StatelessWidget {
  final itemIcons = const <String>[
    'images/left_menu/ic_fabu.png',
    'images/left_menu/ic_xiao_hei_wu.png',
    'images/left_menu/ic_about.png',
    'images/left_menu/ic_settings.png'
  ];

  final itemTitles = [S.current.publish_tweet, S.current.tweet_xiao_hei_wu, S.current.about, S.current.settings];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Container(
            color: Colors.white,
            constraints: BoxConstraints.expand(width: 300),
            child: ListView.separated(
                padding: EdgeInsets.zero,
                cacheExtent: 60,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return getHeader();
                  } else {
                    return getItem(index - 1);
                  }
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 1,
                    color: OSCColors.gray,
                  );
                },
                itemCount: 5)));
  }

  Widget getHeader() {
    return Image.asset('images/cover_img.jpg');
  }

  Widget getItem(int index) {
    return InkWell(
      splashColor: Colors.black12,
      onTap: () {
        _tapItem(index);
      },
      child: Container(
        height: 60,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              itemIcons[index],
              width: 30,
              height: 30,
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                itemTitles[index],
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            )),
            Image.asset(
              'images/ic_arrow_right.png',
              width: 20,
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  void _tapItem(int index) {}
}
