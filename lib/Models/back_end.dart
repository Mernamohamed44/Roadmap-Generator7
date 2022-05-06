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
    'answers': [
      {'text': 'Facebook', 'score': -2},
      {'text': 'Adobe', 'score': -2},
      {'text': 'Google', 'score': 10},
      {'text': 'Microsoft', 'score': -2},
    ],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "Back 2",
    'answers': [
      {'text': 'Facebook', 'score': -2},
      {'text': 'Adobe', 'score': -2},
      {'text': 'Google', 'score': 10},
      {'text': 'Microsoft', 'score': -2},
    ],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "Back 3",
    'answers': [
      {'text': 'Facebook', 'score': -2},
      {'text': 'Adobe', 'score': -2},
      {'text': 'Google', 'score': 10},
      {'text': 'Microsoft', 'score': -2},
    ],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "Back 4",
    'answers': [
      {'text': 'Facebook', 'score': -2},
      {'text': 'Adobe', 'score': -2},
      {'text': 'Google', 'score': 10},
      {'text': 'Microsoft', 'score': -2},
    ],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "Back 5",
    'answers': [
      {'text': 'Facebook', 'score': -2},
      {'text': 'Adobe', 'score': -2},
      {'text': 'Google', 'score': 10},
      {'text': 'Microsoft', 'score': -2},
    ],
    "roadmap": ['link1', 'link2', 'link3']
  },
];
