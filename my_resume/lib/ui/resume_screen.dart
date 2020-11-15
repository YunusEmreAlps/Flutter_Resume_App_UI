// Libraries
import 'package:flutter/material.dart';
import 'package:my_resume/size_config.dart';
import 'package:url_launcher/url_launcher.dart';
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
           _launchURL('yunus192alpu@gmail.com', 'Flutter Email Test', 'Sending From Resume App');
        },
        child: Icon(Icons.message, color: Colors.white,),
        backgroundColor: Colors.transparent,
      ),
    );
  }

  // Sending Mail Function
  _launchURL(String toMailId, String subject, String body) async {
    var url = 'mailto:$toMailId?subject=$subject&body=$body';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
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
