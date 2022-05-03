import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:roadmap_generator/colors.dart';
import 'package:roadmap_generator/screens/sign_in.dart';

import '../Rest/Authentication.dart';
import '../widgets/mint_button.dart';
import '../widgets/text_feild.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
          child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Center(
            child: Text(
              'Sign Up',
              style: TextStyle(
                color: mint,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(
            color: mint,
            height: 20,
            thickness: 2,
            endIndent: 130,
            indent: 130,
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Enter your name',
                  style: TextStyle(
                    color: mint,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                const ScreenTextField(),
                const SizedBox(height: 15),
                Text(
                  'Enter your email address',
                  style: TextStyle(
                    color: mint,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                SizedBox(
                  height: 50,
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: grey,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  'Create a Password',
                  style: TextStyle(
                    color: mint,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                SizedBox(
                  height: 50,
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: grey,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  'Confirm a Password',
                  style: TextStyle(
                    color: mint,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                SizedBox(
                  height: 50,
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 90),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MintButtons(
                text: 'Exit',
                fun: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(width: 20),
              MintButtons(
                text: 'Sign up',
                fun: () {
                  if (kDebugMode) {
                    print(emailController);
                  }
                  Auth()
                      .signUp(emailController.text, passwordController.text)
                      .then(
                        (value) => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) {
                            return const SignIn();
                          }),
                        ),
                      );
                },
              ),
            ],
          )
        ],
      )),
    );
  }
}
