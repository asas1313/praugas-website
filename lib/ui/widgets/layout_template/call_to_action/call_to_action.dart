import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praugas_site/ui/widgets/layout_template/call_to_action/call_to_action_mobile.dart';
import 'package:praugas_site/ui/widgets/layout_template/call_to_action/call_to_action_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CallToAction extends StatelessWidget {
  CallToAction();

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile('titleContact'.tr),
      tablet: CallToActionTablet('titleContact'.tr),
    );
  }
}
