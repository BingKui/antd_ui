import 'package:flutter/material.dart';

// 变量
// 基础变量 - 需要用到的变量
// 基础单位
const double iSizeUnit = 4.0;
const double iSizeXXS = iSizeUnit;
const double iSizeXS = iSizeUnit * 2;
const double iSizeSM = iSizeUnit * 3;
const double iSize = iSizeUnit * 4; // 默认尺寸
const double iSizeMS = iSizeUnit * 4;
const double iSizeMD = iSizeUnit * 5;
const double iSizeLG = iSizeUnit * 6;
const double iSizeXL = iSizeUnit * 8;
const double iSizeXXL = iSizeUnit * 12;
// 高度
const double iHeightXS = 16.0;
const double iHeightSM = 24.0;
const double iHeight = 32.0;
const double iHeightLG = 40.0;

// 颜色 - 色卡
// 定义颜色
const iPrimary = Color(0xFF1677ff);
const iPrimaryLight = Color(0xFFe6f4ff);
const iPrimaryDark = Color(0xFF2b85e4);
const iInfo = Color(0xFF2db7f5);
const iSuccess = Color(0xFF52c41a);
const iWarn = Color(0xFFfaad14);
const iError = Color(0xFFff4d4f);

// 主题相关颜色
// Primary
const iPrimaryActive = Color(0xFF0958d9);
const iPrimaryBg = Color(0xFFe6f4ff);
const iPrimaryBgHover = Color(0xFFbae0ff);
const iPrimaryBorder = Color(0xFF91caff);
const iPrimaryBorderHover = Color(0xFF69b1ff);
const iPrimaryHover = Color(0xFF4096ff);
const iPrimaryText = Color(0xFF1677ff);
const iPrimaryTextActive = Color(0xFF0958d9);
const iPrimaryTextHover = Color(0xFF4096ff);

// Info
const iInfoActive = Color(0xFF0958d9);
const iInfoBg = Color(0xFFe6f4ff);
const iInfoBgHover = Color(0xFFbae0ff);
const iInfoBorder = Color(0xFF91caff);
const iInfoBorderHover = Color(0xFF69b1ff);
const iInfoHover = Color(0xFF69b1ff);
const iInfoText = Color(0xFF1677ff);
const iInfoTextActive = Color(0xFF0958d9);
const iInfoTextHover = Color(0xFF4096ff);
// Success
const iSuccessActive = Color(0xFF389e0d);
const iSuccessBg = Color(0xFFf6ffed);
const iSuccessBgHover = Color(0xFFd9f7be);
const iSuccessBorder = Color(0xFFb7eb8f);
const iSuccessBorderHover = Color(0xFF95de64);
const iSuccessHover = Color(0xFF95de64);
const iSuccessText = Color(0xFF52c41a);
const iSuccessTextActive = Color(0xFF389e0d);
const iSuccessTextHover = Color(0xFF73d13d);
// Warn
const iWarnActive = Color(0xFFd48806);
const iWarnBg = Color(0xFFfffbe6);
const iWarnBgHover = Color(0xFFfff1b8);
const iWarnBorder = Color(0xFFffe58f);
const iWarnBorderHover = Color(0xFFffd666);
const iWarnHover = Color(0xFFffd666);
const iWarnText = Color(0xFFfaad14);
const iWarnTextActive = Color(0xFFd48806);
const iWarnTextHover = Color(0xFFffc53d);
// Error
const iErrorActive = Color(0xFFd9363e);
const iErrorBg = Color(0xFFfff2f0);
const iErrorBgHover = Color(0xFFfff1f0);
const iErrorBorder = Color(0xFFffccc7);
const iErrorBorderHover = Color(0xFFffa39e);
const iErrorHover = Color(0xFFff7875);
const iErrorText = Color(0xFFff4d4f);
const iErrorTextActive = Color(0xFFd9363e);
const iErrorTextHover = Color(0xFFff7875);

