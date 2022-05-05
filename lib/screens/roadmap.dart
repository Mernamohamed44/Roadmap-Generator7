import 'package:flutter/material.dart';
import 'package:roadmap_generator/colors.dart';
import 'package:roadmap_generator/screens/choose_track.dart';
import 'package:roadmap_generator/screens/main_screen.dart';
import 'package:roadmap_generator/screens/quiz_1.dart';
import 'package:roadmap_generator/widgets/checkbox.dart';
import 'package:roadmap_generator/widgets/mint_button.dart';
import 'package:roadmap_generator/widgets/result_button.dart';

class RoadmapScreen extends StatefulWidget {
  const RoadmapScreen({Key? key}) : super(key: key);

  @override
  State<RoadmapScreen> createState() => _RoadmapScreenState();
}

class _RoadmapScreenState extends State<RoadmapScreen> {
  bool _isSelected = false;
  static int step = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 60),
              Text(
                "Your roadmap to " + Quiz.track,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: mint,
                  fontSize: 36,
                ),
              ),
              Divider(
                color: mint,
                height: 30,
                thickness: 1,
              ),
              LinkedLabelCheckbox(
                label: 'Step (' + step.toString() + '): whatever',
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                value: _isSelected,
                onChanged: (bool newValue) {
                  setState(() {
                    _isSelected = newValue;
                  });
                },
              ),
              const SizedBox(height: 60),
              ResultButton(
                  text: "Choose Another Track",
                  fun: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return const ChooseTrack();
                    }));
                  }),
              const SizedBox(height: 20),
              MintButtons(
                  text: "Log Out",
                  fun: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return const MainScreen();
                    }));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
