import 'package:flutter/material.dart';
import 'package:roadmap_generator/colors.dart';
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
          milliseconds: 3000,
        ),
        () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const MainScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "assets/images/splash_mostleft.png",
                width: 100,
                height: 700,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                "assets/images/splashBottomRight.png",
                width: 100,
                height: 500,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 20,
              child: Image.asset(
                "assets/images/splash.png",
                width: 450,
                height: 450,
              ),
            ),
            Positioned(
              top: 500,
              right: 75,
              child: RotationTransition(
                turns: const AlwaysStoppedAnimation(10 / 360),
                child: Center(
                  child: Text(
                    'FIND YOUR BEST \n ROAD \n TO GET THE BEST \n RESULT ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: mint,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Tapestry-Regular.ttf'),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
