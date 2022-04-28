import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class SemiContainer {
  Widget leftContainer(h, w, m) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: Arc(
            arcType: ArcType.CONVEX,
            edge: Edge.RIGHT,
            height: m,
            clipShadows: [ClipShadow(color: Colors.black)],
            child: Container(
              height: h,
              width: w,
              color: mint,
            ),
          ),
        ),
      ],
    );
  }

  Widget rightContainer(h, w, m) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.bottomRight,
          child: Arc(
            arcType: ArcType.CONVEX,
            edge: Edge.LEFT,
            height: m,
            clipShadows: [ClipShadow(color: Colors.black)],
            child: Container(
              height: h,
              width: w,
              color: mint,
            ),
          ),
        ),
      ],
    );
  }
}
