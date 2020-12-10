import 'package:flutter/material.dart';
import 'package:praugas_site/ui/styles/app_colors.dart';

class CallToActionTablet extends StatelessWidget {
  final String title;
  const CallToActionTablet(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
      ),
      decoration: BoxDecoration(
          color: bodyColor, borderRadius: BorderRadius.circular(5)),
    );
  }
}
