import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web/screens/coursedetails/coursedetails.dart';
import 'package:web/screens/home/homecontentdesktop.dart';
import 'package:web/screens/home/homecontentmobile.dart';
import 'package:web/widgets/centerview/centeredview.dart';
import 'package:web/widgets/navigation/navigationbar.dart';
import 'package:web/widgets/navigationdrawer/navigationdrawer.dart';

import '../calltoAction/calltoaction.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeContentMobile(),
      desktop: HomeContentDesktop(),
    );
  }
}
