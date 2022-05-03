import 'package:flutter/material.dart';
import 'package:roadmap_generator/colors.dart';
import 'package:roadmap_generator/screens/sign_in.dart';
import 'package:roadmap_generator/screens/sign_up.dart';
import 'package:roadmap_generator/widgets/buttons.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/loginTOPLeft.png",
            alignment: Alignment.topLeft,
            width: 600,
            height: 600,
            fit: BoxFit.contain,
          ),
          Image.asset(
            "assets/images/LoginTopRight.png",
            alignment: Alignment.topRight,
            width: 400,
            height: 400,
            fit: BoxFit.contain,
          ),
          Image.asset(
            "assets/images/main.png",
            width: 450,
            height: 450,
            fit: BoxFit.cover,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Buttons(
                    text: 'Sign In',
                    fun: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) {
                        return const SignIn();
                      }));
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Buttons(
                    text: 'Sign up',
                    fun: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return const SignUp();
                      }));
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Buttons(
                      text: 'Exit',
                      fun: () {
                        Navigator.pop(context);
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
