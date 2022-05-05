class CyberSecurityQuestion {
  final int id, answer;
  final String question;
  final List<String> options;

  CyberSecurityQuestion({
    required this.id,
    required this.question,
    required this.answer,
    required this.options,
  });
}

const List cyberSecurityQuestions = [
  {
    "question": "security 1",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "security 2",
    "options": ['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "security 3",
    "options": ['Double', 'Int', 'Char', 'Word'],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "security 4",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "security 5",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "roadmap": ['link1', 'link2', 'link3']
  },
];
