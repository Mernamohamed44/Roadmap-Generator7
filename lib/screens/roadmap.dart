import 'package:flutter/material.dart';
import 'package:roadmap_generator/colors.dart';
import 'package:roadmap_generator/screens/choose_track.dart';
import 'package:roadmap_generator/screens/main_screen.dart';
import 'package:roadmap_generator/screens/quiz_1.dart';
import 'package:roadmap_generator/widgets/mint_button.dart';
import 'package:roadmap_generator/widgets/result_button.dart';
import 'package:roadmap_generator/widgets/roadmap_steps.dart';

class RoadmapScreen extends StatefulWidget {
  const RoadmapScreen({Key? key}) : super(key: key);

  @override
  State<RoadmapScreen> createState() => _RoadmapScreenState();
}

class _RoadmapScreenState extends State<RoadmapScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 40),
              Text(
                "Your roadmap to " + Quiz.track,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: grey,
                  fontSize: 36,
                ),
              ),
              Divider(
                color: grey,
                height: 30,
                thickness: 1,
              ),
              const SizedBox(height: 20),
              const RoadmapSteps(1),
              const RoadmapSteps(2),
              const RoadmapSteps(3),
              const RoadmapSteps(4),
              const RoadmapSteps(5),
              const RoadmapSteps(6),
              const RoadmapSteps(7),
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
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
