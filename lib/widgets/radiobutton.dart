import 'package:flutter/material.dart';
import 'package:roadmap_generator/screens/quiz_1.dart';
import '../colors.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({Key? key}) : super(key: key);

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

enum SingingCharacter {
  frontend,
  backend,
  flutter,
  fullstack,
  android,
  ios,
  datascience,
  ui,
  cloud,
  graphic
}

class _RadioButtonState extends State<RadioButton> {
  SingingCharacter? _character;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text('Front-end Development',
              style: TextStyle(fontSize: 20)),
          leading: Radio<SingingCharacter>(
            fillColor: MaterialStateProperty.all(mint),
            value: SingingCharacter.frontend,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
                Quiz.index = 0;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Back-end Development',
              style: TextStyle(fontSize: 20)),
          leading: Radio<SingingCharacter>(
            fillColor: MaterialStateProperty.all(mint),
            value: SingingCharacter.backend,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
                Quiz.index = 1;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Data science', style: TextStyle(fontSize: 20)),
          leading: Radio<SingingCharacter>(
            fillColor: MaterialStateProperty.all(mint),
            value: SingingCharacter.datascience,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
                Quiz.index = 2;
              });
            },
          ),
        ),
        ListTile(
          title:
              const Text('Android Development', style: TextStyle(fontSize: 20)),
          leading: Radio<SingingCharacter>(
            fillColor: MaterialStateProperty.all(mint),
            value: SingingCharacter.android,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
                Quiz.index = 3;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('UI/UX Design', style: TextStyle(fontSize: 20)),
          leading: Radio<SingingCharacter>(
            fillColor: MaterialStateProperty.all(mint),
            value: SingingCharacter.ui,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
                Quiz.index = 4;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Full Stack Development',
              style: TextStyle(fontSize: 20)),
          leading: Radio<SingingCharacter>(
            fillColor: MaterialStateProperty.all(mint),
            value: SingingCharacter.fullstack,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
                Quiz.index = 5;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Cloud Computing', style: TextStyle(fontSize: 20)),
          leading: Radio<SingingCharacter>(
            fillColor: MaterialStateProperty.all(mint),
            value: SingingCharacter.cloud,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
                Quiz.index = 6;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('IOS Development', style: TextStyle(fontSize: 20)),
          leading: Radio<SingingCharacter>(
            fillColor: MaterialStateProperty.all(mint),
            value: SingingCharacter.ios,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
                Quiz.index = 7;
              });
            },
          ),
        ),
        ListTile(
          title:
              const Text('Flutter Development', style: TextStyle(fontSize: 20)),
          leading: Radio<SingingCharacter>(
            fillColor: MaterialStateProperty.all(mint),
            value: SingingCharacter.flutter,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
                Quiz.index = 8;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Graphic Design', style: TextStyle(fontSize: 20)),
          leading: Radio<SingingCharacter>(
            fillColor: MaterialStateProperty.all(mint),
            value: SingingCharacter.graphic,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
                Quiz.index = 9;
              });
            },
          ),
        ),
      ],
    );
  }
}
