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
                  "Question " + (Quiz.questionNumber + 1).toString() + "/5 :",
                  style: TextStyle(
                    color: mint,
                    fontSize: 32,
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    Quiz.questionList[Quiz.questionNumber]["question"],
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
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MintButtons(
                  text: "Back",
                  fun: () {
                    if (Quiz.questionNumber == 0) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) {
                        return const Quiz();
                      }));
                    } else {
                      setState(() {
                        Quiz.questionNumber--;
                      });
                    }
                  }),
              const SizedBox(width: 20),
              MintButtons(
                  text: "Next",
                  fun: () {
                    if (Quiz.questionNumber == 4) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) {
                        return Result();
                      }));
                    } else {
                      setState(() {
                        Quiz.questionNumber++;
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
