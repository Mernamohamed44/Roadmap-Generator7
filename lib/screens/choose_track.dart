import 'package:flutter/material.dart';
import 'package:roadmap_generator/colors.dart';
import 'package:roadmap_generator/screens/quiz_1.dart';

import '../widgets/mint_button.dart';
import '../widgets/radiobutton.dart';

class ChooseTrack extends StatefulWidget {
  const ChooseTrack({Key? key}) : super(key: key);

  @override
  State<ChooseTrack> createState() => _ChooseTrackState();
}

class _ChooseTrackState extends State<ChooseTrack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            Text(
              'Choose a Track',
              style: TextStyle(
                  color: mint, fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Divider(
              color: mint,
              height: 30,
              thickness: 2,
              endIndent: 220,
              indent: 5,
            ),
            const SizedBox(
              height: 10,
            ),
            const RadioButton(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MintButtons(
                  text: 'Next',
                  fun: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return const Quiz();
                    }));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
