import 'package:antd_ui/constants.dart';
import 'package:antd_ui/enums.dart';
import 'package:flutter/material.dart';

class AntdSpace extends StatelessWidget {
  /// 对齐方式
  final AntdSpaceAlign? align;

  /// 间距方向
  final AntdSpaceDirection? direction;

  /// 间距大小
  final AntdSpaceSize? size;

  /// 是否自动换行，仅在 horizontal 时有效，默认：false
  final bool? wrap;

  /// 是否是紧凑模式，默认： false（暂未实现功能）
  final bool? compact;

  /// 子节点列表
  final List<Widget> children;

  const AntdSpace({
    super.key,
    this.align,
    this.direction = AntdSpaceDirection.horizontal,
    this.size = AntdSpaceSize.middle,
    this.wrap,
    required this.children,
    this.compact,
  });

  EdgeInsetsGeometry getGap() {
    EdgeInsetsGeometry gapBottom = iGapBottom;
    EdgeInsetsGeometry gapRight = iGapRight;
    EdgeInsetsGeometry gapWrap = const EdgeInsets.only(bottom: iSizeUnit * 2, right: iSizeUnit * 2);
    switch (size) {
      case AntdSpaceSize.small:
        gapBottom = iGapBottomSmall;
        gapRight = iGapRightSmall;
        gapWrap = const EdgeInsets.only(bottom: iSizeUnit, right: iSizeUnit);
        break;
      case AntdSpaceSize.middle:
        gapBottom = iGapBottomMiddle;
        gapRight = iGapRightMiddle;
        gapWrap = const EdgeInsets.only(bottom: iSizeUnit * 3, right: iSizeUnit * 3);
        break;
      case AntdSpaceSize.larger:
        gapBottom = iGapBottomLarger;
        gapRight = iGapRightLarger;
        gapWrap = const EdgeInsets.only(bottom: iSizeUnit * 4, right: iSizeUnit * 4);
        break;
      default:
        break;
    }
    bool isVertical = direction == AntdSpaceDirection.vertical;
    return isVertical
        ? gapBottom
        : wrap != null && wrap!
            ? gapWrap
            : gapRight;
  }

  List<Widget> buildChildren() {
    List<Widget> list = <Widget>[];
    for (var i = 0; i < children.length; i++) {
      if (i == children.length - 1) {
        list.add(children[i]);
      } else {
        list.add(Padding(
          padding: getGap(),
          child: children[i],
        ));
      }
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return direction == AntdSpaceDirection.vertical
        ? Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: buildChildren(),
          )
        : wrap != null && wrap!
            ? Wrap(
                children: buildChildren(),
              )
            : Row(
                children: buildChildren(),
              );
  }
}
