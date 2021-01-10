import 'package:flutter/material.dart';
import 'package:praugas_site/ui/styles/app_colors.dart';

class NavigationDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: primaryColor,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Praugas',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
          ),
          Text(
            '',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
