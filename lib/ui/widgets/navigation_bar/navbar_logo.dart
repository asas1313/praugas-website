import 'package:flutter/material.dart';
import 'package:praugas_site/locator.dart';
import 'package:praugas_site/services/navigation_service.dart';
import 'package:praugas_site/services/routing/route_names.dart';
import 'package:praugas_site/ui/styles/images.dart';

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
        child: Row(children: [
          ClipRRect(
            child: Image.asset(
              logo_path,
              height: navbar_logo_height,
            ),
          ),
          SizedBox(width: 20)
        ]),
      ),
    ));
  }
}
