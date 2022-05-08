import 'package:flutter/material.dart';
import 'package:roadmap_generator/colors.dart';
import 'dart:math';
import 'package:roadmap_generator/screens/choose_track.dart';
import 'package:roadmap_generator/screens/quiz_1.dart';
import 'package:roadmap_generator/screens/roadmap.dart';
import 'package:roadmap_generator/widgets/result_button.dart';

// ignore: must_be_immutable
class Result extends StatelessWidget {
  Random random = Random();

  String level = "";
  static int step = 1;

  Result({Key? key}) : super(key: key) {
    int index = random.nextInt(3);

    if (index == 0) {
      level = "a Beginner";
      step = 1;
    } else if (index == 1) {
      level = "Intermediate";
      step = 3;
    } else {
      level = "Advanced";
      step = 6;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title: Text(
          'Result',
          style: TextStyle(
            color: white,
            fontSize: 24,
          ),
        ),
        backgroundColor: mint,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 70),
            RichText(
              text: TextSpan(
                text: "According to the quiz you are ",
                style: TextStyle(
                  color: darkGrey,
                  fontSize: 24,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: level,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: mint,
                      fontSize: 26,
                    ),
                  ),
                  TextSpan(
                    text: " in the ",
                    style: TextStyle(
                      color: darkGrey,
                      fontSize: 24,
                    ),
                  ),
                  TextSpan(
                    text: Quiz.track + " track.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: mint,
                      fontSize: 26,
                    ),
                  ),
                  TextSpan(
                    text: "\nWe suggest you to start from ",
                    style: TextStyle(
                      color: darkGrey,
                      fontSize: 24,
                    ),
                  ),
                  TextSpan(
                    text: "step (" + step.toString() + ")",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: mint,
                      fontSize: 26,
                    ),
                  ),
                  TextSpan(
                    text: " in the roadmap. ",
                    style: TextStyle(
                      color: darkGrey,
                      fontSize: 24,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 70),
            Center(
              child: ResultButton(
                  text: "Get The Roadmap",
                  fun: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return const RoadmapScreen();
                    }));
                  }),
            ),
            const SizedBox(height: 10),
            Center(
              child: ResultButton(
                  text: "Re-take The Quiz",
                  fun: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) {
                      return const Quiz();
                    }));
                    Quiz.questionNumber = 0;
                  }),
            ),
            const SizedBox(height: 10),
            Center(
              child: ResultButton(
                  text: "Choose Another Track",
                  fun: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) {
                      return const ChooseTrack();
                    }));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
