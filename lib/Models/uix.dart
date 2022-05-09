class UIXQuestion {
  final int id, answer;
  final String question;
  final List<String> options;

  UIXQuestion({
    required this.id,
    required this.question,
    required this.answer,
    required this.options,
  });
}

const List uIXQuestions = [
  {
    "question": "Which of these elements is present in user experience design?",
    'answers': [
      {'text': 'Interaction design', 'score': 0},
      {'text': 'Visual design', 'score': 0},
      {'text': 'Information architecture', 'score': 10},
      {'text': 'Financial planning', 'score': 0},
    ],
  },
  {
    "question": "What does the haptic feedback system of interaction design reduce? ",
    'answers': [
      {'text': 'Confusion', 'score': 0},
      {'text': 'Congestion', 'score': 0},
      {'text': 'Conviction', 'score': 10},
      {'text': 'Coincidence', 'score': 0},
    ],
  },
  {
    "question": "Which of the following is not a type of user interface?",
    'answers': [
      {'text': 'Command language based', 'score': 0},
      {'text': 'Menu based', 'score': 0},
      {'text': 'Efficiency based', 'score': 10},
      {'text': 'Direct manipulation based', 'score': 0},
    ],
  },
  {
    "question": "Which of the following is not GUI components?",
    'answers': [
      {'text': 'Window', 'score': 0},
      {'text': 'Icon', 'score': 0},
      {'text': 'Status bar', 'score': 10},
      {'text': 'Dialog box', 'score': 0},
    ],
  },
  {
    "question": "Which of the following is not a button?",
    'answers': [
      {'text': 'Minimize', 'score': 0},
      {'text': 'Close', 'score': 0},
      {'text': 'Taskbar', 'score': 10},
      {'text': 'Maximize', 'score': 0},
    ],
  },
];