// 颜色-其他内容颜色
const iTextBaseColor = Color.fromRGBO(0, 0, 0, 1);
const iBorderColor = Color(0xffd9d9d9);
const iBorderLightColor = Color(0xfff0f0f0);
const iDisabledBgColor = Color.fromRGBO(0, 0, 0, .04);
const iSplitColor = Color.fromRGBO(5, 5, 5, .06);
// 文本颜色
const iTextColor = Color.fromRGBO(0, 0, 0, .88);
const iTextSecondaryColor = Color.fromRGBO(0, 0, 0, .65);
const iTextTertiaryColor = Color.fromRGBO(0, 0, 0, .45);
const iTextQuaternaryColor = Color.fromRGBO(0, 0, 0, .25);
const iTextDescColor = Color.fromRGBO(0, 0, 0, .45);
const iTextDisabledColor = Color.fromRGBO(0, 0, 0, .25);
const iTextHeadingColor = Color.fromRGBO(0, 0, 0, .88);
const iTextLabelColor = Color.fromRGBO(0, 0, 0, .65);
const iTextPlaceholderColor = Color.fromRGBO(0, 0, 0, .25);
// 填充颜色
const iFillColor = Color.fromRGBO(0, 0, 0, .15);
const iFillSecondaryColor = Color.fromRGBO(0, 0, 0, .06);
const iFillTertiaryColor = Color.fromRGBO(0, 0, 0, .04);
const iFillQuaternaryColor = Color.fromRGBO(0, 0, 0, .02);
// 背景色
const iMaskBgColor = Color.fromRGBO(0, 0, 0, .45);
const iSpotlightBgColor = Color.fromRGBO(0, 0, 0, .85);
// const iTitleColor = Color(0xFF17233d);
// const iSubTitleColor = Color(0xFF808695);
// const iContentColor = Color(0xFF515a6e);
// const iDisableColor = Color(0xFFc5c8ce);
// const iDividerColor = Color(0xFFe8eaec);
// 灰度色卡
const iBlack = Colors.black;
const iWhite = Colors.white;
const iTransparent = Colors.transparent;
// const iGray = Color(0xFFCCCCCC);
// const iGrayLight = Color(0xFFe5e5e5);
// const iGrayLighter = Color(0xFFf3f3f3);
// const iGrayDark = Color(0xFF999999);

// 字体相关
// 字体大小
const iFontSizeSM = 12.0;
const iFontSize = 14.0;
const iFontSizeLG = 16.0;
const iFontSizeXL = 20.0;
const iFontSizeH1 = 38.0;
const iFontSizeH2 = 30.0;
const iFontSizeH3 = 24.0;
const iFontSizeH4 = 20.0;
const iFontSizeH5 = 16.0;

// 间距相关

// border 相关
// 分割线等的宽度
const double iLineWidth = 1.0;
// 分割线的类型
const BorderStyle iLineSolid = BorderStyle.solid;
const BorderStyle iLineNone = BorderStyle.none;
const BorderSide iBorderSide = BorderSide(width: iLineWidth, color: iBorderColor, style: iLineSolid);
const BorderSide iBorderSideDouble = BorderSide(width: iLineWidth * 2, color: iBorderColor, style: iLineSolid);
const BorderSide iBorderSideNone = BorderSide(width: 0, color: iBorderColor, style: BorderStyle.none);
BoxBorder iBorder = Border.all(color: iBorderColor, width: iLineWidth, style: iLineSolid);
BoxBorder iBorderLight = Border.all(color: iBorderLightColor, width: iLineWidth, style: iLineSolid);
BoxBorder iBorderActive = Border.all(color: iPrimaryActive, width: iLineWidth, style: iLineSolid);
BoxBorder iBorderTransparent = Border.all(color: iTransparent, width: iLineWidth, style: iLineSolid);
BoxBorder iBorderNone = Border.all(color: iTransparent, width: 0, style: BorderStyle.none);
BoxBorder iBorderBold = Border.all(color: iBorderColor, width: iLineWidth * 2, style: iLineSolid);

