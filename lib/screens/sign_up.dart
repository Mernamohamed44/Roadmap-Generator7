import 'package:flutter/material.dart';
import 'package:roadmap_generator/colors.dart';
import 'package:roadmap_generator/screens/sign_in.dart';

import '../widgets/mint_button.dart';
import '../widgets/text_feild.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
          child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Center(
              child: Text(
            'Sign Up',
            style: TextStyle(
                color: mint, fontSize: 40, fontWeight: FontWeight.bold),
          )),
          Divider(
            color: mint,
            height: 30,
            thickness: 2,
            endIndent: 120,
            indent: 120,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Enter your name',
                    style: TextStyle(
                      color: mint,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(
                  height: 5,
                ),
                const ScreenTextField(''),
                const SizedBox(
                  height: 15,
                ),
                Text('Enter your email address',
                    style: TextStyle(
                      color: mint,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(
                  height: 5,
                ),
                const ScreenTextField(''),
                const SizedBox(
                  height: 15,
                ),
                Text('Create a Password',
                    style: TextStyle(
                      color: mint,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(
                  height: 5,
                ),
                const ScreenTextField(''),
                const SizedBox(
                  height: 15,
                ),
                Text('Confirm a Password',
                    style: TextStyle(
                      color: mint,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(
                  height: 5,
                ),
                const ScreenTextField('')
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              MintButtons(
                text: 'Sign up',
                fun: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const SignIn();
                  }));
                },
              ),
              const SizedBox(
                height: 20,
              ),
              MintButtons(
                text: 'Exit',
                fun: () {
                  Navigator.pop(context);
                },
              )
            ],
          )
        ],
      )),
    );
  }
}
