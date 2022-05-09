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
    "question": "graphicDesign 1",
    'answers': [
      {'text': 'Facebook', 'score': 0},
      {'text': 'Adobe', 'score': 0},
      {'text': 'Google', 'score': 10},
      {'text': 'Microsoft', 'score': 0},
    ],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "graphicDesign 2",
    'answers': [
      {'text': 'Facebook', 'score': 0},
      {'text': 'Adobe', 'score': 0},
      {'text': 'Google', 'score': 10},
      {'text': 'Microsoft', 'score': 0},
    ],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "graphicDesign 3",
    'answers': [
      {'text': 'Facebook', 'score': 0},
      {'text': 'Adobe', 'score': -2},
      {'text': 'Google', 'score': 10},
      {'text': 'Microsoft', 'score': -2},
    ],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "graphicDesign 4",
    'answers': [
      {'text': 'Facebook', 'score': -2},
      {'text': 'Adobe', 'score': -2},
      {'text': 'Google', 'score': 10},
      {'text': 'Microsoft', 'score': -2},
    ],
    "roadmap": ['link1', 'link2', 'link3']
  },
  {
    "question": "graphicDesign 5",
    'answers': [
      {'text': 'Facebook', 'score': -2},
      {'text': 'Adobe', 'score': -2},
      {'text': 'Google', 'score': 10},
      {'text': 'Microsoft', 'score': -2},
    ],
    "roadmap": ['link1', 'link2', 'link3']
  },
];
