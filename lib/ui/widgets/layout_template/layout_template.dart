import 'package:flutter/material.dart';
import 'package:praugas_site/locator.dart';
import 'package:praugas_site/services/navigation_service.dart';
import 'package:praugas_site/services/routing/route_names.dart';
import 'package:praugas_site/services/routing/routs.dart';
import 'package:praugas_site/ui/widgets/navigation_bar/navigation_bar.dart';
import 'package:praugas_site/ui/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
              drawer:
                  sizingInformation.deviceScreenType == DeviceScreenType.mobile
                      ? NavigationDrawer()
                      : null,
              body: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NavigationBar(),
                    Expanded(
                      child: Navigator(
                        key: locator<NavigationService>().navigatorKey,
                        onGenerateRoute: generateRoute,
                        initialRoute: HomeRoute,
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
