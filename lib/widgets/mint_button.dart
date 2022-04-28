import 'package:flutter/material.dart';
import '../colors.dart';
class MintButtons extends StatelessWidget{
  final String  text;
  final VoidCallback fun;

  const MintButtons({Key? key, required this.text,required this.fun}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 70,
        width: 120,
        decoration:  const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(19),
          ),

        ),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor:  mint,
            shape: RoundedRectangleBorder(side: const BorderSide(
                color: Colors.grey,
                width: 1,
                style: BorderStyle.solid
            ), borderRadius: BorderRadius.circular(20)),
          ),
          onPressed: fun,
          child: Text(
            text,
            style: TextStyle(color: white, fontSize: 20),
          ),
        ),
      ),
    );
  }

}