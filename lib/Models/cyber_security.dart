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
    'answers': [
      {'text': 'xFacebook', 'score': -2},
      {'text': 'Adobe', 'score': -2},
      {'text': 'Google', 'score': 10},
      {'text': 'Microsoft', 'score': -2},
    ],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "security 2",
    'answers': [
      {'text': 'xxFacebook', 'score': -2},
      {'text': 'Adobe', 'score': -2},
      {'text': 'Google', 'score': 10},
      {'text': 'Microsoft', 'score': -2},
    ],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "security 3",
    'answers': [
      {'text': 'xxxFacebook', 'score': -2},
      {'text': 'Adobe', 'score': -2},
      {'text': 'Google', 'score': 10},
      {'text': 'Microsoft', 'score': -2},
    ],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "security 4",
    'answers': [
      {'text': 'xxxxFacebook', 'score': -2},
      {'text': 'Adobe', 'score': -2},
      {'text': 'Google', 'score': 10},
      {'text': 'Microsoft', 'score': -2},
    ],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "security 5",
    'answers': [
      {'text': 'xxxxxFacebook', 'score': -2},
      {'text': 'Adobe', 'score': -2},
      {'text': 'Google', 'score': 10},
      {'text': 'Microsoft', 'score': -2},
    ],
    "roadmap": ['link1', 'link2', 'link3']
  },
];
