import 'package:flutter/material.dart';
import 'package:roadmap_generator/colors.dart';
import 'package:roadmap_generator/screens/sign_in.dart';
import 'package:roadmap_generator/screens/sign_up.dart';
import 'package:roadmap_generator/widgets/buttons.dart';
import '../widgets/semicontainer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children:[ Column(
            children: [
              Stack(
                children: [
                  SemiContainer().leftContainer(460.0,160.0,160.0),
                  Center(
                      child: Image.asset(
                        "assets/images/main.png",
                        width: 350,
                        height: 350,
                      )),
                  SemiContainer().rightContainer(350.0,50.0,50.0),
                ],
              ),
            ],
          ),
            const SizedBox(height: 50,),
            buttons(text: 'Sign In',fun: (){
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (_){
                return const SignIn();
              }));
            },),
            const SizedBox(height: 20,),
             buttons(text: 'Sign up',fun: (){
           Navigator.push(context,MaterialPageRoute(builder: (_){
              return const SignUp();
              }));
              },),
            const SizedBox(height: 20,),
             Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child:  buttons(text: 'Exit',fun: (){
              Navigator.pop(context);
                 },),
            )
        ]),
      ),
    );
  }
}
