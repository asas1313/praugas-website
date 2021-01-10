import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praugas_site/ui/widgets/layout_template/page_details.dart';

import 'route_names.dart';

Route<dynamic> generateRoute(
  RouteSettings settings,
) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(
          PageDetails(title: 'titleMain'.tr, details: 'contentMain'.tr));
    case AboutRoute:
      return _getPageRoute(
          PageDetails(title: 'titleAboutMe'.tr, details: 'contentAboutme'.tr));
    case ServicesRoute:
      return _getPageRoute(PageDetails(
          title: 'titleServices'.tr, details: 'contentServices'.tr));
    case ContactRoute:
      return _getPageRoute(
          PageDetails(title: 'titleContact'.tr, details: 'contentContact'.tr));
    default:
      return _getPageRoute(
          PageDetails(title: 'titleMain'.tr, details: 'contentMain'.tr));
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(
    child: child,
  );
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({this.child})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
