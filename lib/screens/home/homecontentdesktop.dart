import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/centerview/centeredview.dart';
import '../../widgets/navigation/navigationbar.dart';
import '../calltoAction/calltoaction.dart';
import '../coursedetails/coursedetails.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [
             Expanded(child: Row(
              children: [
                CourseDetails(80,21),
                Expanded(
                  child: Center(
                    child: CallToAction('Join Course'),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
