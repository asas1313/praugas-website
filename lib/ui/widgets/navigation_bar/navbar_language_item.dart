import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praugas_site/ui/styles/app_colors.dart';

class NavBarLanguageItem extends StatelessWidget {
  final String title;
  const NavBarLanguageItem(this.title);

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return primaryColor;
      }
      return bodyColor;
    }

    return TextButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith(getColor),
        ),
        onPressed: () {
          Get.updateLocale(Locale(title));
          Get.forceAppUpdate();
        },
        child: Text(
          title,
          style: TextStyle(fontSize: 18),
        ));
  }
}
