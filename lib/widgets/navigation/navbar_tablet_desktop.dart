import 'package:flutter/cupertino.dart';
import 'package:web/route/route_names.dart';

import 'navbar_logo.dart';
import 'navbaritem.dart';

class NavBarTabletDesktop extends StatelessWidget {
  const NavBarTabletDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              NavigationBarItem('Home',HomeRoute),
              SizedBox(width: 60,),
              NavigationBarItem('Episodes',EpisodesRoute),
              SizedBox(width: 60,),
              NavigationBarItem('About',AboutRoute),

            ],
          )
        ],
      ),
    );
  }
}
