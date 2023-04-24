import 'package:antd_ui/constants.dart';
import 'package:antd_ui/enums.dart';
import 'package:flutter/material.dart';

class AntdButton extends StatefulWidget {
  final String? text;
  final VoidCallback? onClick;

  /// 是否是块级按钮，默认：false
  final bool? block;

  /// 是否危险按钮，默认：false
  final bool? danger;

  /// 是否禁用，默认：false
  final bool? disabled;

  /// 是否是幽灵按钮，默认：false
  final bool? ghost;

  /// 是否是幽灵按钮，默认：false
  final String? href;

  /// 按钮图标
  final IconData? icon;

  /// 是否加载中，默认：false
  final bool? loading;

  /// 按钮形状，默认为：normal
  final AntdButtonShape? shape;

  /// 按钮大小，默认：middle
  final AntdButtonSize? size;

  /// 按钮类型，默认：normal
  final AntdButtonType? type;

  /// 语义描述信息，无障碍信息
  final String? semanticLabel;

  const AntdButton({
    super.key,
    this.block = false,
    this.danger = false,
    this.disabled = false,
    this.ghost = false,
    this.href,
    this.icon,
    this.loading = false,
    this.shape = AntdButtonShape.normal,
    this.size = AntdButtonSize.middle,
    this.type = AntdButtonType.normal,
    this.text,
    this.onClick,
    this.semanticLabel,
  });

  @override
  State<AntdButton> createState() => _AntdButtonState();
}

class _AntdButtonState extends State<AntdButton> {
  bool isHover = false;
  // 按钮字体
  double btnFontSize() {
    switch (widget.size!) {
      case AntdButtonSize.small:
        return iFontSizeSM;
      case AntdButtonSize.middle:
        return iFontSize;
      case AntdButtonSize.larger:
        return iFontSizeLG;
    }
  }

  Color btnTextColor() {
    if (widget.disabled!) return iTextDisabledColor;
    Color textColor = isHover ? iPrimaryTextHover : iTextColor;
    Color errorColor = isHover ? iErrorTextHover : iErrorText;
    if (widget.type! == AntdButtonType.primary) {
      textColor = iWhite;
      if (widget.ghost!) textColor = widget.danger! ? errorColor : iPrimaryText;
    }
    if (widget.type! == AntdButtonType.link) {
      textColor = widget.danger! ? errorColor : (isHover ? iPrimaryTextHover : iPrimary);
    }
    if (widget.type! == AntdButtonType.text) {
      textColor = widget.danger! ? errorColor : iTextColor;
    }
    return textColor;
  }

  Color btnBgColor() {
    bool isPrimary = widget.type! == AntdButtonType.primary;
    bool isLink = widget.type! == AntdButtonType.link;
    bool isText = widget.type! == AntdButtonType.text;
    bool isDisabled = widget.disabled!;
    if (isText) return isDisabled ? iTransparent : (isHover ? (widget.danger! ? iErrorBgHover : iFillSecondaryColor) : iTransparent);
    if (isLink || isText) return iTransparent;
    if (widget.ghost!) return widget.disabled! ? iDisabledBgColor : iTransparent;
    if (widget.disabled!) return iDisabledBgColor;
    // if (widget.danger!) return iWarnBg;
    if (isPrimary) return widget.danger! ? iError : iPrimary;
    return iWhite;
  }

  // Color btnHoverBgColor() {
  //   bool isPrimary = widget.type! == AntdButtonType.primary;
  //   bool isLink = widget.type! == AntdButtonType.link;
  //   bool isText = widget.type! == AntdButtonType.text;
  //   if (isLink) return iTransparent;
  //   if (widget.disabled!) return isText ? iTransparent : iDisabledBgColor;
  //   if (isText) return widget.danger! ? iErrorBgHover : iFillSecondaryColor;
  //   if (widget.ghost!) return iTransparent;
  //   if (isPrimary) return iPrimaryHover;
  //   return iTransparent;
  // }

  BorderSide btnBorderSide() {
    bool isPrimary = widget.type! == AntdButtonType.primary;
    bool isLink = widget.type! == AntdButtonType.link;
    bool isText = widget.type! == AntdButtonType.text;
    if (isLink || isText) return BorderSide.none;
    Color color = widget.disabled! ? iDisabledBgColor : (isHover ? iPrimaryHover : iBorderColor);
    BorderStyle style = iLineSolid;
    if (isPrimary) {
      style = iLineNone;
    }
    if (widget.ghost!) {
      style = iLineSolid;
      color = widget.disabled! ? iDisabledBgColor : (widget.danger! ? iError : (isPrimary ? iPrimary : iBorderColor));
    }
    return BorderSide(color: color, width: iLineWidth, style: style);
  }

  Radius btnRadius() {
    double radius = iRadius;
    bool isSM = widget.size! == AntdButtonSize.small;
    bool isLG = widget.size! == AntdButtonSize.larger;
    switch (widget.shape!) {
      case AntdButtonShape.normal:
      case AntdButtonShape.round:
        radius = isSM ? iRadiusSM : (isLG ? iRadiusLG : iRadius);
        break;
      case AntdButtonShape.circle:
        radius = isSM ? iHeightSM : (isLG ? iHeightLG : iHeight);
        break;
    }
    return Radius.circular(radius);
  }

  Size btnSize(Size boxSize) {
    bool isSM = widget.size! == AntdButtonSize.small;
    bool isLG = widget.size! == AntdButtonSize.larger;
    double height = isSM ? iHeightSM : (isLG ? iHeightLG : iHeight);
    double width = widget.block! ? boxSize.width : double.infinity;
    return Size(width, height);
  }

  @override
  Widget build(BuildContext context) {
    Size boxSize = MediaQuery.of(context).size;
    return Semantics(
      label: widget.semanticLabel,
      child: ElevatedButton(
        onPressed: () {
          if (widget.onClick != null) widget.onClick?.call();
        },
        onHover: (isHovered) {
          setState(() {
            isHover = isHovered;
          });
        },
        style: ButtonStyle(
          mouseCursor: MaterialStateProperty.all(widget.disabled! ? SystemMouseCursors.forbidden : SystemMouseCursors.click),
          fixedSize: MaterialStateProperty.all(btnSize(boxSize)),
          // minimumSize: MaterialStateProperty.all(btnSize(boxSize)),
          // maximumSize: MaterialStateProperty.all(Size(boxSize.width, iHeightLG)),
          // padding: MaterialStateProperty.all(isIconBtn ? iGapZero : iGapHorizontalLarger),
          // 阴影
          shadowColor: MaterialStateProperty.all(iTransparent),
          // 背景色
          backgroundColor: MaterialStateProperty.all(btnBgColor()),
          // hover背景色
          // overlayColor: MaterialStateProperty.all(btnHoverBgColor()),
          // foregroundColor: MaterialStateProperty.all(buttonBackgroundColor()),
          // 圆角
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(btnRadius()),
            ),
          ),
          // 边框
          side: MaterialStateProperty.all(btnBorderSide()),
        ),
        child: Text(
          widget.text ?? '',
          style: TextStyle(
            fontSize: btnFontSize(),
            color: btnTextColor(),
            // color: buttonTextColor,
          ),
        ),
      ),
    );
  }
}
