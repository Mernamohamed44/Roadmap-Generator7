// ignore_for_file: deprecated_member_use

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:roadmap_generator/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkedLabelCheckbox extends StatelessWidget {
  const LinkedLabelCheckbox({
    Key? key,
    required this.label,
    required this.padding,
    required this.value,
    required this.onChanged,
    required this.courseLink,
    required this.step,
  }) : super(key: key);

  final String label;
  final EdgeInsets padding;
  final bool value;
  final ValueChanged<bool> onChanged;
  final String courseLink;
  final String step;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(color: mint, shape: BoxShape.circle),
                alignment: Alignment.center,
                child: Text(
                  'Step ' + step.toString() + ':',
                  style: TextStyle(fontSize: 18, color: white),
                ),
              ),
              const SizedBox(width: 12),
              Flexible(
                child: RichText(
                  text: TextSpan(
                    text: label,
                    style: TextStyle(
                      color: mint,
                      decoration: TextDecoration.underline,
                      fontSize: 18,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        launch(courseLink);
                      },
                  ),
                ),
              ),
            ],
          ),
        ),
        Checkbox(
          value: value,
          onChanged: (bool? newValue) {
            onChanged(newValue!);
          },
          activeColor: mint,
        ),
      ],
    );
  }
}
