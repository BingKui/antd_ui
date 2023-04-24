import 'package:antd_ui/antd_ui.dart';
import 'package:flutter/material.dart';
import 'package:example/constants.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key? key,
    required this.press,
    required this.title,
    required this.desc,
    required this.btnText,
  }) : super(key: key);

  final String title, desc, btnText;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: iGapBox,
      child: AntdCard(
        title: title,
        hoverable: true,
        extra: AntdButton(
          onClick: press,
          text: btnText,
          type: AntdButtonType.primary,
        ),
        content: Text(
          desc,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: iContentTextStyle,
        ),
      ),
    );
  }
}
