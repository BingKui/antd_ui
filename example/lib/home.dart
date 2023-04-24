import 'package:example/demos/demo_button.dart';
import 'package:example/demos/demo_card.dart';
import 'package:example/demos/demo_divider.dart';
import 'package:example/demos/demo_grid.dart';
import 'package:example/demos/demo_typography.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'components/menu_item.dart';
import 'components/nav_bar.dart';

final List menuList = [
  // {
  //   'title': '乱七八糟测试',
  //   'desc': '各种基础组件测试页面',
  //   'btnText': '进入',
  //   'press': () => Get.to(const MulitDemo()),
  // },
  {
    'title': '按钮',
    'desc': 'AntdButton 组件',
    'btnText': '进入',
    'press': () => Get.to(const DemoButton()),
  },
  {
    'title': '排版',
    'desc': 'AntdTitle、AntdText、AntdParagraph、AntdLink',
    'btnText': '进入',
    'press': () => Get.to(const DemoTypography()),
  },
  {
    'title': '分割线',
    'desc': 'AntdDivider',
    'btnText': '进入',
    'press': () => Get.to(const DemoDivider()),
  },
  {
    'title': '栅格',
    'desc': 'AntdRow、AntdCol',
    'btnText': '进入',
    'press': () => Get.to(const DemoGrid()),
  },
  // {
  //   'title': '单元格',
  //   'desc': 'AntdCell',
  //   'btnText': '进入',
  //   'press': () => Get.to(const CellDemo()),
  // },
  {
    'title': '卡片',
    'desc': 'AntdCard',
    'btnText': '进入',
    'press': () => Get.to(const DemoCard()),
  },
  // {
  //   'title': '徽标数',
  //   'desc': 'AntdBadge',
  //   'btnText': '进入',
  //   'press': () => Get.to(const BadgeDemo()),
  // },
];

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(title: 'antd_ui 组件列表'),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MenuItem(
            press: menuList[index]['press'],
            title: menuList[index]['title'],
            desc: menuList[index]['desc'],
            btnText: menuList[index]['btnText'],
          );
        },
        itemCount: menuList.length,
      ),
    );
  }
}
