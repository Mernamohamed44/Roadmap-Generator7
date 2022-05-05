class BackEndQuestion {
  final int id, answer;
  final String question;
  final List<String> options;

  BackEndQuestion({
    required this.id,
    required this.question,
    required this.answer,
    required this.options,
  });
}

const List backEndQuestions = [
  {
    "question": "Back 1",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "Back 2",
    "options": ['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "Back 3",
    "options": ['Double', 'Int', 'Char', 'Word'],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "Back 4",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "Back 5",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "roadmap": ['link1', 'link2', 'link3']
  },
];
