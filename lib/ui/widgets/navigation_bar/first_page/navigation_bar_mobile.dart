import 'package:flutter/material.dart';
import 'package:praugas_site/ui/styles/images.dart';
import 'package:praugas_site/ui/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tight(Size.fromHeight(120)),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(front_img_path), fit: BoxFit.cover)),
      height: 120,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.menu),
            color: Colors.blue,
            onPressed: () {
              return Scaffold.of(context).openDrawer();
            },
          ),
          Row(children: [
            NavBarLogo(),
            SizedBox(width: 15),
          ])
        ],
      ),
    );
  }
}
