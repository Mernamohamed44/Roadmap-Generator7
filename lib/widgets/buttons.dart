import 'package:flutter/material.dart';
import '../colors.dart';
class Buttons extends StatelessWidget {
  final String text;
  final VoidCallback fun;
  const Buttons({Key? key, required this.text, required this.fun})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: Container(
        height: 60,
        width: 400,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(19),
          ),
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                side:  BorderSide(
                    color: darkGrey, width: 1, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20)),
          ),
          onPressed: fun,
          child: Text(
            text,
            style: TextStyle(color: mint, fontSize: 30,fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
