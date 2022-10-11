import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web/locator.dart';
import 'package:web/screens/home/homecontentdesktop.dart';
import 'package:web/screens/home/homecontentmobile.dart';
import 'package:web/service/navigation_service.dart';

import '../../route/route_names.dart';
import '../../route/router.dart';
import '../../widgets/centerview/centeredview.dart';
import '../../widgets/navigation/navigationbar.dart';
import '../../widgets/navigationdrawer/navigationdrawer.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ResponsiveBuilder(
      builder: (context, sizzlinginformation) => Scaffold(
        drawer: sizzlinginformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: [
              NavigationBars(),
              Expanded(
                child:Navigator(
                  key: locator<NavigationService>().navigatorkey,
                  onGenerateRoute: generateRoute,
                  initialRoute: HomeRoute,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
