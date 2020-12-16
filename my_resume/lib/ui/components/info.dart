// Libraries
import 'package:flutter/material.dart';
import 'package:my_resume/size_config.dart';
import 'package:my_resume/constant/constant.dart';
import 'package:my_resume/app_localizations.dart';

// User
class Info extends StatelessWidget {
  const Info({
    Key key,
    this.name,
    this.jobName,
    this.image,
  }) : super(key: key);
  final String name, jobName, image;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SizedBox(
      height: defaultSize * 30, // 300
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: CustomShape(),
            child: Container(
              height: defaultSize * 21, // 210
              decoration: BoxDecoration(
                gradient: kPrimaryGradientColor,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                // User Picture
                Container(
                  margin: EdgeInsets.only(bottom: defaultSize * 1.6), // 16
                  height: defaultSize * 20, // 200
                  width: defaultSize * 20,  // 200
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: defaultSize * 0.8, // 8
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(image),
                    ),
                  ),
                ),
                // User Name
                Text(
                  name,
                  style: TextStyle(
                    fontFamily: 'NexaLight',
                    fontSize: defaultSize * 2.8, // 28
                    color: kTextColor,
                  ),
                ),
                SizedBox(height: defaultSize / 5), // 2
                // User Email
                Text(
                  AppLocalizations.getString(jobName),
                  style: TextStyle(
                    fontFamily: 'NexaLight',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF8492A2),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width / 2, height, width, height - 100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
