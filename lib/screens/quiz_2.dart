import 'package:flutter/material.dart';
import 'package:roadmap_generator/colors.dart';
import 'package:roadmap_generator/screens/quiz_1.dart';
import 'package:roadmap_generator/screens/quiz_result.dart';
import 'package:roadmap_generator/widgets/answers_radio_buttons.dart';
import 'package:roadmap_generator/widgets/mint_button.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  int questionNumber = 1;

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Question " + questionNumber.toString() + "/5 :",
              style: TextStyle(
                color: mint,
                fontSize: 36,
              ),
            ),
            Divider(
              color: mint,
              height: 30,
              thickness: 1,
              endIndent: 120,
              indent: 5,
            ),
            const SizedBox(height: 40),
            Text(
              "This is a dumb question",
              style: TextStyle(
                color: darkGrey,
                fontSize: 30,
              ),
            ),
            const Answers(),
            const SizedBox(height: 90),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MintButtons(
                    text: "Back",
                    fun: () {
                      Navigator.pop(context);
                    }),
                const SizedBox(width: 20),
                MintButtons(
                    text: "Next",
                    fun: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return const Result();
                      }));
                    }), //if next index == null, text = get result
              ],
            )
          ],
        ),
      ),
    );
  }
}
