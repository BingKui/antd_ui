import 'package:flutter/material.dart';

class AntdRow extends StatelessWidget {
  /// 子节点
  final List<AntdCol> children;

  /// 间距
  final double? gutter;

  const AntdRow({super.key, required this.children, this.gutter});

  List dealDoubleArr() {
    List<Widget> list = <Widget>[];
    List<List<Widget>> doubleList = <List<Widget>>[];
    int len = 0;
    // 根据 span 不超过 24 处理为二维数组
    for (var i = 0; i < children.length; i++) {
      AntdCol item = children[i];
      Widget child = item.getChild();
      Map props = item.getProps();
      int span = props['span'];
      int offset = props['offset'];
      if (len + span + offset > 24) {
        doubleList.add(List.from(list));
        list.clear();
        len = 0;
      }
      len = len + span + offset;
      list.add(AntdCol(
        span: props['span'],
        offset: props['offset'],
        child: child,
      ));

      if (i == (children.length - 1)) {
        doubleList.add(list);
      }
    }
    return doubleList;
  }

  double calcSpanWidth(int len, double allWidth) {
    double gutterAllWidth = len - 1 > 0 ? (len - 1) * (gutter ?? 0) : len * (gutter ?? 0);
    double spanWidth = (allWidth - gutterAllWidth) / 24;
    return spanWidth;
  }

  List<Widget> dealColWidget(double allWidth) {
    List<Widget> list = <Widget>[];
    // 根据 span 不超过24的原则，处理子节点为二维数组
    List doubleList = dealDoubleArr();
    for (var j = 0; j < doubleList.length; j++) {
      List itemList = doubleList[j];
      double spanWidth = calcSpanWidth(itemList.length, allWidth);
      for (var i = 0; i < itemList.length; i++) {
        Widget child = itemList[i].getChild();
        Map props = itemList[i].getProps();
        list.add(AntdCol(
          span: props['span'],
          offset: props['offset'],
          spanWidth: spanWidth,
          child: child,
        ));
      }
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double parantWidth = constraints.biggest.width;
        return SizedBox(
          width: parantWidth,
          child: Wrap(
            spacing: gutter ?? 0,
            runSpacing: gutter ?? 0,
            children: dealColWidget(parantWidth),
          ),
        );
      },
    );
  }
}

class AntdCol extends StatelessWidget {
  final int? span;
  final int? offset;
  final double? spanWidth;

  final Widget child;
  const AntdCol({super.key, this.span, this.offset, this.spanWidth, required this.child});

  Widget getChild() {
    return child;
  }

  Map getProps() {
    return {
      'offset': offset ?? 0,
      'span': span ?? 24,
    };
  }

  double dealColWidth() {
    return (span ?? 24) * (spanWidth ?? 0);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: dealColWidth(),
      height: double.infinity,
      child: child,
    );
  }
}
