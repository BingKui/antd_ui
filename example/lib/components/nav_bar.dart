import 'package:antd_ui/antd_ui.dart';
import 'package:flutter/material.dart';
import 'package:example/constants.dart';
import 'package:get/route_manager.dart';

class _PreferredAppBarSize extends Size {
  _PreferredAppBarSize(this.toolbarHeight, this.bottomHeight) : super.fromHeight((toolbarHeight ?? kToolbarHeight) + (bottomHeight ?? 0));

  final double? toolbarHeight;
  final double? bottomHeight;
}

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  NavBar({
    Key? key,
    required this.title,
    this.isHaveBack = false,
  })  : preferredSize = _PreferredAppBarSize(iNavBarHeight, 0),
        super(key: key);

  @override
  final Size preferredSize;
  final String title;
  final bool isHaveBack;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(
        color: iNavBarBackgroundColor,
        boxShadow: iBoxShadow,
      ),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: iNavBarActionWidth,
            height: iNavBarHeight,
            child: Container(
              child: isHaveBack
                  ? SizedBox(
                      width: iNavBarHeight,
                      height: iNavBarHeight,
                      child: InkWell(
                        hoverColor: Colors.amberAccent,
                        mouseCursor: MouseCursor.defer,
                        onTap: () {
                          Get.back();
                        },
                        child: const Center(
                          child: AntdIcon(AntdIconData.arrowleft),
                        ),
                      ),
                    )
                  : const Text(''),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                title,
                style: const TextStyle(
                  color: iTitleColor,
                  fontSize: iFontSize,
                  fontWeight: iFontWeightBold,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: iNavBarActionWidth,
            height: iNavBarHeight,
            child: Text(''),
          ),
          // Text('info'),
        ],
      ),
      // ),
    );
  }
}
