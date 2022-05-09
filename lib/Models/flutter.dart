class FlutterQuestion {
  final int id, answer;
  final String question;
  final List<String> options;

  FlutterQuestion({
    required this.id,
    required this.question,
    required this.answer,
    required this.options,
  });
}

const List flutterQuestions = [
  {
    "question": " _______ in Flutter are used as an identifier for Widgets, Elements and SemanticsNodes.",
    'answers': [
      {'text': 'Buttons', 'score': 0},
      {'text': 'Keys', 'score': 0},
      {'text': 'Widgets', 'score': 10},
      {'text': 'None of the above', 'score': 0},
    ],
  },
  {
    "question": "How many types of widgets are there in Flutter?",
    'answers': [
      {'text': '2', 'score': 0},
      {'text': '3', 'score': 0},
      {'text': '4', 'score': 10},
      {'text': '5', 'score': 0},
    ],
  },
  {
    "question": "________ will enable you to access and manipulate the cloud database.",
    'answers': [
      {'text': 'Sqflite database', 'score': 0},
      {'text': 'Firebase database', 'score': 0},
      {'text': 'Both A and B', 'score': 10},
      {'text': 'None of the above', 'score': 0},
    ],
  },
  {
    "question": "________ is the project’s configuration file that will use a lot during working with the Flutter project.",
    'answers': [
      {'text': 'pubspec.html', 'score': 0},
      {'text': 'pubspec.yaml', 'score': 0},
      {'text': 'pubspec.xyz', 'score': 10},
      {'text': 'pubspec.xml', 'score': 0},
    ],
  },
  {
    "question": "Which of the following widgets use for layout?",
    'answers': [
      {'text': 'Text', 'score': 0},
      {'text': 'Column', 'score': 0},
      {'text': 'Expanded', 'score': 10},
      {'text': 'Inkwell', 'score': 0},
    ],
  },
];
