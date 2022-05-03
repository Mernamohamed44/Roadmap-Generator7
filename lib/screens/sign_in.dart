import 'package:flutter/material.dart';
import 'package:roadmap_generator/colors.dart';
import '../Rest/Authentication.dart';
import '../widgets/mint_button.dart';
import 'choose_track.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

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
                'Sign In',
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
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Enter your email',
                      style: TextStyle(
                        color: mint,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(
                    height: 6,
                  ),
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
                  const SizedBox(
                    height: 15,
                  ),
                  Text('Enter your Password',
                      style: TextStyle(
                        color: mint,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(
                    height: 6,
                  ),
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
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            MintButtons(
              text: 'Sign In',
              fun: () {
                Auth()
                    .signIn(emailController.text, passwordController.text)
                    .then((value) =>
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return const ChooseTrack();
                        })));
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
        ),
      ),
    );
  }
}
