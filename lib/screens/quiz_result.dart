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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Text(
              "Result",
              style: TextStyle(
                color: mint,
                fontSize: 36,
              ),
            ),
            Divider(
              color: mint,
              height: 30,
              thickness: 1,
              endIndent: 240,
              indent: 0,
            ),
            const SizedBox(height: 20),
            Text(
              "According to the quiz you are" +
                  level +
                  " in the " +
                  Quiz.track +
                  " track."
                      "\nWe suggest you to start from step (" +
                  step.toString() +
                  ").",
              style: TextStyle(
                color: darkGrey,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 70),
            Center(
              child: ResultButton(text: "Get The Roadmap", fun: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const RoadmapScreen();
                }));
              }),
            ),
            const SizedBox(height: 10),
            Center(
              child: ResultButton(text: "Re-take The Quiz", fun: () {
                Navigator.pop(context);
              }),
            ),
            const SizedBox(height: 10),
            Center(
              child: ResultButton(text: "Choose Another Track", fun: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
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
