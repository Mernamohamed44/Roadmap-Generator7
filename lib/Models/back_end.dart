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
    "question": "The Application programming interfaces (API)",
    'answers': [
      {
        'text':
            'is part of the user interface through which the database makes user requests',
        'score': 0
      },
      {
        'text':
            'is part of the backend development through which users requests access the database',
        'score': 0
      },
      {
        'text':
            'is part of the frontend development responsible for user programming',
        'score': 10
      },
      {
        'text':
            'serves as the programming component responsible for the user interface and the database',
        'score': 0
      },
    ],
  },
  {
    "question": "Use this to update an existing resource.",
    'answers': [
      {'text': 'GET', 'score': 0},
      {'text': 'POST', 'score': 0},
      {'text': 'PUT', 'score': 10},
      {'text': 'DELETE', 'score': 0},
    ],
  },
  {
    "question":
        "You can add a row using SQL in a database with which of the following:",
    'answers': [
      {'text': 'ADD', 'score': 0},
      {'text': 'CREATE', 'score': 0},
      {'text': 'INSERT', 'score': 10},
      {'text': 'MAKE', 'score': 0},
    ],
  },
  {
    "question": "The SQL WHERE clause:",
    'answers': [
      {'text': 'limits the column data that are returned.', 'score': 0},
      {'text': 'limits the row data are returned.', 'score': 0},
      {'text': 'Both A and B are correct.', 'score': 10},
      {'text': 'Neither A nor B are correct.', 'score': 0},
    ],
  },
  {
    "question": "The command to remove rows from a table 'CUSTOMER' is:",
    'answers': [
      {'text': 'REMOVE FROM CUSTOMER ...', 'score': 0},
      {'text': 'DROP FROM CUSTOMER ...', 'score': -2},
      {'text': 'DELETE FROM CUSTOMER WHERE ...', 'score': 10},
      {'text': 'UPDATE FROM CUSTOMER ...', 'score': -2},
    ],
  },
];
