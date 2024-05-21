import 'package:antd_ui/constants/constants.dart';
import 'package:antd_ui/constants/enums.dart';
import 'package:flutter/material.dart';

class AntdSider extends StatelessWidget {
  /// 宽度，默认：200
  final double? width;

  /// 是否可收起
  final bool? collapsible;

  /// 是否是收起状态
  final bool? collapsed;

  /// 收起状态宽度，默认：80
  final double? collapsedWidth;

  final void Function(bool)? onCollapse;

  /// 主题样式，默认：dark
  final AntdSiderTheme? theme;

  final Widget child;
  const AntdSider({super.key, this.width, this.collapsible, this.collapsed, this.collapsedWidth, this.onCollapse, this.theme, required this.child});

  double calcWidth() {
    if (collapsed!) {
      return collapsedWidth ?? iSiderCollapsedidth;
    }
    return width ?? iSiderWidth;
  }

  List<Widget> buildChildren() {
    List<Widget> list = <Widget>[];
    list.add(child);
    if (collapsible!) list.add(const Text('关闭'));
    return list;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: calcWidth(),
      height: size.height,
      decoration: BoxDecoration(
        color: theme == AntdSiderTheme.light ? iWhite : iBlack,
      ),
      child: Row(
        children: buildChildren(),
      ),
    );
  }
}
