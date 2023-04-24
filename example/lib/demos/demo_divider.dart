import 'package:antd_ui/antd_ui.dart';
import 'package:example/components/nav_bar.dart';
import 'package:example/constants.dart';
import 'package:flutter/material.dart';

class DemoDivider extends StatelessWidget {
  const DemoDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(
        title: 'AntDivider',
        isHaveBack: true,
      ),
      body: ListView(
        padding: iGapAllLarger,
        children: const [
          AntdCard(
            title: '水平分割线',
            content: Column(
              children: [
                Text('这个是内容'),
                AntdDivider(),
                Text('这个是内容'),
                AntdDivider(dashed: true),
                Text('这个是内容'),
              ],
            ),
          ),
          AntdCard(
            title: '带文字的分割线',
            content: Column(
              children: [
                Text('这个是内容'),
                AntdDivider(
                  text: 'Left Text',
                  orientation: AntdDividerOrientation.left,
                ),
                Text('这个是内容'),
                AntdDivider(
                  text: 'Center Text',
                  orientation: AntdDividerOrientation.center,
                ),
                Text('这个是内容'),
                AntdDivider(
                  text: 'Right Text',
                  orientation: AntdDividerOrientation.right,
                ),
                Text('这个是内容'),
                AntdDivider(
                  dashed: true,
                  text: "Dash Text",
                ),
                Text('这个是内容'),
              ],
            ),
          ),
          AntdCard(
            title: '分割文字使用正文样式',
            content: Column(
              children: [
                Text('这个是内容'),
                AntdDivider(
                  text: "Solid Text",
                  plain: true,
                ),
                Text('这个是内容'),
                AntdDivider(
                  text: 'Dashed Text',
                  dashed: true,
                  plain: true,
                ),
                Text('这个是内容'),
              ],
            ),
          ),
          AntdCard(
            title: '分割线',
            content: Row(
              children: [
                Text('Text'),
                AntdDivider(
                  type: AntdDividerType.vertical,
                ),
                Text('Link'),
                AntdDivider(
                  type: AntdDividerType.vertical,
                ),
                Text('Link'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