// 圆角
const double iRadiusXS = 2.0;
const double iRadiusSM = 4.0;
const double iRadius = 6.0;
const double iRadiusLG = 8.0;
const BorderRadiusGeometry iBorderRadiusXS = BorderRadius.all(Radius.circular(iRadiusXS));
const BorderRadiusGeometry iBorderRadiusSM = BorderRadius.all(Radius.circular(iRadiusSM));
const BorderRadiusGeometry iBorderRadius = BorderRadius.all(Radius.circular(iRadius));
// const BorderRadiusGeometry iBorderRadiusMiddle = BorderRadius.all(Radius.circular(iSizeUnit * 2));
const BorderRadiusGeometry iBorderRadiusLG = BorderRadius.all(Radius.circular(iRadiusLG));
const BorderRadiusGeometry iBorderRadiusNone = BorderRadius.all(Radius.circular(0));

// 阴影
const List<BoxShadow> iBoxShadow = <BoxShadow>[
  BoxShadow(
    color: Color.fromRGBO(0, 0, 0, .08),
    offset: Offset(0, 6), //阴影y轴偏移量
    blurRadius: 16, //阴影模糊程度
    spreadRadius: 0, //阴影扩散程度
  ),
  BoxShadow(
    color: Color.fromRGBO(0, 0, 0, .12),
    offset: Offset(0, 3), //阴影y轴偏移量
    blurRadius: 6, //阴影模糊程度
    spreadRadius: -4, //阴影扩散程度
  ),
  BoxShadow(
    color: Color.fromRGBO(0, 0, 0, .05),
    offset: Offset(0, 9), //阴影y轴偏移量
    blurRadius: 28, //阴影模糊程度
    spreadRadius: 8, //阴影扩散程度
  ),
];
const List<BoxShadow> iBoxShadowSecondary = <BoxShadow>[
  BoxShadow(
    color: Color.fromRGBO(0, 0, 0, .08),
    offset: Offset(0, 6), //阴影y轴偏移量
    blurRadius: 16, //阴影模糊程度
    spreadRadius: 0, //阴影扩散程度
  ),
  BoxShadow(
    color: Color.fromRGBO(0, 0, 0, .12),
    offset: Offset(0, 3), //阴影y轴偏移量
    blurRadius: 6, //阴影模糊程度
    spreadRadius: -4, //阴影扩散程度
  ),
  BoxShadow(
    color: Color.fromRGBO(0, 0, 0, .05),
    offset: Offset(0, 9), //阴影y轴偏移量
    blurRadius: 28, //阴影模糊程度
    spreadRadius: 8, //阴影扩散程度
  ),
];
const List<BoxShadow> iBoxShadowTertiary = <BoxShadow>[
  BoxShadow(
    color: Color.fromRGBO(0, 0, 0, .03),
    offset: Offset(0, 1), //阴影y轴偏移量
    blurRadius: 2, //阴影模糊程度
    spreadRadius: 0, //阴影扩散程度
  ),
  BoxShadow(
    color: Color.fromRGBO(0, 0, 0, .02),
    offset: Offset(0, 1), //阴影y轴偏移量
    blurRadius: 6, //阴影模糊程度
    spreadRadius: -1, //阴影扩散程度
  ),
  BoxShadow(
    color: Color.fromRGBO(0, 0, 0, .02),
    offset: Offset(0, 2), //阴影y轴偏移量
    blurRadius: 4, //阴影模糊程度
    spreadRadius: 0, //阴影扩散程度
  ),
];

