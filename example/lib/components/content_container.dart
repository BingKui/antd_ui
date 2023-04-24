import 'package:example/constants.dart';
import 'package:flutter/material.dart';

class ContentContainer extends StatelessWidget {
  const ContentContainer({
    Key? key,
    required this.child,
    this.title = '',
  }) : super(key: key);

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: iGapBox,
      padding: iGapAll,
      decoration: BoxDecoration(
        border: iBorder,
        color: iWhite,
      ),
      child: Column(
        children: [
          SizedBox(
            width: size.width,
            child: Text(
              title,
              style: iTitleTextBoldStyle,
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: iGapTop,
            child: child,
          ),
        ],
      ),
    );
  }
}
