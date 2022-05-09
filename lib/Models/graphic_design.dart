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
    "question": " ________ is a false visual perception seeing something other than what is really there.",
    'answers': [
      {'text': 'proportion', 'score': 0},
      {'text': 'illusion', 'score': 0},
      {'text': 'optical illusion', 'score': 10},
      {'text': 'Graphic design', 'score': 0},
    ],
  },
  {
    "question": "______is a closed 2 dimension area.",
    'answers': [
      {'text': 'value', 'score': 0},
      {'text': 'shape', 'score': 0},
      {'text': 'space', 'score': 10},
      {'text': 'shade', 'score': 0},
    ],
  },
  {
    "question": "____ is a color scheme that uses colors that sit side by side on the color wheel and have a common hue.",
    'answers': [
      {'text': 'color scheme', 'score': 0},
      {'text': 'Triad color scheme', 'score': 0},
      {'text': 'Analogous color scheme', 'score': 10},
      {'text': 'Monochromatic color scheme', 'score': 0},
    ],
  },
  {
    "question": "______ is a basic element repeated to create a pattern.",
    'answers': [
      {'text': 'shape', 'score': 0},
      {'text': 'form', 'score': 0},
      {'text': 'motif', 'score': 10},
      {'text': 'hue', 'score': 0},
    ],
  },
  {
    "question": "_______ is a special type of formal balance in which two halves of a balanced composition/design.",
    'answers': [
      {'text': 'neutrals', 'score': 0},
      {'text': 'Primary colors', 'score': 0},
      {'text': 'Symmetry balance', 'score': 10},
      {'text': 'Symbol', 'score': 0},
    ],
  },
];
