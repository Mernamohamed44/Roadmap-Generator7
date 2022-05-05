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
    "question": "android 1",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "android 2",
    "options": ['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "android 3",
    "options": ['Double', 'Int', 'Char', 'Word'],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "android 4",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "android 5",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "roadmap": ['link1', 'link2', 'link3']
  },
];
