import 'package:flutter/material.dart';
import 'package:school_report_score_app/model/school_report_score.dart';
import 'package:school_report_score_app/screen/setting_screen.dart';

class SchoolReportScores extends StatefulWidget {
  const SchoolReportScores({super.key});

  @override
  State<SchoolReportScores> createState() => _SchoolReportScoresState();
}

class _SchoolReportScoresState extends State<SchoolReportScores> {
  final _registeredScores = [
    Score(
        testName: "1年中間",
        englishScore: 5,
        mathScore: 3,
        languageScore: 4,
        societyScore: 2,
        scienceScore: 4),
    Score(
        testName: "1年期末",
        englishScore: 5,
        mathScore: 3,
        languageScore: 4,
        societyScore: 2,
        scienceScore: 4)
  ];

  final List<String> _subjectName = ["テスト名", "英語", "数学", "国語", "理科", "社会"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("内申点管理アプリ"),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingScreen()));
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: ListView.builder(
        itemCount: _subjectName.length,
        itemBuilder: (context, index) {
          return Text(
            _subjectName[index],
          );
        },
      ),
    );
  }
}
