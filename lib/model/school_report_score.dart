import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final testName =[
  "1年1学期"
]

class Score {
  Score({
    required this.testName,
    required this.englishScore,
    required this.mathScore,
    required this.languageScore,
    required this.societyScore,
    required this.scienceScore,
    required this.musicScore,
    required this.artScore,
    required this.peScore,
    required this.technicalScore,
  });

  final String testName;
  final double englishScore;
  final double mathScore;
  final double languageScore;
  final double societyScore;
  final double scienceScore;
  final double musicScore;
  final double artScore;
  final double peScore;
  final double technicalScore;
}
