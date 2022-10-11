import 'package:flutter/cupertino.dart';

class CourseDetails extends StatelessWidget {
  final double fontSizeHeader;
  final double fontSizebody;
  const CourseDetails( this.fontSizeHeader, this.fontSizebody);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text('Flutter Web \n The Basics',
            style: TextStyle(
              fontSize: fontSizeHeader,
                fontWeight: FontWeight.w800,
            height: 0.9,
            ),
          ),
          SizedBox(height: fontSizebody,),
          Text('In this course we will go over the basics of using Flutter Web for website development. Topics will include Responsive Layout, Deploying, Font Changes, Hover Functionality, Modals and more.',
          style:  TextStyle(
            fontSize: 21,
            height: 1.7,
          ),),

        ],
      ),
    );
  }
}
