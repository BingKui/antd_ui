import 'package:antd_ui/constants.dart';
import 'package:antd_ui/enums.dart';
import 'package:flutter/material.dart';

/// 根据文本等级返回字体大小
double getFontSize(AntdTitleLevel? level) {
  double fontSize = iFontSize;
  if (level == null) return fontSize;
  switch (level) {
    case AntdTitleLevel.h1:
      fontSize = iFontSizeH1;
      break;
    case AntdTitleLevel.h2:
      fontSize = iFontSizeH2;
      break;
    case AntdTitleLevel.h3:
      fontSize = iFontSizeH3;
      break;
    case AntdTitleLevel.h4:
      fontSize = iFontSizeH4;
      break;
    case AntdTitleLevel.h5:
      fontSize = iFontSizeH5;
      break;
  }
  return fontSize;
}

/// 获取文本的装饰样式
TextDecoration getTextDecoration(bool? underline, bool? delete) {
  if (underline != null && underline) {
    return TextDecoration.underline;
  }
  if (delete != null && delete) {
    return TextDecoration.lineThrough;
  }
  return TextDecoration.none;
}

/// 获取文字截取方式
TextOverflow getTextOverflow(bool? ellipsis) {
  if (ellipsis == null) return TextOverflow.clip;
  return ellipsis ? TextOverflow.ellipsis : TextOverflow.clip;
}

/// 获取字重
FontWeight getFontWeight(bool? strong) {
  if (strong == null) return FontWeight.normal;
  return strong ? FontWeight.bold : FontWeight.normal;
}

/// 获取字体样式
FontStyle getFontStyle(bool? italic) {
  if (italic == null) return FontStyle.normal;
  return italic ? FontStyle.italic : FontStyle.normal;
}

/// 获取字体颜色
Color getTextColor(AntdTypofraphyType? type, bool? disabled, bool? mark) {
  Color color = iTextBaseColor;
  if (disabled != null && disabled) return iTextDisabledColor;
  if (mark != null && mark) return iTextSecondaryColor;
  if (type == null) return color;
  switch (type) {
    case AntdTypofraphyType.secondary:
      color = iTextSecondaryColor;
      break;
    case AntdTypofraphyType.success:
      color = iSuccessText;
      break;
    case AntdTypofraphyType.warning:
      color = iWarnText;
      break;
    case AntdTypofraphyType.danger:
      color = iErrorText;
      break;
  }
  return color;
}

/// 获取字体背景颜色
Color getTextBackgroundColor(bool? mark, bool? code, bool? keyboard) {
  if (mark != null && mark) return iWarnBg;
  if (code != null && code) return iFillTertiaryColor;
  if (keyboard != null && keyboard) return iFillQuaternaryColor;
  return iTransparent;
}
