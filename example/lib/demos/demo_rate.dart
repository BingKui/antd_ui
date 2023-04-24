import 'package:antd_ui/antd_ui.dart';
import 'package:example/components/nav_bar.dart';
import 'package:example/constants.dart';
import 'package:flutter/material.dart';

class DemoRate extends StatelessWidget {
  const DemoRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(
        title: 'AntdRate',
        isHaveBack: true,
      ),
      body: ListView(
        padding: iGapAllLarger,
        children: const [
          AntdSpace(
            direction: AntdSpaceDirection.vertical,
            children: [
              AntdText('基本'),
              AntdRate(
                defalutValue: 3,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
