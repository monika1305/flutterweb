import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/widgets/navigation/navbar_logo.dart';

class NavBarMobile extends StatelessWidget {
  const NavBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          IconButton(
              icon: Icon(Icons.menu),
            onPressed: (){
              Scaffold.of(context).openDrawer();
            },
          ),
          NavBarLogo(),

        ],
      ),
    );
  }
}
