import 'package:antd_ui/antd_ui.dart';
import 'package:example/components/nav_bar.dart';
import 'package:example/constants.dart';
import 'package:flutter/material.dart';

class DemoAert extends StatelessWidget {
  const DemoAert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(
        title: 'AntdAlert',
        isHaveBack: true,
      ),
      body: ListView(
        padding: iGapAllLarger,
        children: const [
          AntdSpace(
            direction: AntdSpaceDirection.vertical,
            children: [
              AntdText('基本 - 四种样式'),
              AntdAlert('Success Message', type: AntdThemeType.success),
              AntdAlert('Info Message', type: AntdThemeType.info),
              AntdAlert('Warning Message', type: AntdThemeType.warning),
              AntdAlert('Error Message', type: AntdThemeType.error),
              AntdText('可关闭'),
              AntdAlert('Error Message', type: AntdThemeType.error, closable: true),
              AntdText('含有辅助性文字的'),
              AntdAlert('Success Message', type: AntdThemeType.success, description: '这个是辅助性描述文字'),
              AntdAlert('Info Message', type: AntdThemeType.info, description: '这个是辅助性描述文字'),
              AntdAlert('Warning Message', type: AntdThemeType.warning, description: '这个是辅助性描述文字'),
              AntdAlert('Error Message', type: AntdThemeType.error, description: '这个是辅助性描述文字'),
              AntdText('图标'),
              AntdAlert('Success Message', showIcon: true, type: AntdThemeType.success),
              AntdAlert('Info Message', showIcon: true, type: AntdThemeType.info),
              AntdAlert('Warning Message', showIcon: true, type: AntdThemeType.warning),
              AntdAlert('Error Message', showIcon: true, type: AntdThemeType.error, closable: true),
              AntdAlert('Success Message', showIcon: true, type: AntdThemeType.success, description: '这个是辅助性描述文字'),
              AntdAlert('Info Message', showIcon: true, type: AntdThemeType.info, description: '这个是辅助性描述文字'),
              AntdAlert('Warning Message', showIcon: true, type: AntdThemeType.warning, description: '这个是辅助性描述文字'),
              AntdAlert('Error Message', showIcon: true, type: AntdThemeType.error, description: '这个是辅助性描述文字', closable: true),
              AntdText('自定义关闭、图标'),
              AntdAlert('Error Message', showIcon: true, closeIcon: AntdIconData.addteam, type: AntdThemeType.error, description: '这个是辅助性描述文字', closable: true),
              AntdAlert('Error Message', showIcon: false, closeIcon: AntdIconData.addteam, type: AntdThemeType.error, description: '这个是辅助性描述文字', closable: true),
              AntdAlert('Error Message', showIcon: true, closeText: '关闭', type: AntdThemeType.error, description: '这个是辅助性描述文字'),
              AntdAlert('Error Message', showIcon: false, closeText: '关闭', type: AntdThemeType.error, description: '这个是辅助性描述文字'),
            ],
          ),
        ],
      ),
    );
  }
}
