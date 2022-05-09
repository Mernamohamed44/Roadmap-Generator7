class AndroidQuestion {
  final int id, answer;
  final String question;
  final List<String> options;

  AndroidQuestion({
    required this.id,
    required this.question,
    required this.answer,
    required this.options,
  });
}

const List androidQuestions = [
  {
    "question": "In which of the following is toString() method defined?",
    'answers': [
      {'text': 'java.lang.Object', 'score': 0},
      {'text': 'Java.lang.String', 'score': 0},
      {'text': 'java.lang.util', 'score': 10},
      {'text': 'None of teh above', 'score': 0},
    ],
  },
  {
    "question": "Identify the modifier which cannot be used for constructor.",
    'answers': [
      {'text': 'Public', 'score': 0},
      {'text': 'Protected', 'score': 0},
      {'text': 'Private', 'score': 10},
      {'text': 'Static', 'score': 0},
    ],
  },
  {
    "question": "APK stands for -",
    'answers': [
      {'text': 'Android Phone Kit', 'score': 0},
      {'text': 'Android Page Kit', 'score': 0},
      {'text': 'Android Package Kit', 'score': 10},
      {'text': 'None of the above', 'score': 0},
    ],
  },
  {
    "question": "What does API stand for?",
    'answers': [
      {'text': 'Application Programming Interface', 'score': 0},
      {'text': 'Android Programming Interface', 'score': 0},
      {'text': 'Android Page Interface', 'score': 10},
      {'text': 'Application Page Interface', 'score': 0},
    ],
  },
  {
    "question": "On which of the following, developers can test the application, during developing the android applications?",
    'answers': [
      {'text': 'Third-party emulators', 'score': 0},
      {'text': 'Emulator included in Android SDK', 'score': 0},
      {'text': 'Physical android phone', 'score': 10},
      {'text': 'All of the above', 'score': 0},
    ],
  },
];
