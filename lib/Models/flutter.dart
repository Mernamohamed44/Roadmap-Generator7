class FlutterQuestion {
  final int id, answer;
  final String question;
  final List<String> options;

  FlutterQuestion({
    required this.id,
    required this.question,
    required this.answer,
    required this.options,
  });
}

const List flutterQuestions = [
  {
    "question": "flutter 1",
    'answers': [
      {'text': 'Facebook', 'score': 0},
      {'text': 'Adobe', 'score': 0},
      {'text': 'Google', 'score': 10},
      {'text': 'Microsoft', 'score': 0},
    ],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "flutter 2",
    'answers': [
      {'text': 'Facebook', 'score': 0},
      {'text': 'Adobe', 'score': 0},
      {'text': 'Google', 'score': 10},
      {'text': 'Microsoft', 'score': 0},
    ],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "flutter 3",
    'answers': [
      {'text': 'Facebook', 'score': 0},
      {'text': 'Adobe', 'score': 0},
      {'text': 'Google', 'score': 10},
      {'text': 'Microsoft', 'score': 0},
    ],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "flutter 4",
    'answers': [
      {'text': 'Facebook', 'score': -2},
      {'text': 'Adobe', 'score': -2},
      {'text': 'Google', 'score': 10},
      {'text': 'Microsoft', 'score': -2},
    ],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "flutter 5",
    'answers': [
      {'text': 'Facebook', 'score': -2},
      {'text': 'Adobe', 'score': -2},
      {'text': 'Google', 'score': 10},
      {'text': 'Microsoft', 'score': -2},
    ],
    "roadmap": ['link1', 'link2', 'link3']
  },
];
