import 'package:flutter/material.dart';
import 'package:roadmap_generator/colors.dart';
import 'package:roadmap_generator/screens/choose_track.dart';
import 'package:roadmap_generator/screens/quiz_1.dart';
import 'package:roadmap_generator/screens/roadmap.dart';
import 'package:roadmap_generator/widgets/result_button.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  static String level = "a beginner";
  static int step = 1;

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
            Text(
              "According to the quiz you are " +
                  level +
                  " in the " +
                  Quiz.track +
                  " track."
                      "\nWe suggest you to start from step (" +
                  step.toString() +
                  ") in the roadmap.",
              style: TextStyle(
                color: darkGrey,
                fontSize: 24,
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
