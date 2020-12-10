import 'package:flutter/material.dart';
import 'package:praugas_site/services/routing/route_names.dart';
import 'package:praugas_site/ui/styles/common_names.dart';

import 'navbar_item.dart';
import 'navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavBarLogo(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                NavBarItem(aboutCaption, AboutRoute),
                SizedBox(
                  width: 21,
                ),
                NavBarItem(whatDoWeDoCaption, WhatWeDoRoute),
                SizedBox(
                  width: 21,
                ),
                NavBarItem(clientsCaption, ClientsRoute),
                SizedBox(
                  width: 21,
                ),
              ],
            )
          ],
        ));
  }
}
