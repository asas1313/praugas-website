import 'package:flutter/material.dart';
import 'package:praugas_site/ui/styles/app_colors.dart';
import 'package:praugas_site/ui/widgets/layout_template/layout_template.dart';

import 'locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praugas',
      theme: ThemeData(
          scaffoldBackgroundColor: scaffoldBackgroundColor,
          textTheme: Theme.of(context)
              .textTheme
              .apply(fontFamily: 'Open Sans', bodyColor: bodyColor)),
      home: LayoutTemplate(),
    );
  }
}
