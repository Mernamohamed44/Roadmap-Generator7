import 'package:flutter/material.dart';
import 'package:roadmap_generator/colors.dart';
import 'package:roadmap_generator/screens/sign_in.dart';

import '../Rest/Authentication.dart';
import '../widgets/mint_button.dart';
import '../widgets/text_feild.dart';
import 'dart:io';
import 'package:flutter/services.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    void showDialogError(String message) {
      showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
                title: const Text('An Error Occurred'),
                content: Text(message),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: const Text('OK'))
                ],
              ));
    }

    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: TextStyle(
            color: white,
            fontSize: 24,
          ),
        ),
        backgroundColor: mint,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
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
                    color: grey,
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
                    color: grey,
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
                    color: grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                SizedBox(
                  height: 50,
                  child: TextField(
                    obscureText: true,
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
                    color: grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                SizedBox(
                  height: 50,
                  child: TextField(
                    obscureText: true,
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
                  if (Platform.isAndroid) {
                    SystemNavigator.pop();
                  } else if (Platform.isIOS) {
                    exit(0);
                  }
                },
              ),
              const SizedBox(width: 20),
              MintButtons(
                text: 'Sign up',
                fun: () async {
                  try {
                    await Auth()
                        .signUp(emailController.text, passwordController.text)
                        .then(
                          (value) => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) {
                              return const SignIn();
                            }),
                          ),
                        );
                  } catch (error) {
                    var errorMessage = 'Authentication failed';
                    if (error.toString().contains('EMAIl_EXISTS')) {
                      errorMessage = 'This email address is already use';
                    } else if (error.toString().contains('INVALID_EMAIL')) {
                      errorMessage = 'This is not email address ';
                    } else if (error.toString().contains('WEAK_PASSWORD')) {
                      errorMessage = 'This password is too weak ';
                    } else if (error.toString().contains('EMAIL_NOT_FOUND')) {
                      errorMessage = 'Can not find user with this email ';
                    } else if (error.toString().contains('INVALID_PASSWORD')) {
                      errorMessage = 'Invalid password ';
                    }
                    showDialogError(errorMessage);
                  }
                },
              ),
            ],
          )
        ],
      )),
    );
  }
}
