import 'package:antd_ui/antd_ui.dart';
import 'package:antd_ui/constants.dart';
import 'package:flutter/material.dart';

class AntdAlert extends StatefulWidget {
  /// 提示内容
  final String message;

  /// 自定义操作项
  final Widget? action;

  /// 关闭动画结束后触发的回调函数，暂未实现
  final VoidCallback? afterClose;

  /// 是否作为顶部公告，暂未实现
  final bool? banner;

  /// 是否显示关闭按钮，默认：false
  final bool? closable;

  /// 设置自定义关闭文案
  final String? closeText;

  /// 设置自定义关闭图标
  final IconData? closeIcon;

  /// 描述信息
  final String? description;

  /// 自定义提示图标，showIcon 为 true 时有效。
  final IconData? icon;

  /// 是否展示辅助图标
  final bool? showIcon;

  /// 类型，默认：info
  final AntdThemeType? type;

  /// 关闭时触发的回调函数
  final VoidCallback? onClose;

  const AntdAlert(
    this.message, {
    super.key,
    this.action,
    this.afterClose,
    this.banner,
    this.closable = false,
    this.closeText,
    this.closeIcon,
    this.description,
    this.icon,
    this.showIcon,
    this.type = AntdThemeType.info,
    this.onClose,
  });

  @override
  State<AntdAlert> createState() => _AntdAlertState();
}

class _AntdAlertState extends State<AntdAlert> {
  bool isClosed = false;
  Color bgColor() {
    Color color = iInfoBg;
    switch (widget.type!) {
      case AntdThemeType.success:
        color = iSuccessBg;
        break;
      case AntdThemeType.info:
        color = iInfoBg;
        break;
      case AntdThemeType.warning:
        color = iWarnBg;
        break;
      case AntdThemeType.error:
        color = iErrorBg;
        break;
    }
    return color;
  }

  Color borderColor() {
    Color color = iInfoBorder;
    switch (widget.type!) {
      case AntdThemeType.success:
        color = iSuccessBorder;
        break;
      case AntdThemeType.info:
        color = iInfoBorder;
        break;
      case AntdThemeType.warning:
        color = iWarnBorder;
        break;
      case AntdThemeType.error:
        color = iErrorBorder;
        break;
    }
    return color;
  }

  IconData iconVal() {
    IconData icon = AntdIconData.infocirclefill;
    switch (widget.type!) {
      case AntdThemeType.success:
        icon = AntdIconData.checkcirclefill;
        break;
      case AntdThemeType.info:
        icon = AntdIconData.infocirclefill;
        break;
      case AntdThemeType.warning:
        icon = AntdIconData.warningcirclefill;
        break;
      case AntdThemeType.error:
        icon = AntdIconData.closecirclefill;
        break;
    }
    return icon;
  }

  Color iconColor() {
    Color color = iPrimary;
    switch (widget.type!) {
      case AntdThemeType.success:
        color = iSuccess;
        break;
      case AntdThemeType.info:
        color = iPrimary;
        break;
      case AntdThemeType.warning:
        color = iWarn;
        break;
      case AntdThemeType.error:
        color = iError;
        break;
    }
    return color;
  }

  // double iconSize() {}
  Widget renderContent(bool isHaveDesc) {
    return isHaveDesc
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: iGapBottomMiddle, child: AntdText(widget.message, fontSize: iFontSizeLG)),
              AntdText(widget.description!),
            ],
          )
        : AntdText(widget.message);
  }

  Widget renderIcon(bool isHaveDesc) {
    return Padding(
      padding: isHaveDesc ? iGapRightLarger : iGapRight,
      child: AntdIcon(
        iconVal(),
        color: iconColor(),
        size: isHaveDesc ? iSizeLG : iSize,
      ),
    );
  }

  Widget renderCloseIcon() {
    return Padding(
      padding: iGapLeft,
      child: AntdIcon(
        widget.closeIcon ?? AntdIconData.close,
        color: iTextDescColor,
        size: iSizeSM,
        onClick: () {
          widget.onClose?.call();
          setState(() {
            isClosed = true;
          });
        },
      ),
    );
  }

  List<Widget> renderMulit(bool isHaveDesc, bool isShowIcon, bool isShowClose, bool isHaveAction) {
    List<Widget> list = <Widget>[];
    if (isShowIcon) {
      list.add(renderIcon(isHaveDesc));
    }
    list.add(Expanded(child: renderContent(isHaveDesc)));
    if (isHaveAction) {
      list.add(AntdButton(
        text: widget.closeText,
        type: AntdButtonType.text,
        size: AntdButtonSize.small,
        onClick: () {
          widget.onClose?.call();
          setState(() {
            isClosed = true;
          });
        },
      ));
    }
    if (isShowClose) {
      list.add(renderCloseIcon());
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isHaveDesc = widget.description != null && widget.description!.isNotEmpty;
    bool isShowIcon = widget.showIcon != null && widget.showIcon!;
    bool isShowClose = widget.closable != null && widget.closable!;
    bool isHaveAction = widget.closeText != null && widget.closeText!.isNotEmpty;
    if (isClosed) return const Text('');
    return Container(
      width: size.width,
      padding: isHaveDesc ? const EdgeInsets.symmetric(vertical: iSizeMD, horizontal: iSizeLG) : iGapAllMiddle,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor(), width: iLineWidth, style: iLineSolid),
        color: bgColor(),
        borderRadius: iBorderRadiusLG,
      ),
      child: isShowIcon || isShowClose || isHaveAction
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: renderMulit(isHaveDesc, isShowIcon, isShowClose, isHaveAction),
            )
          : renderContent(isHaveDesc),
    );
  }
}
