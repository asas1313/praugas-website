import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praugas_site/services/messages.dart';
import 'package:praugas_site/ui/styles/app_colors.dart';
import 'package:praugas_site/ui/widgets/layout_template/layout_template.dart';

import 'locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: Get.deviceLocale,
      fallbackLocale: Locale('en'),
      title: 'Praugas',
      theme: ThemeData(
          scaffoldBackgroundColor: scaffoldBackgroundColor,
          textTheme: Theme.of(context)
              .textTheme
              .apply(fontFamily: 'Calibri', bodyColor: bodyColor)),
      home: LayoutTemplate(),
    );
  }
}