const List<BoxShadow> iBoxShadowLight = <BoxShadow>[
  BoxShadow(
    color: Color(0x1A000000),
    offset: Offset(0, 1), //阴影y轴偏移量
    blurRadius: 4, //阴影模糊程度
    spreadRadius: 0, //阴影扩散程度
  ),
];
const List<BoxShadow> iBoxShadowDark = <BoxShadow>[
  BoxShadow(
    color: Color(0x4D000000),
    offset: Offset(0, 1), //阴影y轴偏移量
    blurRadius: 4, //阴影模糊程度
    spreadRadius: 0, //阴影扩散程度
  ),
];

// 间距相关变量
const iGapZero = EdgeInsets.all(0);
const iGapAllSmall = EdgeInsets.all(iSizeUnit);
const iGapAll = EdgeInsets.all(iSizeUnit * 2);
const iGapAllMiddle = EdgeInsets.all(iSizeUnit * 3);
const iGapAllLarger = EdgeInsets.all(iSizeUnit * 4);
const iGapLeftSmall = EdgeInsets.only(left: iSizeUnit);
const iGapLeft = EdgeInsets.only(left: iSizeUnit * 2);
const iGapLeftMiddle = EdgeInsets.only(left: iSizeUnit * 3);
const iGapLeftLarger = EdgeInsets.only(left: iSizeUnit * 4);
const iGapRightSmall = EdgeInsets.only(right: iSizeUnit);
const iGapRight = EdgeInsets.only(right: iSizeUnit * 2);
const iGapRightMiddle = EdgeInsets.only(right: iSizeUnit * 3);
const iGapRightLarger = EdgeInsets.only(right: iSizeUnit * 4);
const iGapTopSmall = EdgeInsets.only(top: iSizeUnit);
const iGapTop = EdgeInsets.only(top: iSizeUnit * 2);
const iGapTopMiddle = EdgeInsets.only(top: iSizeUnit * 3);
const iGapTopLarger = EdgeInsets.only(top: iSizeUnit * 4);
const iGapBottomSmall = EdgeInsets.only(bottom: iSizeUnit);
const iGapBottom = EdgeInsets.only(bottom: iSizeUnit * 2);
const iGapBottomMiddle = EdgeInsets.only(bottom: iSizeUnit * 3);
const iGapBottomLarger = EdgeInsets.only(bottom: iSizeUnit * 4);
const iGapVerticalSmall = EdgeInsets.symmetric(vertical: iSizeUnit);
const iGapVertical = EdgeInsets.symmetric(vertical: iSizeUnit * 2);
const iGapVerticalMiddle = EdgeInsets.symmetric(vertical: iSizeUnit * 3);
const iGapVerticalLarger = EdgeInsets.symmetric(vertical: iSizeUnit * 4);
const iGapHorizontalSmall = EdgeInsets.symmetric(horizontal: iSizeUnit);
const iGapHorizontal = EdgeInsets.symmetric(horizontal: iSizeUnit * 2);
const iGapHorizontalMiddle = EdgeInsets.symmetric(horizontal: iSizeUnit * 3);
const iGapHorizontalLarger = EdgeInsets.symmetric(horizontal: iSizeUnit * 4);
const iGapBoxSmall = EdgeInsets.only(left: iSizeUnit, right: iSizeUnit, top: iSizeUnit);
const iGapBox = EdgeInsets.only(left: iSizeUnit * 2, right: iSizeUnit * 2, top: iSizeUnit * 2);
const iGapBoxMiddle = EdgeInsets.only(left: iSizeUnit * 3, right: iSizeUnit * 3, top: iSizeUnit * 3);
const iGapBoxLarger = EdgeInsets.only(left: iSizeUnit * 4, right: iSizeUnit * 4, top: iSizeUnit * 4);

// 业务基本定义变量
const double iIconSize = 18.0;
const double iSiderWidth = 200;
const double iSiderCollapsedidth = 80;
const double iDividerHeight = 40.0;
const double iCardHeadMinHeight = 56.0;
const double iCardSmallHeadMinHeight = 38.0;
const double iCardActionHeight = 48.0;
