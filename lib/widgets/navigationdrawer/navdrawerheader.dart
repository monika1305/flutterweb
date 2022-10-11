import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/constant/app_colors.dart';

class NavDrawerHeader extends StatelessWidget {
  const NavDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color:  primaryColor,
      alignment: Alignment.center,
      child: Column(
        children: [
          Text('SKILL UP NOW',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
          ),
              Text('TAB HERE',
          style: TextStyle(
            color: Colors.white,
          ),
          ),

        ],
      ),
    );
  }
}
