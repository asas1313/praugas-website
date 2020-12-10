import 'package:flutter/material.dart';
import 'package:praugas_site/locator.dart';
import 'package:praugas_site/services/navigation_service.dart';
import 'package:praugas_site/services/routing/route_names.dart';
import 'package:praugas_site/ui/styles/logo.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: InkWell(
      onTap: () {
        locator<NavigationService>().navigateTo(HomeRoute);
      },
      child: Container(
        child: ClipRRect(
          child: Image.asset(
            logo_path,
            width: navbar_logo_width,
          ),
        ),
      ),
    ));
  }
}
