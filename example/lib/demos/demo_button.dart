import 'package:antd_ui/antd_ui.dart';
import 'package:antd_ui/components/layout/antd_space.dart';
import 'package:example/components/content_container.dart';
import 'package:example/components/nav_bar.dart';
import 'package:example/constants.dart';
import 'package:flutter/material.dart';

class DemoButton extends StatefulWidget {
  const DemoButton({super.key});

  @override
  State<DemoButton> createState() => _DemoButtonState();
}

class _DemoButtonState extends State<DemoButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(
        title: 'AntdButton',
        isHaveBack: true,
      ),
      body: ListView(
        padding: iGapAllLarger,
        children: const [
          AntdCard(
            title: '按钮类型',
            content: AntdSpace(children: [
              AntdButton(
                text: 'Primary Button',
                type: AntdButtonType.primary,
              ),
              AntdButton(
                text: 'Normal Button',
                type: AntdButtonType.normal,
              ),
              AntdButton(
                text: 'Text Button',
                type: AntdButtonType.text,
              ),
              AntdButton(
                text: 'Link Button',
                type: AntdButtonType.link,
              ),
            ]),
          ),
          AntdCard(
            title: '不同样式',
            content: AntdSpace(
              children: [
                AntdButton(
                  text: 'Primary',
                  type: AntdButtonType.primary,
                ),
                AntdButton(
                  text: 'Normal',
                  type: AntdButtonType.normal,
                ),
                AntdButton(
                  text: 'Text',
                  type: AntdButtonType.text,
                ),
                AntdButton(
                  text: 'Link',
                  type: AntdButtonType.link,
                ),
                AntdButton(
                  text: 'Danger Ghost',
                  type: AntdButtonType.primary,
                  ghost: true,
                  danger: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
    return const Row(
      children: [
        Column(
          children: [
            AntdButton(
              text: 'Primary',
              type: AntdButtonType.primary,
            ),
            AntdButton(
              text: 'Normal',
              type: AntdButtonType.normal,
            ),
            AntdButton(
              text: 'Text',
              type: AntdButtonType.text,
            ),
            AntdButton(
              text: 'Link',
              type: AntdButtonType.link,
            ),
            AntdButton(
              text: 'Danger Ghost',
              type: AntdButtonType.primary,
              ghost: true,
              danger: true,
            ),
            AntdButton(
              text: 'Danger Text',
              type: AntdButtonType.text,
              danger: true,
            ),
            AntdButton(
              text: 'Danger Link',
              type: AntdButtonType.link,
              danger: true,
            ),
            AntdButton(
              text: 'Danger Link',
              type: AntdButtonType.primary,
              danger: true,
              block: true,
            ),
          ],
        ),
        // Column(
        //   children: [
        //     AntdButton(
        //       text: 'Primary',
        //       type: AntdButtonType.primary,
        //       disabled: true,
        //     ),
        //     AntdButton(
        //       text: 'Normal',
        //       type: AntdButtonType.normal,
        //       disabled: true,
        //     ),
        //     AntdButton(
        //       text: 'Text',
        //       type: AntdButtonType.text,
        //       disabled: true,
        //     ),
        //     AntdButton(
        //       text: 'Link',
        //       type: AntdButtonType.link,
        //       disabled: true,
        //     ),
        //     AntdButton(
        //       text: 'Danger Ghost',
        //       type: AntdButtonType.primary,
        //       ghost: true,
        //       danger: true,
        //       disabled: true,
        //     ),
        //     AntdButton(
        //       text: 'Danger Text',
        //       type: AntdButtonType.text,
        //       danger: true,
        //       disabled: true,
        //     ),
        //     AntdButton(
        //       text: 'Danger Link',
        //       type: AntdButtonType.link,
        //       danger: true,
        //       disabled: true,
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
