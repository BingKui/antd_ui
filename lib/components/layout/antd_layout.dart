import 'package:antd_ui/components/layout/antd_content.dart';
import 'package:antd_ui/components/layout/antd_footer.dart';
import 'package:antd_ui/components/layout/antd_header.dart';
import 'package:antd_ui/components/layout/antd_sider.dart';
import 'package:flutter/material.dart';

class AntdLayout extends StatelessWidget {
  // 定义 全局key
  // static final GlobalKey _key = GlobalKey();
  final AntdSider? sider;
  final AntdHeader? header;
  final AntdFooter? footer;
  final AntdContent content;
  const AntdLayout({super.key, this.sider, this.header, this.footer, required this.content});

  List<Widget> buildChildren() {
    List<Widget> list = <Widget>[];
    if (sider != null) list.add(sider as Widget);
    return list;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Row(
        children: buildChildren(),
      ),
    );
  }
}
