import 'package:antd_ui/antd_ui.dart';
import 'package:antd_ui/constants.dart';
import 'package:antd_ui/utils/text.dart';
import 'package:flutter/material.dart';

class AntdText extends StatelessWidget {
  /// 文本内容
  final String text;

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
  final bool? keyboard;

  /// 是否添加标记样式
  final bool? mark;

  /// 是否加粗
  final bool? strong;

  /// 是否斜体
  final bool? italic;

  /// 是否添加下换线
  final bool? underline;

  /// 最多支持行数， 默认：9999
  final int? maxLines;

  /// 文本类型
  final AntdTypofraphyType? type;

  /// 点击方法
  final VoidCallback? onClick;

  const AntdText(
    this.text, {
    super.key,
    this.code,
    this.copyable,
    this.delete,
    this.disabled,
    this.editable,
    this.ellipsis,
    this.keyboard,
    this.mark,
    this.strong,
    this.italic,
    this.underline,
    this.type,
    this.onClick,
    this.maxLines = 9999,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isCode = code != null && code!;
    bool isKeyboard = keyboard != null && keyboard!;
    // 如果是普通文本直接返回一个普通文本组件
    if (!isCode && !isKeyboard) {
      return Text(
        text,
        overflow: getTextOverflow(ellipsis),
        maxLines: maxLines ?? 999999,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: iFontSize,
          fontWeight: getFontWeight(strong),
          color: getTextColor(type, disabled, mark),
          fontStyle: getFontStyle(italic),
          decoration: getTextDecoration(underline, delete),
          backgroundColor: getTextBackgroundColor(mark, false, false),
        ),
      );
    }
    return Container(
      constraints: BoxConstraints(
        // minWidth: size.width,
        maxWidth: size.width,
      ),
      padding: EdgeInsets.only(
        left: isCode || isKeyboard ? iSizeXXS : 0,
        right: isCode || isKeyboard ? iSizeXXS : 0,
        top: isCode || isKeyboard ? iSizeXXS : 0,
        bottom: isCode || isKeyboard ? iSizeXXS : 0,
      ),
      // margin: isCode ? iGapHorizontal : null,
      decoration: BoxDecoration(
        border: isCode
            ? iBorder
            : (isKeyboard
                ? const Border(
                    left: iBorderSide,
                    right: iBorderSide,
                    top: iBorderSide,
                    bottom: iBorderSideDouble,
                  )
                : iBorderNone),
        color: getTextBackgroundColor(mark, code, keyboard),
        borderRadius: isCode || isKeyboard ? iBorderRadius : iBorderRadiusNone,
      ),
      child: Text(
        text,
        overflow: getTextOverflow(ellipsis),
        maxLines: maxLines ?? 999999,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: iFontSize,
          fontWeight: getFontWeight(strong),
          color: getTextColor(type, disabled, mark),
          fontStyle: getFontStyle(italic),
          decoration: getTextDecoration(underline, delete),
        ),
      ),
    );
  }
}
