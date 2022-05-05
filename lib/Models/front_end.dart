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
    "id": 1,
    "question": "frontEnd 1",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "frontEnd 2",
    "options": ['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "frontEnd 3",
    "options": ['Double', 'Int', 'Char', 'Word'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "frontEnd 4",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "frontEnd 5",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "answer_index": 1,
  },
];
