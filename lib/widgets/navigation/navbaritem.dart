
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/locator.dart';
import 'package:web/service/navigation_service.dart';

class NavigationBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavigationBarItem(this.title,this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Scaffold.of(context).closeDrawer();
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child:  Text(title,
          style: TextStyle(
            fontSize: 18,
          ),)
    );
  }
}
