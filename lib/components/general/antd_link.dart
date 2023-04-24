import 'package:antd_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AntdLink extends StatefulWidget {
  /// 文本内容
  final String text;

  /// 链接地址
  final String? link;

  /// 是否是路由
  final bool? isRoute;

  const AntdLink({
    super.key,
    // this.type,
    required this.text,
    required this.link,
    this.isRoute = false,
  });

  @override
  State<AntdLink> createState() => _AntdLinkState();
}

class _AntdLinkState extends State<AntdLink> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (widget.link == null) return;
        final Uri uri = Uri.parse(widget.link!);
        if (!await launchUrl(uri)) throw '不能打开链接 ${widget.link}';
      },
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: Text(
        widget.text,
        style: TextStyle(
          fontSize: iFontSize,
          color: isHover ? iPrimaryTextHover : iPrimaryText,
        ),
      ),
    );
  }
}
