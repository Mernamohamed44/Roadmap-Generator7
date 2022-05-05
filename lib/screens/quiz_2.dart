import 'package:flutter/material.dart';
import 'package:roadmap_generator/Models/android.dart';
import 'package:roadmap_generator/colors.dart';
import 'package:roadmap_generator/screens/quiz_1.dart';
import 'package:roadmap_generator/screens/quiz_result.dart';
import 'package:roadmap_generator/widgets/answers_radio_buttons.dart';
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

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  int questionNumber = 0;

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
          Quiz.track + ' Quiz',
          style: TextStyle(
            color: white,
            fontSize: 24,
          ),
        ),
        backgroundColor: mint,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            height: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(4, 8), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Question " + (questionNumber + 1).toString() + "/5 :",
                  style: TextStyle(
                    color: mint,
                    fontSize: 32,
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    questionList[questionNumber]["question"],
                    style: TextStyle(
                      color: darkGrey,
                      fontSize: 22,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Answers(),
              ],
            ),
          ),
          const SizedBox(height: 90),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MintButtons(
                  text: "Back",
                  fun: () {
                    if (questionNumber == 0) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) {
                        return const Quiz();
                      }));
                    } else {
                      setState(() {
                        questionNumber--;
                      });
                    }
                  }),
              const SizedBox(width: 20),
              MintButtons(
                  text: "Next",
                  fun: () {
                    if (questionNumber == 4) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) {
                        return const Result();
                      }));
                    } else {
                      setState(() {
                        questionNumber++;
                      });
                    }
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
