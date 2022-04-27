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
    return Padding(
      padding: const EdgeInsets.only(left: 25,right: 25,bottom: 20),
      child: SizedBox(
        height: 50,
        child: TextField(
          decoration: InputDecoration(
            label: Text(widget.labelText,style: TextStyle(fontSize:20,color: mint ),),
            fillColor: Colors.white,
            filled: true,
            enabledBorder: const OutlineInputBorder(borderSide: BorderSide()),
            focusedBorder:
            const OutlineInputBorder(borderSide: BorderSide(width: 1)),
          ),
        ),
      ),
    );
  }
}