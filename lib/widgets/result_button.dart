import 'package:flutter/material.dart';
import '../colors.dart';

class ResultButton extends StatelessWidget {
  final String text;
  final VoidCallback fun;

  const ResultButton({Key? key, required this.text, required this.fun})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 270,
      child: ElevatedButton(
        style: TextButton.styleFrom(
          backgroundColor: mint,
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        onPressed: fun,
        child: Text(
          text,
          style: TextStyle(color: white, fontSize: 22),
        ),
      ),
    );
  }
}
