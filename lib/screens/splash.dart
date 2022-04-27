import 'package:flutter/material.dart';
import 'package:roadmap_generator/colors.dart';

import '../widgets/semicontainer.dart';
import 'main_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(
        const Duration(
          milliseconds: 6000,
        ),
        () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MainScreen()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      SemiContainer().leftContainer(400.0,60.0,70.0),
                      Center(
                          child: Image.asset(
                        "assets/images/splash.png",
                        width: 350,
                        height: 350,
                      )),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Stack(
                children: [
                  SemiContainer().rightContainer(270.0,50.0,50.0),
                  RotationTransition(
                    turns: const AlwaysStoppedAnimation(10 / 360),
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            'FIND YOUR BEST   ',
                            style: TextStyle(
                                color: mint,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Tapestry-Regular.ttf'),
                          ),
                          Text('ROAD ',
                              style: TextStyle(
                                  color: mint,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Tapestry-Regular.ttf")),
                          Text('TO GET THE BEST',
                              style: TextStyle(
                                  color: mint,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Tapestry-Regular.ttf')),
                          Text('RESULT',
                              style: TextStyle(
                                  color: mint,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Tapestry-Regular.ttf'))
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
