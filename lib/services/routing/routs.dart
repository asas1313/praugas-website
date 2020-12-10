import 'package:flutter/material.dart';
import 'package:praugas_site/ui/styles/common_names.dart';
import 'package:praugas_site/ui/widgets/layout_template/page_view.dart';

import 'route_names.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(PageContentView('', ''));
    case AboutRoute:
      return _getPageRoute(PageContentView(aboutCaption, aboutDetail));
    case ClientsRoute:
      return _getPageRoute(PageContentView(clientsCaption, clientsDetail));
    case WhatWeDoRoute:
      return _getPageRoute(
          PageContentView(whatDoWeDoCaption, whatDoWeDoDetail));
    case ContactUsRoute:
      return _getPageRoute(PageContentView(contactUsCaption, contactUsDetail));
    default:
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
