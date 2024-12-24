

import 'package:flutter/material.dart';

class TopRankWidget extends StatelessWidget {

  late String assetName;
  late double assetHeight;

  TopRankWidget({required this.assetName , required this.assetHeight});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Duration(seconds: 3),
      tween: Tween<double>(begin: 0.0, end: assetHeight),
      builder: (context, double value, child) {
        return Container(
          // width: 90,
          height: value,
          child: Image.asset(
            assetName,
            // fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}