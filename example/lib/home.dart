import 'package:antd_ui/antd_ui.dart';
import 'package:example/constants.dart';
import 'package:example/demos/demo_alert.dart';
import 'package:example/demos/demo_button.dart';
import 'package:example/demos/demo_card.dart';
import 'package:example/demos/demo_divider.dart';
import 'package:example/demos/demo_grid.dart';
import 'package:example/demos/demo_rate.dart';
import 'package:example/demos/demo_typography.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'components/menu_item.dart';
import 'components/nav_bar.dart';

final List menuList = [
  {'isTitle': true, 'title': '通用'},
  {'title': 'Button 按钮', 'desc': 'AntdButton 组件', 'btnText': '进入', 'press': () => Get.to(const DemoButton())},
  {'title': 'Icon 图标', 'desc': 'AntdIcon组件、AntdIconData数据', 'btnText': '进入', 'press': () => Get.to(const DemoTypography())},
  {'title': 'Typography 排版', 'desc': 'AntdTitle、AntdText、AntdParagraph、AntdLink', 'btnText': '进入', 'press': () => Get.to(const DemoTypography())},
  {'isTitle': true, 'title': '布局'},
  {'title': 'Divider 分割线', 'desc': 'AntdDivider', 'btnText': '进入', 'press': () => Get.to(const DemoDivider())},
  {'title': 'Grid 栅格', 'desc': 'AntdRow、AntdCol', 'btnText': '进入', 'press': () => Get.to(const DemoGrid())},
  {'title': 'Space 间距', 'desc': 'AntdRow、AntdCol', 'btnText': '进入', 'press': () => Get.to(const DemoGrid())},
  {'isTitle': true, 'title': '导航'},
  {'isTitle': true, 'title': '数据录入'},
  {'title': 'Rate 评分', 'desc': 'AntdRate 评分组件。', 'btnText': '进入', 'press': () => Get.to(const DemoRate())},
  {'isTitle': true, 'title': '数据展示'},
  {'title': 'Card 卡片', 'desc': 'AntdCard', 'btnText': '进入', 'press': () => Get.to(const DemoCard())},
  {'isTitle': true, 'title': '反馈'},
  {'title': 'Alert 警告提示', 'desc': 'AntdAlert', 'btnText': '进入', 'press': () => Get.to(const DemoAert())},
];

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(title: 'antd_ui 组件列表'),
      body: ListView.builder(
        itemBuilder: (context, index) {
          bool flag = menuList[index]['isTitle'] != null;
          if (flag) return Padding(padding: iGapBox, child: AntdText(menuList[index]['title'], disabled: true));
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
