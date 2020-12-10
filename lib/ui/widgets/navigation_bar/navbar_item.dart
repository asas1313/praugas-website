import 'package:flutter/material.dart';
import 'package:praugas_site/locator.dart';
import 'package:praugas_site/services/navigation_service.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          // SERVICES SHOULD ONLY BE USED FROM A VIEW MODEL
          locator<NavigationService>().navigateTo(navigationPath);
        },
        child: Text(
          title,
          style: TextStyle(fontSize: 18),
        ));
  }
}
