import 'package:flutter/material.dart';
import 'package:roadmap_generator/colors.dart';
import 'package:roadmap_generator/screens/quiz_1.dart';

class Answers extends StatefulWidget {
  const Answers({Key? key}) : super(key: key);

  @override
  State<Answers> createState() => _AnswersState();
}

enum SingingCharacter { answer1, answer2, answer3, answer4 }

class _AnswersState extends State<Answers> {
  SingingCharacter? _character;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
              Quiz.questionList[Quiz.questionNumber]["answers"][0]['text'],
              style: TextStyle(fontSize: 18, color: grey)),
          leading: Radio<SingingCharacter>(
            fillColor: MaterialStateProperty.all(mint),
            value: SingingCharacter.answer1,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text(
              Quiz.questionList[Quiz.questionNumber]["answers"][1]['text'],
              style: TextStyle(fontSize: 18, color: grey)),
          leading: Radio<SingingCharacter>(
            fillColor: MaterialStateProperty.all(mint),
            value: SingingCharacter.answer2,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text(
              Quiz.questionList[Quiz.questionNumber]["answers"][2]['text'],
              style: TextStyle(fontSize: 18, color: grey)),
          leading: Radio<SingingCharacter>(
            fillColor: MaterialStateProperty.all(mint),
            value: SingingCharacter.answer3,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text(
              Quiz.questionList[Quiz.questionNumber]["answers"][3]['text'],
              style: TextStyle(fontSize: 18, color: grey)),
          leading: Radio<SingingCharacter>(
            fillColor: MaterialStateProperty.all(mint),
            value: SingingCharacter.answer4,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
