import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/route/route_names.dart';
import 'package:web/widgets/navigationdrawer/draweritem.dart';
import 'package:web/widgets/navigationdrawer/navdrawerheader.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
          color: Colors.black12,
          blurRadius: 16,
        ),
        ],
      ),
      child: Column(
        children: [
          NavDrawerHeader(),
          DrawerItem('Home', Icons.home,HomeRoute),
          DrawerItem('Episodes', Icons.videocam,EpisodesRoute),
          DrawerItem('About', Icons.help, AboutRoute),
        ],
      ),
    );
  }
}
