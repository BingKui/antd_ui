import 'package:example/constants.dart';
import 'package:flutter/material.dart';

class ColorBlock extends StatelessWidget {
  /// 色块，主要用来展示
  const ColorBlock({Key? key, this.text}) : super(key: key);
  final String? text;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double parantWidth = constraints.biggest.width;
        return Container(
          width: parantWidth,
          height: 40.0,
          decoration: const BoxDecoration(color: iBackgroundColor),
          child: Center(
            child: Text('$text'),
          ),
        );
      },
    );
  }
}
