import 'package:antd_ui/antd_ui.dart';
import 'package:antd_ui/components/layout/antd_space.dart';
import 'package:example/components/nav_bar.dart';
import 'package:example/constants.dart';
import 'package:flutter/material.dart';

class DemoCard extends StatelessWidget {
  const DemoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(
        title: 'AntdCard',
        isHaveBack: true,
      ),
      body: ListView(
        padding: iGapAllLarger,
        children: const [
          AntdCard(
            title: '典型卡片',
            content: AntdSpace(
              direction: AntdSpaceDirection.vertical,
              children: [
                AntdCard(
                  title: 'Default Size Card',
                  extra: AntdButton(
                    type: AntdButtonType.link,
                    text: 'More',
                  ),
                ),
                AntdCard(
                  title: 'Small Size Card',
                  size: AntdCardSize.small,
                  extra: AntdButton(
                    type: AntdButtonType.link,
                    text: 'More',
                  ),
                ),
              ],
            ),
          ),
          AntdCard(
            title: '简洁卡片',
            content: AntdSpace(
              direction: AntdSpaceDirection.vertical,
              children: [
                AntdCard(
                  content: Text('内容'),
                ),
                AntdCard(
                  content: Text('内容'),
                  size: AntdCardSize.small,
                ),
              ],
            ),
          ),
          AntdCard(
            title: '更多内容配置',
            content: AntdSpace(
              direction: AntdSpaceDirection.vertical,
              children: [
                AntdCard(
                  content: AntdCardMeta(
                    title: 'CardTitle',
                    // description: 'card desc content card desc content card desc content',
                    description: '更多内容配置更多内容配置更多内容配置更多内容配置更多内容配置',
                  ),
                  width: 300,
                  actions: [
                    AntdIcon(AntdIconData.adduser),
                    AntdIcon(AntdIconData.adduser),
                    AntdIcon(AntdIconData.adduser),
                    AntdIcon(AntdIconData.adduser),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
