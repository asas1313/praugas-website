import 'package:flutter/material.dart';
import 'package:praugas_site/ui/styles/text_styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PageDetails extends StatelessWidget {
  final String caption;
  final String details;
  const PageDetails({this.caption, this.details});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? TextAlign.left
                : TextAlign.center;

        return Container(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                caption,
                style: titleTextStyle(sizingInformation.deviceScreenType),
                textAlign: textAlignment,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                details,
                style: descriptionTextStyle(sizingInformation.deviceScreenType),
                textAlign: textAlignment,
              )
            ],
          ),
        );
      },
    );
  }
}
