import 'package:flutter/material.dart';
import 'package:school_report_score_app/widget/school_report_scores.dart';
import 'package:school_report_score_app/model/school_report_score.dart';

class NewSchoolReportScore extends StatefulWidget {
  const NewSchoolReportScore({super.key, required this.onAddScore});

  final void Function(Score score) onAddScore;

  @override
  State<NewSchoolReportScore> createState() => _NewSchoolReportScoresState();
}

class _NewSchoolReportScoresState extends State<NewSchoolReportScore> {
  final _testNameController = TextEditingController();
  DateTime? _selectedDate;

  void _presentDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    final pickedDate = await showDatePicker(
        context: context,
        firstDate: firstDate,
        lastDate: now,
        initialDate: now);
    setState(() {
      _selectedDate = pickedDate;
    });
  }

  void _submitSchoolReportScore() {
    if (_testNameController.text.trim() == null) {
      showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
                title: const Text("不正入力"),
                content: const Text("入力が間違っています"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(ctx);
                    },
                    child: const Text('OK'),
                  )
                ],
              ));
    }
    widget.onAddScore(Score(
        testName: _testNameController.text,
        englishScore: 3,
        mathScore: 4,
        languageScore: 4,
        societyScore: 4,
        scienceScore: 3,
        musicScore: 2,
        artScore: 2,
        peScore: 4,
        technicalScore: 3));
    Navigator.pop(context);
  }

  @override
  void dispose() {
    _testNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [],
          ),
          TextField(
            controller: _testNameController,
            maxLength: 100,
            decoration: const InputDecoration(
              label: Text("テスト名"),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('キャンセル'),
              ),
              ElevatedButton(
                onPressed: _submitSchoolReportScore,
                child: const Text('成績を登録する'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
