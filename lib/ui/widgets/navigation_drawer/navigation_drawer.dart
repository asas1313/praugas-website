import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praugas_site/services/routing/route_names.dart';
import 'package:praugas_site/ui/styles/app_colors.dart';
import 'package:praugas_site/ui/widgets/navigation_drawer/drawer_item.dart';
import 'package:praugas_site/ui/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: bodyColor,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: Column(
        children: [
          NavigationDrawerHeader(),
          DrawerItem('titleServices'.tr, ServicesRoute),
          DrawerItem('titleAboutMe'.tr, AboutRoute),
          DrawerItem('titleContact'.tr, ContactRoute),
        ],
      ),
    );
  }
}
