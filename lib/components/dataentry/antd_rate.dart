import 'package:antd_ui/antd_ui.dart';
import 'package:antd_ui/constants.dart';
import 'package:flutter/material.dart';

class AntdRate extends StatefulWidget {
  final bool? allowClear;
  final bool? allowHalf;
  final bool? autoFocus;
  final IconData? icon;
  final int? count;
  final bool? disabled;
  final List<String>? tooltips;
  final int? defalutValue;
  final int? value;
  final VoidCallback? onFocus;
  final VoidCallback? onBlur;
  final void Function(int)? onChange;
  final void Function(int)? onHoverChange;
  final void Function(int)? onKeyDown;
  const AntdRate({
    super.key,
    this.allowClear = true,
    this.allowHalf = false,
    this.autoFocus = false,
    this.icon,
    this.count = 5,
    this.disabled = false,
    this.tooltips,
    this.defalutValue = 0,
    this.value,
    this.onFocus,
    this.onBlur,
    this.onChange,
    this.onHoverChange,
    this.onKeyDown,
  });

  @override
  State<AntdRate> createState() => _AntdRateState();
}

class _AntdRateState extends State<AntdRate> {
  int star = 0;
  int hoverStar = 0;
  @override
  void initState() {
    super.initState();
    setState(() {
      star = widget.defalutValue ?? 0;
    });
  }

  List<Widget> buildStar() {
    List<Widget> list = <Widget>[];
    for (int i = 0; i < widget.count!; i++) {
      int targetVal = i + 1;
      bool isActive = star < targetVal || hoverStar <= targetVal;
      list.add(InkWell(
        onHover: (hover) {
          setState(() {
            hoverStar = hover ? targetVal : 0;
          });
        },
        onTap: () {},
        child: AntdIcon(
          widget.icon ?? AntdIconData.starfill,
          color: isActive ? iWarnBg : iFillColor,
        ),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: buildStar(),
    );
  }
}
