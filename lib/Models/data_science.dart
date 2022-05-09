class DataScienceQuestion {
  final int id, answer;
  final String question;
  final List<String> options;

  DataScienceQuestion({
    required this.id,
    required this.question,
    required this.answer,
    required this.options,
  });
}

const List dataScienceQuestions = [
  {
    "question": " Which of the following is the most important language for Data Science?",'answers': [
    {'text': 'Java', 'score': 0},
    {'text': 'Ruby', 'score': 0},
    {'text': 'R', 'score': 10},
    {'text': 'None of the mentioned', 'score': 0},
  ],
  },
  {
    "question": "Which of the following is an example of tidy data?",
    'answers': [
      {'text': 'complicated JSON from facebook API', 'score': 0},
      {'text': 'complicated JSON from Twitter API', 'score': 0},
      {'text': 'unformatted excel file', 'score': 10},
      {'text': 'all of the mentioned', 'score': 0},
    ],
  },
  {
    "question": "Which of the following package tools are present in caret?",
    'answers': [
      {'text': 'pre-processing', 'score': 0},
      {'text': 'feature selection', 'score': 0},
      {'text': 'model tuning', 'score': 10},
      {'text': 'all of the mentioned', 'score': 0},
    ],
  },
  {
    "question": "Which of the following function is used for loading flat files?",
    'answers': [
      {'text': 'read.data', 'score': 0},
      {'text': 'read.sheet', 'score': 0},
      {'text': 'read.table', 'score': 10},
      {'text': 'none of the mentioned', 'score': 0},
    ],
  },
  {
    "question": "Which of the following is correct method to solve matrix equations?",
    'answers': [
      {'text': 'Row Echelon Form', 'score': 0},
      {'text': 'Inverse of a Matrix', 'score': 0},
      {'text': 'Both A and B', 'score': 10},
      {'text': 'None Of the above', 'score': 0},
    ],
  },
];
