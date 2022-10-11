import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web/screens/calltoAction/calltoactionmobile.dart';
import 'package:web/screens/calltoAction/calltotabletdesktop.dart';

class CallToAction extends StatelessWidget {
  final String title;
  const CallToAction(this.title);

  @override
  Widget build(BuildContext context) {
  return ScreenTypeLayout(mobile: CallToActionMobile(this.title),
  desktop: CallToTabletDesktop(this.title),);
  }
}
