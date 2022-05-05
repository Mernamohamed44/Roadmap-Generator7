import 'package:flutter/material.dart';
import 'package:roadmap_generator/colors.dart';
import 'package:roadmap_generator/screens/quiz_2.dart';
import 'package:roadmap_generator/widgets/mint_button.dart';

class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  static int index = 0;

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
            Text(
                'Why this quiz?',
                style: TextStyle(
                  fontSize: 28,
                  color: mint,
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
                )), Text(
                'Notes to be considered: ',
                style: TextStyle(
                  fontSize: 28,
                  color: mint,
                )),
            const SizedBox(
              height: 12,
            ),
            Text('- Take your time to think before answering the question. \n'
                '- You can always  go back to a certain question by clicking the back button.',

                style: TextStyle(

                  fontSize: 20,
                  color: darkGrey,
                )),
            // Text(
            //     '- You can always  go back to a certain question by clicking the back button.',
            //     style: TextStyle(
            //       fontSize: 20,
            //       color: darkGrey,
            //     )),
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
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
