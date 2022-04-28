import 'package:flutter/material.dart';

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
  cyber,
  graphic
}

class _RadioButtonState extends State<RadioButton> {
  SingingCharacter? _character = SingingCharacter.flutter;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text('Front end ', style: TextStyle(fontSize: 20)),
          leading: Radio<SingingCharacter>(
            fillColor: MaterialStateProperty.all(mint),
            value: SingingCharacter.frontend,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Backend', style: TextStyle(fontSize: 20)),
          leading: Radio<SingingCharacter>(
            fillColor: MaterialStateProperty.all(mint),
            value: SingingCharacter.backend,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Flutter', style: TextStyle(fontSize: 20)),
          leading: Radio<SingingCharacter>(
            fillColor: MaterialStateProperty.all(mint),
            value: SingingCharacter.flutter,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Full Stack', style: TextStyle(fontSize: 20)),
          leading: Radio<SingingCharacter>(
            fillColor: MaterialStateProperty.all(mint),
            value: SingingCharacter.fullstack,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Android', style: TextStyle(fontSize: 20)),
          leading: Radio<SingingCharacter>(
            fillColor: MaterialStateProperty.all(mint),
            value: SingingCharacter.android,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Ios', style: TextStyle(fontSize: 20)),
          leading: Radio<SingingCharacter>(
            fillColor: MaterialStateProperty.all(mint),
            value: SingingCharacter.ios,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('UI-UX', style: TextStyle(fontSize: 20)),
          leading: Radio<SingingCharacter>(
            fillColor: MaterialStateProperty.all(mint),
            value: SingingCharacter.ui,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
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
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Cloud computing', style: TextStyle(fontSize: 20)),
          leading: Radio<SingingCharacter>(
            fillColor: MaterialStateProperty.all(mint),
            value: SingingCharacter.cloud,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('cyber security', style: TextStyle(fontSize: 20)),
          leading: Radio<SingingCharacter>(
            fillColor: MaterialStateProperty.all(mint),
            value: SingingCharacter.cyber,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Graphic design', style: TextStyle(fontSize: 20)),
          leading: Radio<SingingCharacter>(
            fillColor: MaterialStateProperty.all(mint),
            value: SingingCharacter.graphic,
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