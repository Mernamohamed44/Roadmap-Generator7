
import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class SemiContainer {
   Widget leftContainer(){
    return Column(
       children: <Widget>[
         Align(
           alignment: Alignment.topLeft,
           child: Arc(
             arcType: ArcType.CONVEX,
             edge: Edge.RIGHT,
             height: 70.0,
             clipShadows: [ClipShadow(color: Colors.black)],
             child:  Container(
               height: 400,
               width: 60,
               color: mint,
             ),
           ),
         ),
       ],
     );
   }

   Widget rightContainer(){
     return Column(
       children: <Widget>[
         Align(
           alignment: Alignment.bottomRight,
           child: Arc(
             arcType: ArcType.CONVEX,
             edge: Edge.LEFT,
             height: 50.0,
             clipShadows: [ClipShadow(color: Colors.black)],
             child:  Container(
               height: 280,
               width: 50,
               color: mint,
             ),
           ),
         ),
       ],
     );
   }
}
