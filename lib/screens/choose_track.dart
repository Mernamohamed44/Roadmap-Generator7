import 'package:flutter/material.dart';
import 'package:roadmap_generator/colors.dart';
class ChooseTrack extends StatelessWidget {
  const ChooseTrack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80,),
            Text('Choose a Track',style: TextStyle(color: mint, fontSize: 25,fontWeight: FontWeight.bold),)
            ,Divider(color: mint,height: 30,thickness: 2,endIndent: 220,indent: 5,),
          ],
        ),
      ),
    );
  }
}
