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
    "id": 1,
    "question": "IOS 1",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "IOS 2",
    "options": ['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "IOS 3",
    "options": ['Double', 'Int', 'Char', 'Word'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "IOS 4",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "IOS 5",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "answer_index": 1,
  },
];
