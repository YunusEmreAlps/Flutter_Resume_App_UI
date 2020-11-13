// Libraries
import 'package:flutter/material.dart';
import 'package:my_resume/size_config.dart';
import 'package:my_resume/constant/constant.dart';
import 'package:my_resume/ui/components/body.dart';

// Structure
class ResumeScreen extends StatefulWidget {
  @override
  _ResumeScreenState createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  // AppBar
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: kPrimaryGradientColor,
        ),
      ),
      leading: SizedBox(),
      centerTitle: true,
      title: Text(
        "PROFILE",
        style: TextStyle(
          fontFamily: 'NexaLight',
          letterSpacing: 2,
        ),
      ),
    );
  }
}
