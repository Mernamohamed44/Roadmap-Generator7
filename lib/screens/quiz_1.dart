import 'package:flutter/material.dart';
import 'package:roadmap_generator/colors.dart';
import 'package:roadmap_generator/widgets/mint_button.dart';

class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              Text(
                'Flutter quiz',
                style: TextStyle(
                    color: mint, fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Divider(
                color: mint,
                height: 30,
                thickness: 2,
                endIndent: 220,
                indent: 5,
              ),
              const Text('Why this quiz is important in 1-2 lines ..',
                  style: TextStyle(fontSize: 20)),
              const SizedBox(
                height: 5,
              ),
              const Text('notes to be considered:',
                  style: TextStyle(fontSize: 20)),
              const SizedBox(
                height: 5,
              ),
              const Text('1-think will before answer',
                  style: TextStyle(fontSize: 20)),
              const Text('2-you can back to a certain Q by click back button',
                  style: TextStyle(fontSize: 20)),
              const SizedBox(
                height: 20,
              ),
              Center(child: MintButtons(text: 'Take Quiz', fun: () {}))
            ],
          ),
        ),
      ),
    );
  }
}
