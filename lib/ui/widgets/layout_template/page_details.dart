import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:praugas_site/ui/styles/text_styles.dart';
import 'package:praugas_site/ui/widgets/navigation_bar/navigation_title/navigation_titile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PageDetails extends StatelessWidget {
  final String title;
  final String details;
  const PageDetails({Key key, this.title, this.details}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? TextAlign.left
                : TextAlign.center;

        return ListView(
          children: [
            Container(
              alignment: Alignment.topLeft,
              constraints: BoxConstraints(maxWidth: 720),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  NavigationTitle(title: title),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(100, 10, 100, 10),
                    child: AutoSizeText(
                      details,
                      style: descriptionTextStyle(
                          sizingInformation.deviceScreenType),
                      textAlign: textAlignment,
                    ),
                  )
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
