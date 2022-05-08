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
      {'text': 'java.lang.Object', 'score': -2},
      {'text': 'Java.lang.String', 'score': -2},
      {'text': 'java.lang.util', 'score': 10},
      {'text': 'None of teh above', 'score': -2},
    ],
  },
  {
    "question": "Identify the modifier which cannot be used for constructor.",
    'answers': [
      {'text': 'Public', 'score': -2},
      {'text': 'Protected', 'score': -2},
      {'text': 'Private', 'score': 10},
      {'text': 'Static', 'score': -2},
    ],
  },
  {
    "question": "APK stands for -",
    'answers': [
      {'text': 'Android Phone Kit', 'score': -2},
      {'text': 'Android Page Kit', 'score': -2},
      {'text': 'Android Package Kit', 'score': 10},
      {'text': 'None of the above', 'score': -2},
    ],
  },
  {
    "question": "What does API stand for?",
    'answers': [
      {'text': 'Application Programming Interface', 'score': -2},
      {'text': 'Android Programming Interface', 'score': -2},
      {'text': 'Android Page Interface', 'score': 10},
      {'text': 'Application Page Interface', 'score': -2},
    ],
  },
  {
    "question": "On which of the following, developers can test the application, during developing the android applications?",
    'answers': [
      {'text': 'Third-party emulators', 'score': -2},
      {'text': 'Emulator included in Android SDK', 'score': -2},
      {'text': 'Physical android phone', 'score': 10},
      {'text': 'All of the above', 'score': -2},
    ],
  },
];
