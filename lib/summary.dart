import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({required this.summaryData, super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(50, 153, 102, 255), // Light purple background
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Question Index Number
                  CircleAvatar(backgroundColor:Color.fromARGB(255, 124, 37, 69) ,
                    child: Text(
                      ((data['question-index'] as int) + 1).toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Question Text
                        Text(
                          data['question'] as String,
                          style: const TextStyle(
                            color: Color(0xFF762945), // Light purple
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        // Correct Answer Text
                        Text(
                          'Correct Answer: ${data['correct-answer'] as String}',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 20, 109, 20), // Light green for correct answers
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 5),
                        // User Selected Answer Text
                        Text(
                          'Your Answer: ${data['user-answer'] as String}',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 54, 25, 113), // Light purple
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
