import 'package:flutter/material.dart';
import 'package:dicee/data/questi.dart';
import 'summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    required this.chosenanswers,
    required this.onRestart,
    super.key,
  });

  final List<String> chosenanswers;
  final VoidCallback onRestart;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenanswers.length; i++) {
      summary.add({
        'question-index': i,
        'question': questions[i].text,
        'correct-answer': questions[i].answers[0],
        'user-answer': chosenanswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final totalQuestions = questions.length;
    final summaryData = getSummary();
    final correctAnswers = summaryData.where((data) {
      return data['user-answer'] == data['correct-answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You got $correctAnswers out of $totalQuestions ',
              style: GoogleFonts.lato(
                color: Color.fromARGB(255, 179, 82, 118),
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 30),
            QuestionSummary(summaryData: summaryData),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: onRestart,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color(0xFF762945),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: SizedBox(width: 150,
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                
                  children: [Icon(Icons.home),
                  SizedBox(width: 1,),
                    const Text('Home Screen'),
                   
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
