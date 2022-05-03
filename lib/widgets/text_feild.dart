import 'package:flutter/material.dart';
import 'package:roadmap_generator/colors.dart';


class ScreenTextField extends StatefulWidget {
   const ScreenTextField( {Key? key}) : super(key: key);

  @override
  State<ScreenTextField> createState() => _ScreenTextFieldState();
}

class _ScreenTextFieldState extends State<ScreenTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,

      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          enabledBorder:  OutlineInputBorder(borderRadius:BorderRadius.circular(10) ),
          focusedBorder:
           OutlineInputBorder(borderSide: BorderSide(width: 1,color: grey,),),
        ),
      ),
    );
  }
}