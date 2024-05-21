import 'package:antd_ui/antd_ui.dart';
import 'package:antd_ui/constants/constants.dart';
import 'package:antd_ui/utils/text.dart';
import 'package:flutter/material.dart';

class AntdParagraph extends StatelessWidget {
  /// 文本内容
  final String? content;

  /// 文本内容
  final List<AntdText>? contentList;

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

  /// 是否添加标记样式
  final bool? mark;

  /// 是否加粗
  final bool? strong;

  /// 是否斜体
  final bool? italic;

  /// 是否添加下换线
  final bool? underline;

  /// 文本类型
  final AntdTypofraphyType? type;

  /// 点击方法
  final VoidCallback? onClick;

  const AntdParagraph({
    super.key,
    this.code,
    this.copyable,
    this.delete,
    this.disabled,
    this.editable,
    this.ellipsis,
    this.mark,
    this.strong,
    this.italic,
    this.underline,
    this.type,
    this.onClick,
    this.content,
    this.contentList,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isCode = code != null && code!;
    bool isMark = mark != null && mark!;
    bool isContentList = contentList != null && contentList!.isNotEmpty;
    return Container(
      constraints: BoxConstraints(
        minWidth: size.width,
        maxWidth: size.width,
      ),
      padding: EdgeInsets.only(
        left: isMark ? iSizeXS : (isCode ? iSizeXS : 0),
        right: isCode ? iSizeXS : 0,
        top: isCode ? iSizeXS : 0,
        bottom: isCode ? iSizeXS : 0,
      ),
      margin: iGapBottomLarger,
      decoration: BoxDecoration(
        border: isMark
            ? const Border(
                left: BorderSide(
                  color: iBorderColor,
                  width: iLineWidth * 3,
                  style: iLineSolid,
                ),
              )
            : (isCode ? iBorder : iBorderNone),
        color: isCode ? iFillTertiaryColor : iTransparent,
        borderRadius: isCode ? iBorderRadius : null,
      ),
      child: isContentList
          ? Wrap(
              alignment: WrapAlignment.start,
              children: contentList!,
            )
          : Text(
              content ?? '',
              maxLines: 999999,
              softWrap: true,
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
