class IOSQuestion {
  final int id, answer;
  final String question;
  final List<String> options;

  IOSQuestion({
    required this.id,
    required this.question,
    required this.answer,
    required this.options,
  });
}

const List iOSQuestions = [
  {
    "question": "Which JSON framework is supported by iOS?",
    'answers': [
      {'text': 'UIKit', 'score': 0},
      {'text': 'Django', 'score': 0},
      {'text': 'SBJson', 'score': 10},
      {'text': 'UCJson', 'score': 0},
    ],
  },
  {
    "question": "How many ways to achieve concurrency in iOS?",
    'answers': [
      {'text': '1', 'score': 0},
      {'text': '2', 'score': 0},
      {'text': '3', 'score': 10},
      {'text': '4', 'score': 0},
    ],
  },
  {
    "question": "In Which state the app is running in the foreground and is receiving events?",
    'answers': [
      {'text': 'Not running', 'score': 0},
      {'text': 'Inactive', 'score': 0},
      {'text': 'Background', 'score': 10},
      {'text': 'Active', 'score': 0},
    ],
  },
  {
    "question": "How to compile and run a script in one step?",
    'answers': [
      {'text': 'swift filename.swift', 'score': 0},
      {'text': 'swiftc filename', 'score': 0},
      {'text': 'swiftc filename.swift', 'score': 10},
      {'text': 'swift filename.s', 'score': 0},
    ],
  },
  {
    "question": "Which method is used in String Iteration in Swift?",
    'answers': [
      {'text': 'index(after:)', 'score': 0},
      {'text': 'index.successor()', 'score': 0},
      {'text': 'index.next()', 'score': 10},
      {'text': 'index.forward()', 'score': 0},
    ],
  },
];
