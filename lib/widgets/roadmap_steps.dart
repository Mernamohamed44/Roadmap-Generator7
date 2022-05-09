import 'package:flutter/material.dart';
import '../screens/quiz_1.dart';
import '../track_roadmaps.dart';
import 'checkbox.dart';

class RoadmapSteps extends StatefulWidget {
  const RoadmapSteps(this.step, {Key? key}) : super(key: key);
  final int step;

  @override
  // ignore: no_logic_in_create_state
  State<RoadmapSteps> createState() => _RoadmapStepsState(step);
}

bool _isSelected = false;

class _RoadmapStepsState extends State<RoadmapSteps> {
  final int step;

  _RoadmapStepsState(this.step);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        LinkedLabelCheckbox(
          label: trackRoadmaps[Quiz.track]![step - 1]["name"],
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          value: _isSelected,
          onChanged: (bool newValue) {
            setState(() {
              _isSelected = newValue;
            });
          },
          courseLink: trackRoadmaps[Quiz.track]![step - 1]["link"],
          step: step.toString(),
        ),
        const SizedBox(height: 20),
        const Divider(thickness: 2),
      ],
    );
  }
}
