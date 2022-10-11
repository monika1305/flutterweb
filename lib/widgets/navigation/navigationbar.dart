import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web/widgets/navigation/navbar_tablet_desktop.dart';

import 'navbarMobile.dart';
import 'navbar_logo.dart';
import 'navbaritem.dart';

class NavigationBars extends StatelessWidget {
  const NavigationBars() : super();

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavBarMobile(),
      desktop: NavBarTabletDesktop(),
    );
  }
}
