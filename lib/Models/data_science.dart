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
    "id": 1,
    "question": "data 1",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "data 2",
    "options": ['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "data 3",
    "options": ['Double', 'Int', 'Char', 'Word'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "data 4",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "data 5",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "answer_index": 1,
  },
];
