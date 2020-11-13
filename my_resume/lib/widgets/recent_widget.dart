// Libraries
import 'package:flutter/material.dart';
import 'package:my_resume/model/TechSkill.dart';
import 'package:my_resume/widgets/skill_bar.dart';

class RecentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 16,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 125,
            child: ListView.builder(
              padding: EdgeInsets.all(0),
              shrinkWrap: true,
              itemCount: skillList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: SkillBar(
                    skill: skillList[index],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
