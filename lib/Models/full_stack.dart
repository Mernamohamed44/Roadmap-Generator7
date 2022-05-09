class FullStackQuestion {
  final int id, answer;
  final String question;
  final List<String> options;

  FullStackQuestion({
    required this.id,
    required this.question,
    required this.answer,
    required this.options,
  });
}

const List fullStackQuestions = [
  {
    "question": "Use this to update an existing resource.",
    'answers': [
      {'text': 'GET', 'score': 0},
      {'text': 'POST', 'score': 0},
      {'text': 'PUT', 'score': 10},
      {'text': 'DELETE', 'score': 0},
    ],
  },
  {
    "question":
    "You can add a row using SQL in a database with which of the following:",
    'answers': [
      {'text': 'ADD', 'score': 0},
      {'text': 'CREATE', 'score': 0},
      {'text': 'INSERT', 'score': 10},
      {'text': 'MAKE', 'score': 0},
    ],
  },
  {
    "question": "Which is not valid data type in Javascript?",
    'answers': [
      {'text': 'Undefined', 'score': 0},
      {'text': 'Boolean', 'score': 0},
      {'text': 'float', 'score': 10},
      {'text': 'Number', 'score': 0},
    ],
  },
  {
    "question": "Which tag is used to create a check box?",
    'answers': [
      {'text': '<checkbox>', 'score': 0},
      {'text': '<Input type="checkbox">', 'score': 0},
      {'text': '<type="checkbox">', 'score': 10},
      {'text': 'None of the above', 'score': 0},
    ],
  },
  {
    "question": "Which attribute set the text direction?",
    'answers': [
      {'text': 'dir', 'score': 0},
      {'text': 'lang', 'score': 0},
      {'text': 'direction', 'score': 10},
      {'text': 'sub', 'score': 0},
    ],
  },
];
