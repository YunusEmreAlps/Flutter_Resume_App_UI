// Libraries
import 'dart:collection';

import 'package:flutter/material.dart';

// Programming Languages & Tools
class TechSkill {
  // Variables
  final int id;
  final Color color;
  final String title;
  final double skillLevel;

  // Constructor
  TechSkill({this.id, this.color, this.title, this.skillLevel});
}

List<TechSkill> skillList = [
  TechSkill(
    id: 0,
    color: Colors.greenAccent,
    title: "Bootstrap",
    skillLevel: 95,
  ),
  TechSkill(
    id: 1,
    color: Colors.greenAccent,
    title: "HTML5",
    skillLevel: 90,
  ),
  TechSkill(
    id: 2,
    color: Colors.greenAccent,
    title: "CSS3",
    skillLevel: 90,
  ),
  TechSkill(
    id: 3,
    color: Colors.greenAccent,
    title: "C",
    skillLevel: 90,
  ),
  TechSkill(
    id: 4,
    color: Colors.greenAccent,
    title: "PHP",
    skillLevel: 80,
  ),
  TechSkill(
    id: 5,
    color: Colors.greenAccent,
    title: "Database",
    skillLevel: 80,
  ),
  TechSkill(
    id: 6,
    color: Colors.greenAccent,
    title: "Java",
    skillLevel: 80,
  ),
  TechSkill(
    id: 7,
    color: Colors.greenAccent,
    title: "Python",
    skillLevel: 80,
  ),
  TechSkill(
    id: 8,
    color: Colors.greenAccent,
    title: "Dart",
    skillLevel: 80,
  ),
  TechSkill(
    id: 9,
    color: Color(0xFFFFC107),
    title: "Github",
    skillLevel: 75,
  ),
  TechSkill(
    id: 10,
    color: Color(0xFFFFC107),
    title: "C++",
    skillLevel: 60,
  ),
  TechSkill(
    id: 11,
    color: Color(0xFFFFC107),
    title: "Heroku",
    skillLevel: 60,
  ),
  TechSkill(
    id: 12,
    color: Color(0xFFFFC107),
    title: "JavaScript",
    skillLevel: 50,
  ),
  TechSkill(
    id: 13,
    color: Color(0xFFDC3545),
    title: "C#",
    skillLevel: 40,
  ),
  TechSkill(
    id: 14,
    color: Color(0xFFDC3545),
    title: "AWS",
    skillLevel: 20,
  ),
];




























