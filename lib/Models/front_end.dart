class FrontEndQuestion {
  final int id, answer;
  final String question;
  final List<String> options;

  FrontEndQuestion({
    required this.id,
    required this.question,
    required this.answer,
    required this.options,
  });
}

const List frontEndQuestions = [
  {
    "question": "Which of the following is not the feature of jQuery?",
    'answers': [
      {
        'text':
            'Efficient query method for finding the set of document elements',
        'score': 0
      },
      {
        'text': 'Expressive syntax for referring to elements in the document',
        'score': 0
      },
      {
        'text': 'Useful set of methods for manipulating selected elements',
        'score': 10
      },
      {
        'text':
            'Powerful functional programming techniques is not used for operating on sets of elements as a group',
        'score': 0
      },
    ],
  },
  {
    "question": "ReactJs covers:",
    'answers': [
      {'text': 'User Interface layer in an application', 'score': 0},
      {'text': 'Data layer in an application', 'score': 0},
      {'text': 'Both A and B', 'score': 10},
      {'text': 'None of the above', 'score': 0},
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
