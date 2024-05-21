import 'package:antd_ui/components/layout/antd_divider.dart';
import 'package:antd_ui/constants/constants.dart';
import 'package:antd_ui/constants/enums.dart';
import 'package:flutter/material.dart';

class AntdCard extends StatefulWidget {
  /// 底部操作列表
  final List<Widget>? actions;

  /// 是否有border
  final bool? bordered;

  /// 自定义宽度
  final double? width;

  /// 顶部额外内容
  final Widget? extra;

  /// 自定义标题文本样式
  final TextStyle? headStyle;

  /// 鼠标移过时可浮起
  final bool? hoverable;

  /// 是否加载，未实现
  final bool? loading;

  /// 尺寸，默认：normal
  final AntdCardSize? size;

  /// 标题内容，为空则没有标题
  final String? title;

  /// 卡片封面
  final Widget? cover;

  /// 内容
  final Widget? content;

  /// 语义描述信息，无障碍信息
  final String? semanticLabel;

  // 一下是关于 tab 的内容，暂未实现
  final List? tabList;
  final String? activeTabKey;
  final void Function()? onTabChange;

  const AntdCard({
    super.key,
    this.actions,
    this.bordered = true,
    this.extra,
    this.headStyle,
    this.hoverable,
    this.loading,
    this.size = AntdCardSize.normal,
    this.title,
    this.content,
    this.tabList,
    this.activeTabKey,
    this.onTabChange,
    this.semanticLabel,
    this.cover,
    this.width,
  });

  @override
  State<AntdCard> createState() => _AntdCardState();
}

class _AntdCardState extends State<AntdCard> {
  bool isHover = false;
  List<Widget> _renderHeader() {
    List<Widget> list = <Widget>[];
    bool haveExtra = widget.extra != null;
    bool haveStyle = widget.headStyle != null;
    Widget title = Text(
      widget.title!,
      style: haveStyle ? widget.headStyle : const TextStyle(fontSize: iFontSizeLG, fontWeight: FontWeight.bold),
    );
    list.add(Expanded(child: title));
    if (haveExtra) {
      list.add(widget.extra!);
    }
    return list;
  }

  List<Widget> _renderChild(Size size) {
    List<Widget> list = <Widget>[];
    bool haveTitle = widget.title != null;
    bool isSM = widget.size == AntdCardSize.small;
    double gapSize = iSizeUnit * (isSM ? 3 : 6);
    if (haveTitle) {
      list.add(Container(
        width: size.width,
        padding: EdgeInsets.symmetric(horizontal: gapSize),
        constraints: BoxConstraints(minHeight: isSM ? iCardSmallHeadMinHeight : iCardHeadMinHeight),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: iBorderLightColor, width: iLineWidth, style: iLineSolid),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: _renderHeader(),
        ),
      ));
    }
    list.add(Container(
      width: size.width,
      padding: EdgeInsets.all(gapSize),
      child: widget.content,
    ));
    if (widget.actions != null && widget.actions!.isNotEmpty) {
      List<Widget> actionList = <Widget>[];
      List targetActions = widget.actions!;
      for (var i = 0; i < targetActions.length; i++) {
        actionList.add(Expanded(
          flex: 1,
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Center(
              child: targetActions[i],
            ),
          ),
        ));
        if (i != targetActions.length - 1) {
          actionList.add(const AntdDivider(type: AntdDividerType.vertical));
        }
      }
      list.add(Container(
        width: size.width,
        height: iCardActionHeight,
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: iSplitColor, width: iLineWidth, style: iLineSolid)),
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: actionList,
        ),
      ));
    }
    return list;
  }

  BoxDecoration cardStyle() {
    bool isBorder = widget.bordered != null && widget.bordered!;
    bool haveShadow = widget.hoverable != null && widget.hoverable!;
    return BoxDecoration(
      color: iWhite,
      border: isBorder ? (isHover && haveShadow ? iBorderTransparent : iBorderLight) : iBorderTransparent,
      borderRadius: iBorderRadiusLG,
      boxShadow: haveShadow && isHover ? iBoxShadow : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // print('haveShadow && isHover -> ${haveShadow && isHover}');
    double contentWidth = widget.width != null ? widget.width! : size.width;
    // print('父宽度 -> $contentWidth');
    return MediaQuery(
      data: MediaQueryData(size: Size(contentWidth, size.height)),
      child: Semantics(
        label: widget.semanticLabel,
        child: MouseRegion(
          onEnter: (event) {
            setState(() {
              isHover = true;
            });
          },
          onExit: (event) {
            setState(() {
              isHover = false;
            });
          },
          child: Container(
            width: widget.width != null ? widget.width! : size.width,
            decoration: cardStyle(),
            child: Column(
              children: _renderChild(size),
            ),
          ),
        ),
      ),
    );
  }
}

class AntdCardMeta extends StatelessWidget {
  final Widget? avatar;
  final String? title;
  final String? description;
  final BoxDecoration? style;
  const AntdCardMeta({
    super.key,
    this.avatar,
    this.title,
    this.description,
    this.style,
  });

  List<Widget> buildContent() {
    List<Widget> list = <Widget>[];
    if (avatar != null) {
      list.add(avatar!);
    }
    List<Widget> contentList = <Widget>[];
    if (title!.isNotEmpty) {
      contentList.add(Padding(
        padding: iGapVertical,
        child: Text(
          title!,
          textWidthBasis: TextWidthBasis.parent,
          semanticsLabel: title!,
          softWrap: true,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: iFontSize,
            color: iTextColor,
          ),
        ),
      ));
    }
    if (description!.isNotEmpty) {
      contentList.add(Text(
        description!,
        textWidthBasis: TextWidthBasis.parent,
        semanticsLabel: description!,
        softWrap: true,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontSize: iFontSizeSM,
          color: iTextDescColor,
        ),
      ));
    }
    list.add(Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: contentList,
    ));
    return list;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // print('子节点宽度 -> ${size.width}');
    // return Text('Meta');
    return SizedBox(
      // decoration: style,
      width: size.width,
      // height: 100,
      child: Row(
        children: buildContent(),
      ),
    );
  }
}
