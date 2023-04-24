import 'package:antd_ui/antd_ui.dart';
import 'package:antd_ui/constants.dart';
import 'package:antd_ui/utils/text.dart';
import 'package:flutter/material.dart';

class AntdTitle extends StatelessWidget {
  /// 文本内容
  final String title;

  /// 是否添加代码样式
  final bool? code;

  /// 是否可以复制
  final bool? copyable;

  /// 是否添加删除样式
  final bool? delete;

  /// 是否添加禁用样式
  final bool? disabled;

  /// 是否可编辑，未实现
  final bool? editable;

  /// 是否自动溢出省略
  final bool? ellipsis;

  /// 是否添加键盘样式
  // final bool? keyboard;

  /// 是否添加标记样式
  final bool? mark;

  // /// 是否加粗
  // final bool? strong;

  /// 是否斜体
  final bool? italic;

  /// 是否添加下换线
  final bool? underline;

  /// 最多支持行数， 默认：9999
  final int? maxLines;

  /// 文本类型
  final AntdTypofraphyType? type;

  /// 标题等级，默认：h1
  final AntdTitleLevel? level;

  /// 点击方法
  final VoidCallback? onClick;

  const AntdTitle(
    this.title, {
    super.key,
    this.code,
    this.copyable,
    this.delete,
    this.disabled,
    this.editable,
    this.ellipsis,
    this.mark,
    this.italic,
    this.underline,
    this.type,
    this.onClick,
    this.level = AntdTitleLevel.h1,
    this.maxLines = 9999,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isCode = code != null && code!;
    return Container(
      constraints: BoxConstraints(
        minWidth: size.width,
      ),
      padding: EdgeInsets.only(
        left: isCode ? iSizeUnit : 0,
        right: isCode ? iSizeUnit : 0,
        top: iSizeXL,
        bottom: iSize,
      ),
      decoration: BoxDecoration(
        border: isCode ? iBorder : iBorderNone,
        color: getTextBackgroundColor(mark, disabled, false),
        borderRadius: isCode ? iBorderRadius : iBorderRadiusNone,
      ),
      child: Text(
        title,
        overflow: getTextOverflow(ellipsis),
        maxLines: maxLines,
        style: TextStyle(
          fontSize: getFontSize(level),
          fontWeight: getFontWeight(true),
          color: getTextColor(type, disabled, mark),
          fontStyle: getFontStyle(italic),
          decoration: getTextDecoration(underline, delete),
        ),
      ),
    );
  }
}
