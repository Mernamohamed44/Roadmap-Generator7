import 'package:flutter/material.dart';
import 'package:roadmap_generator/colors.dart';

class ScreenTextField extends StatefulWidget {
  final String labelText;
  const ScreenTextField(this.labelText, {Key? key}) : super(key: key);

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
          label: Text(widget.labelText,style: TextStyle(fontSize:20,color: mint ),),
          fillColor: Colors.white,
          filled: true,
          enabledBorder:  OutlineInputBorder(borderRadius:BorderRadius.circular(20) ),
          focusedBorder:
          const OutlineInputBorder(borderSide: BorderSide(width: 1)),
        ),
      ),
    );
  }
}