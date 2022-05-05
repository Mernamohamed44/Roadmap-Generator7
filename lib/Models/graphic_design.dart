class GraphicDesignQuestion {
  final int id, answer;
  final String question;
  final List<String> options;

  GraphicDesignQuestion({
    required this.id,
    required this.question,
    required this.answer,
    required this.options,
  });
}

const List graphicDesignQuestions = [
  {
    "id": 1,
    "question": "graphicDesign 1",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "graphicDesign 2",
    "options": ['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "graphicDesign 3",
    "options": ['Double', 'Int', 'Char', 'Word'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "graphicDesign 4",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "graphicDesign 5",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "answer_index": 1,
  },
];
