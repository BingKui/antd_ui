import 'package:antd_ui/antd_ui.dart';
import 'package:antd_ui/constants/constants.dart';
import 'package:flutter/material.dart';

class AntdDivider extends StatelessWidget {
  /// 包含文本
  final String? text;

  /// 是否是虚线
  final bool? dashed;

  /// 包含文本所在位置，默认：left
  final AntdDividerOrientation? orientation;

  /// 包含文本距离两端的间距，默认：16
  final double? orientationMargin;

  /// 文字是否显示为普通正文样式，默认：false
  final bool? plain;

  /// 水平还是垂直类型，默认：horizontal
  final AntdDividerType? type;

  const AntdDivider({
    super.key,
    this.text,
    this.dashed,
    this.orientation = AntdDividerOrientation.left,
    this.orientationMargin = iSizeUnit * 4,
    this.plain = false,
    this.type = AntdDividerType.horizontal,
  });

  // 生成实线
  Widget renderSolid() {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SizedBox(
          width: constraints.biggest.width,
          height: iLineWidth,
          child: Container(
            decoration: const BoxDecoration(color: iSplitColor),
          ),
        );
      },
    );
  }

  // 生成虚线
  Widget renderDashed() {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.biggest.width;
        double dashWidth = 3.0;
        double dashHeight = 1.0;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: const DecoratedBox(
                decoration: BoxDecoration(color: iSplitColor),
              ),
            );
          }),
        );
      },
    );
  }

  Widget renderText() {
    bool isPlain = plain != null && plain!;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: text != null ? orientationMargin! : 0),
      child: Text(
        text ?? '',
        style: TextStyle(
          color: iTextColor,
          fontSize: isPlain ? iFontSize : iFontSizeLG,
          fontWeight: isPlain ? FontWeight.normal : FontWeight.bold,
        ),
      ),
    );
  }

  Widget renderVerticalLine() {
    return SizedBox(
      height: 14,
      // width: 14,
      child: Center(
        heightFactor: 14,
        child: Container(
          // margin: iGapHorizontal,
          margin: const EdgeInsets.only(top: 2, left: iSizeXS, right: iSizeXS),
          height: 10,
          decoration: const BoxDecoration(
            // color: Colors.amber,
            border: Border(
              left: BorderSide(
                style: iLineSolid,
                color: iSplitColor,
                width: iLineWidth,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget renderHorizontalLine(Size size) {
    bool isDashed = dashed != null && dashed!;
    int left = 1;
    int right = 1;
    switch (orientation) {
      case AntdDividerOrientation.left:
        left = 5;
        right = 95;
        break;
      case AntdDividerOrientation.right:
        left = 95;
        right = 5;
        break;
      default:
        break;
    }
    return SizedBox(
      width: size.width,
      height: iDividerHeight,
      child: Row(
        children: [
          Expanded(
            flex: left,
            child: isDashed ? renderDashed() : renderSolid(),
          ),
          renderText(),
          Expanded(
            flex: right,
            child: isDashed ? renderDashed() : renderSolid(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isVertical = type != null && type == AntdDividerType.vertical;
    return isVertical ? renderVerticalLine() : renderHorizontalLine(size);
  }
}
