import 'package:antd_ui/antd_ui.dart';
import 'package:example/components/color_block.dart';
import 'package:example/components/nav_bar.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class DemoGrid extends StatelessWidget {
  const DemoGrid({super.key});

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: NavBar(
        title: '栅格',
        isHaveBack: true,
      ),
      body: ListView(
        padding: iGapBottomLarger,
        children: const [
          AntdCard(
            title: '栅格',
            content: AntdRow(
              gutter: 10.0,
              children: [
                AntdCol(
                  span: 12,
                  child: ColorBlock(text: 'span-12'),
                ),
                AntdCol(
                  span: 12,
                  child: ColorBlock(text: 'span-12'),
                ),
                AntdCol(
                  span: 12,
                  child: ColorBlock(text: 'span-12'),
                ),
                AntdCol(
                  span: 12,
                  child: ColorBlock(text: 'span-12'),
                ),
                AntdCol(
                  span: 12,
                  child: ColorBlock(text: 'span-12'),
                ),
                AntdCol(
                  span: 6,
                  child: ColorBlock(text: 'span-6'),
                ),
                AntdCol(
                  span: 7,
                  child: ColorBlock(text: 'span-7'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
