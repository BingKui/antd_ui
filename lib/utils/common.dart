import 'package:antd_ui/constants.dart';
import 'package:flutter/material.dart';

/// 通过类型返回对应的颜色
Color getColorByThemeType(String? type, {Color? baseColor}) {
  if (type == null) return baseColor ?? iBlack;
  Color color = iBlack;
  switch (type) {
    case 'normal':
      color = iBlack;
      break;
    case 'primary':
      color = iPrimaryText;
      break;
    case 'secondary':
      color = iTextSecondaryColor;
      break;
    case 'success':
      color = iSuccessText;
      break;
    case 'warning':
      color = iWarnText;
      break;
    case 'danger':
      color = iErrorText;
      break;
    case 'disable':
      color = iTextDisabledColor;
      break;
  }
  return color;
}
