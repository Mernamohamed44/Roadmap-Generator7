import 'package:flutter/material.dart';
import 'package:roadmap_generator/Models/android.dart';
import 'package:roadmap_generator/colors.dart';
import 'package:roadmap_generator/screens/quiz_2.dart';
import 'package:roadmap_generator/widgets/mint_button.dart';
import 'package:roadmap_generator/Models/back_end.dart';
import 'package:roadmap_generator/Models/cloud_computing.dart';
import 'package:roadmap_generator/Models/cyber_security.dart';
import 'package:roadmap_generator/Models/data_science.dart';
import 'package:roadmap_generator/Models/flutter.dart';
import 'package:roadmap_generator/Models/front_end.dart';
import 'package:roadmap_generator/Models/full_stack.dart';
import 'package:roadmap_generator/Models/graphic_design.dart';
import 'package:roadmap_generator/Models/ios.dart';
import 'package:roadmap_generator/Models/uix.dart';

class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  static int index = 0;

  static int questionNumber = 0;

  static String get track {
    switch (index) {
      case 0:
        return "Front-end Development";
      case 1:
        return "Back-end Development";
      case 2:
        return "Data Science";
      case 3:
        return "Cyber Security";
      case 4:
        return "Android Development";
      case 5:
        return "UI/UX Design";
      case 6:
        return "Full Stack Development";
      case 7:
        return "Cloud Computing";
      case 8:
        return "IOS Development";
      case 9:
        return "Flutter Development";
      case 10:
        return "Graphic Design";
      default:
        return "Flutter Development";
    }
  }

  static List get questionList {
    switch (Quiz.index) {
      case 0:
        return frontEndQuestions;
      case 1:
        return backEndQuestions;
      case 2:
        return dataScienceQuestions;
      case 3:
        return cyberSecurityQuestions;
      case 4:
        return androidQuestions;
      case 5:
        return uIXQuestions;
      case 6:
        return fullStackQuestions;
      case 7:
        return cloudComputingQuestions;
      case 8:
        return iOSQuestions;
      case 9:
        return flutterQuestions;
      case 10:
        return graphicDesignQuestions;
      default:
        return flutterQuestions;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title: Text(
          track + ' Quiz',
          style: TextStyle(
            color: white,
            fontSize: 24,
          ),
        ),
        backgroundColor: mint,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 70),
            Text('Why this quiz?',
                style: TextStyle(
                  fontSize: 28,
                  color: mint,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              height: 12,
            ),
            Text(
                'This quiz helps us provide you with the '
                'most suitable roadmap for you by determining'
                ' your current level in the chosen track. \n \n',
                style: TextStyle(
                  fontSize: 20,
                  color: darkGrey,
                )),
            Text('Notes to be considered: ',
                style: TextStyle(
                  fontSize: 28,
                  color: mint,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              height: 12,
            ),
            Text(
                '- Take your time to think before answering the question. \n'
                '- You can always  go back to a certain question by clicking the back button.',
                style: TextStyle(
                  fontSize: 20,
                  color: darkGrey,
                )),
            const SizedBox(
              height: 60,
            ),
            Center(
              child: MintButtons(
                text: 'Go to Quiz',
                fun: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) {
                    return const Questions();
                  }));
                  Quiz.questionNumber = 0;
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
