import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen extends StatefulWidget {
  const Screen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz.png',
            width: 200,
            color: const Color(0xFF762945),
          ),
          const SizedBox(height: 80),
          Text(
            'Test Your Knowledge!',
            style: GoogleFonts.raleway(
              color: const Color(0xFF762945),
              fontSize: 25,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: widget.startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color(0xFF762945),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            icon: const Icon(Icons.play_arrow),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
