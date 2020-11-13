// Libraries
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:my_resume/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_resume/model/TechSkill.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

// Structure
class SkillBar extends StatelessWidget {
  final TechSkill skill;

  // Constructor
  const SkillBar({
    Key key,
    this.skill,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularStepProgressIndicator(
      totalSteps: 100,
      currentStep: skill.skillLevel.round(),
      stepSize: 10,
      selectedColor: skill.color,
      unselectedColor: Colors.grey[200],
      padding: math.pi / 100,
      width: 125,
      height: 125,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(skill.title),
            Text("\n"),
            Text("% "+(skill.skillLevel.floor()).toString()),
          ],
        ),
      ),
    );
  }
}
