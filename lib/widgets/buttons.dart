
import 'package:flutter/material.dart';
import 'package:roadmap_generator/widgets/text_feild.dart';

import '../colors.dart';

class buttons extends StatelessWidget{
  final String  text;
  final VoidCallback fun;

  const buttons({Key? key, required this.text,required this.fun}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40,right: 40),
      child: Container(
        height: 50,
        width: 200,
        decoration:  const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(19),
          ),

        ),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor:  Colors.white,
              shape: RoundedRectangleBorder(side: const BorderSide(
          color: Colors.grey,
              width: 1,
              style: BorderStyle.solid
          ), borderRadius: BorderRadius.circular(50)),
          ),
          onPressed: fun,
          child: Text(
            text,
            style: TextStyle(color: mint, fontSize: 20),
          ),
        ),
      ),
    );
  }

}