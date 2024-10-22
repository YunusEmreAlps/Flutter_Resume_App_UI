// Libraries
import 'info.dart';
import 'package:flutter/material.dart';
import 'package:my_resume/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:my_resume/constant/constant.dart';
import 'package:my_resume/app_localizations.dart';
import 'package:my_resume/widgets/social_card.dart';
import 'package:my_resume/widgets/recent_widget.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';


// Structure
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final GlobalKey<ExpansionTileCardState> cardAboutMe = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardSkills = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardHobbies = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Info(
            image: "assets/images/Me.jpg",
            name: "Yunus Emre Alpu",
            jobName: "Computer Engineer",
          ),
          SizedBox(height: SizeConfig.defaultSize * 2), // 20

          // Social Card
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialCard(
                icon: "assets/icons/github3.svg",
                color: Color(0xFFF5F6F9),
                press: () => launch("https://github.com/YunusEmreAlps"),
              ),
              SocialCard(
                icon: "assets/icons/linkedin.svg",
                color: Color(0xFFF5F6F9),
                press: () => launch(
                    "https://www.linkedin.com/in/yunus-emre-alpu-5b1496151"),
              ),
              SocialCard(
                icon: "assets/icons/network.svg",
                color: Color(0xFFF5F6F9),
                press: () => launch(
                    "https://yunusemrealpu.netlify.app/"),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.defaultSize * 2), // 20

          // About Me
          Theme(
            data: ThemeData(
              backgroundColor: Colors.white,
            ),
            child: ExpansionTile(
              key: cardAboutMe,
              leading: SvgPicture.asset("assets/icons/question.svg"),
              title: Text(
                AppLocalizations.getString("About Me"),
                style: TextStyle(
                  fontFamily: 'NexaLight',
                  fontSize: SizeConfig.defaultSize * 1.8, // 18
                  color: kTextColor,
                ),
              ),
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Text(
                      AppLocalizations.getString("Hi, I'm Yunus Emre. I'm 21 years old from Konya. I'm a senior computer engineering student at Necmettin Erbakan University. I have learned the importance of applying classical strategies to modern-day projects. Software engineering is a never-ending puzzle that I am passionate about solving. This passion carried me through my education at Purdue. First, I learned C then C++. I studied new languages, algorithms, compilers, higher mathematics, all with pretty much the same fascination. \n\nI want to improve myself because I only ever want to be judged on the strength of my abilities and paid for it. And I want to be able to explain myself clearly, and have people receptive to my ideas. I'm here to learn what I wonder and to share what I know. \n\nSo, now, in industry, this passion remains with me. There’s certainly yet more to learn, yet more problems, and yet more to build."),
                      style: TextStyle(fontFamily: 'CaviarDreams', height: 1.5,),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Tech Skills
          Theme(
            data: ThemeData(
              backgroundColor: Colors.white,
            ),
            child: ExpansionTile(
              key: cardSkills,
              leading: SvgPicture.asset("assets/icons/settings.svg"),
              title: Text(
                 AppLocalizations.getString("Skills"),
                style: TextStyle(
                  fontFamily: 'NexaLight',
                  fontSize: SizeConfig.defaultSize * 1.8, // 18
                  color: kTextColor,
                ),
              ),
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // Skills [0, 1]
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Flexible(
                              child: RecentWidget(),
                            ),
                            
                          ],
                        ),
                        SizedBox(
                          height: (SizeConfig.screenWidth) / 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Hobbies
          Theme(
            data: ThemeData(
              backgroundColor: Colors.white,
            ),
            child: ExpansionTile(
              key: cardHobbies,
              leading: SvgPicture.asset("assets/icons/game_icon.svg"),
              title: Text(
                AppLocalizations.getString("Hobbies"),
                style: TextStyle(
                  fontFamily: 'NexaLight',
                  fontSize: SizeConfig.defaultSize * 1.8, // 18
                  color: kTextColor,
                ),
              ),
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Text(
                      AppLocalizations.getString("Apart from being a developer, I enjoy most of my time being outdoors. I enjoy play guitar, learning new languages, meet new people.\n\nWhen forced indoors, I follow a number of sci-fi and fantasy genre movies and television shows, I spend a large amount of my free time exploring the latest technology advancements in the Programming world."),
                      style: TextStyle(fontFamily: 'CaviarDreams', height: 1.5),
                    ),
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
