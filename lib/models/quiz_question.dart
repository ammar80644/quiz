class QuizQuestions {
  final String text;
  final List<String> answers;
  List<String> getShuffle(){
   final sufflelist= List.of(answers);
   sufflelist.shuffle();
   return sufflelist;
  }

   const QuizQuestions({
    required this.text,
    required this.answers,
  });
}
