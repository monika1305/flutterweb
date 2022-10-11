import 'package:flutter/cupertino.dart';
import 'package:web/screens/calltoAction/calltoaction.dart';
import 'package:web/screens/coursedetails/coursedetails.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CourseDetails(40,14),
        SizedBox(height: 50,),
        CallToAction('Join Course')
      ],
    );
  }
}
