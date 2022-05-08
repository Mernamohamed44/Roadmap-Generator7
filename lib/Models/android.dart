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
    "question": "Which of the following is not the feature of jQuery?",
    'answers': [
      {'text': 'Efficient query method for finding the set of document elements', 'score': -2},
      {'text': 'Expressive syntax for referring to elements in the document', 'score': -2},
      {'text': ' Useful set of methods for manipulating selected elements', 'score': 10},
      {'text': ' Powerful functional programming techniques is not used for operating on sets of elements as a group', 'score': -2},
    ],
  },
  {
    "question": "android 2",
    'answers': [
      {'text': 'Facebook', 'score': -2},
      {'text': 'Adobe', 'score': -2},
      {'text': 'Google', 'score': 10},
      {'text': 'Microsoft', 'score': -2},
    ],
  },
  {
    "question": "android 3",
    'answers': [
      {'text': 'Facebook', 'score': -2},
      {'text': 'Adobe', 'score': -2},
      {'text': 'Google', 'score': 10},
      {'text': 'Microsoft', 'score': -2},
    ],
  },
  {
    "question": "android 4",
    'answers': [
      {'text': 'Facebook', 'score': -2},
      {'text': 'Adobe', 'score': -2},
      {'text': 'Google', 'score': 10},
      {'text': 'Microsoft', 'score': -2},
    ],
  },
  {
    "question": "android 5",
    'answers': [
      {'text': 'Facebook', 'score': -2},
      {'text': 'Adobe', 'score': -2},
      {'text': 'Google', 'score': 10},
      {'text': 'Microsoft', 'score': -2},
    ],
  },
];
