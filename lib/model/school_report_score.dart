import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

class Score {
  Score(
      {required this.testName,
      required this.englishScore,
      required this.mathScore,
      required this.languageScore,
      required this.societyScore,
      required this.scienceScore});

  final String testName;
  final double englishScore;
  final double mathScore;
  final double languageScore;
  final double societyScore;
  final double scienceScore;
}
