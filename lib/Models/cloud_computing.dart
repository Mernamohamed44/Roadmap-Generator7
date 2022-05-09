class CloudComputingQuestion {
  final int id, answer;
  final String question;
  final List<String> options;

  CloudComputingQuestion({
    required this.id,
    required this.question,
    required this.answer,
    required this.options,
  });
}

const List cloudComputingQuestions = [
  {
    "question": "Which one of the following options can be considered as the Cloud?",
    "options": [
      'Hadoop',
      'Intranet',
      'Web Applications',
      'All of the mentioned',
    ],
  },
  {
    "question": "Which one of the following is Cloud Platform by Amazon?",
    'answers': [
      {'text': 'Azure', 'score': 0},
      {'text': 'AWS', 'score': 0},
      {'text': 'Cloudera', 'score': 10},
      {'text': 'All of the mentioned', 'score': 0},
    ],
  },
  {
    "question": "Which of the model involves the special types of services that users can access on a Cloud Computing platform?",
    'answers': [
      {'text': 'Service', 'score': 0},
      {'text': 'Planning', 'score': 0},
      {'text': 'Deployment', 'score': 10},
      {'text': 'Application', 'score': 0},
    ],
  },
  {
    "question": "Which one of the following is related to the services provided by Cloud?",
    'answers': [
      {'text': 'Sourcing', 'score': 0},
      {'text': 'Ownership', 'score':0},
      {'text': 'Reliability', 'score': 10},
      {'text': 'PaaS', 'score': 0},
    ],
  },
  {
    "question": "How many phases are present in Cloud Computing Planning?",
    'answers': [
      {'text': '2', 'score': -2},
      {'text': '3', 'score': -2},
      {'text': '4', 'score': 10},
      {'text': '5', 'score': -2},
    ],
  },
];
