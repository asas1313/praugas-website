import 'package:flutter/material.dart';
import 'package:praugas_site/services/routing/route_names.dart';
import 'package:praugas_site/ui/styles/common_names.dart';
import 'package:praugas_site/ui/styles/images.dart';

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
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                NavBarItem(servicesCaption, ServicesRoute),
                SizedBox(
                  width: 20,
                ),
                NavBarItem(aboutCaption, AboutRoute),
                SizedBox(
                  width: 20,
                ),
                NavBarItem(contactCaption, ContactRoute),
                SizedBox(
                  width: 50,
                ),
              ],
            ),
          ],
        ));
  }
}
