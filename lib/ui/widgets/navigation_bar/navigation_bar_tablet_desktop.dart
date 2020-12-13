import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praugas_site/services/routing/route_names.dart';
import 'package:praugas_site/ui/styles/images.dart';
import 'package:praugas_site/ui/widgets/navigation_bar/navbar_language_item.dart';

import 'navbar_item.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints.tight(Size.fromHeight(200)),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(front_img_path), fit: BoxFit.cover)),
        height: 200,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              NavBarLanguageItem("en"),
              SizedBox(
                width: 5,
              ),
              NavBarLanguageItem("fr"),
              SizedBox(
                width: 5,
              ),
              NavBarLanguageItem("lt"),
              SizedBox(
                width: 50,
              )
            ]),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                NavBarItem('titleServices'.tr, ServicesRoute),
                SizedBox(
                  width: 20,
                ),
                NavBarItem('titleAboutMe'.tr, AboutRoute),
                SizedBox(
                  width: 20,
                ),
                NavBarItem('titleContact'.tr, ContactRoute),
                SizedBox(
                  width: 50,
                ),
              ],
            ),
          ],
        ));
  }
}
