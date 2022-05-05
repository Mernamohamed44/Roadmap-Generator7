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
      appBar: AppBar(
        title: Text(
          'Choose A Track',
          style: TextStyle(
            color: white,
            fontSize: 24,
          ),
        ),
        backgroundColor: mint,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const RadioButton(),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 40,
                ),
                alignment: Alignment.bottomRight,
                child: MintButtons(
                  text: 'Next',
                  fun: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return const Quiz();
                    }));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
