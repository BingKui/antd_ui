import 'package:antd_ui/antd_ui.dart';
import 'package:antd_ui/components/layout/antd_space.dart';
import 'package:example/components/nav_bar.dart';
import 'package:example/constants.dart';
import 'package:flutter/material.dart';

class DemoTypography extends StatelessWidget {
  const DemoTypography({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(
        title: 'AntdTypography',
        isHaveBack: true,
      ),
      body: ListView(
        padding: iGapAllLarger,
        children: const [
          AntdCard(
            title: '基本',
            content: Column(
              children: [
                AntdTitle('介绍'),
                AntdParagraph(
                  content: '蚂蚁的企业级产品是一个庞大且复杂的体系。这类产品不仅量级巨大且功能复杂，而且变动和并发频繁，常常需要设计与开发能够快速的做出响应。同时这类产品中有存在很多类似的页面以及组件，可以通过抽象得到一些稳定且高复用性的内容。',
                ),
                AntdParagraph(
                  content:
                      '随着商业化的趋势，越来越多的企业级产品对更好的用户体验有了进一步的要求。带着这样的一个终极目标，我们（蚂蚁金服体验技术部）经过大量的项目实践和总结，逐步打磨出一个服务于企业级产品的设计体系 Ant Design。基于『确定』和『自然』的设计价值观，通过模块化的解决方案，降低冗余的生产成本，让设计者专注于更好的用户体验。',
                ),
                AntdTitle(
                  '设计资源',
                  level: AntdTitleLevel.h2,
                ),
                AntdParagraph(
                  contentList: [
                    AntdText('我们提供完善的设计原则、最佳实践和设计资源文件（'),
                    AntdText('Sketch', code: true),
                    AntdText('和'),
                    AntdText('Axure', code: true),
                    AntdText('，来帮助业务快速设计出高质量的产品原型。'),
                  ],
                ),
                AntdParagraph(
                  mark: true,
                  content:
                      '随着商业化的趋势，越来越多的企业级产品对更好的用户体验有了进一步的要求。带着这样的一个终极目标，我们（蚂蚁金服体验技术部）经过大量的项目实践和总结，逐步打磨出一个服务于企业级产品的设计体系 Ant Design。基于『确定』和『自然』的设计价值观，通过模块化的解决方案，降低冗余的生产成本，让设计者专注于更好的用户体验。',
                ),
                AntdParagraph(
                  code: true,
                  content:
                      '随着商业化的趋势，越来越多的企业级产品对更好的用户体验有了进一步的要求。带着这样的一个终极目标，我们（蚂蚁金服体验技术部）经过大量的项目实践和总结，逐步打磨出一个服务于企业级产品的设计体系 Ant Design。基于『确定』和『自然』的设计价值观，通过模块化的解决方案，降低冗余的生产成本，让设计者专注于更好的用户体验。',
                ),
              ],
            ),
          ),
          AntdCard(
            title: '标题组件',
            content: Column(
              children: [
                AntdTitle(
                  'H1.Antd UI',
                  level: AntdTitleLevel.h1,
                ),
                AntdTitle(
                  'H2.Antd UI',
                  level: AntdTitleLevel.h2,
                ),
                AntdTitle(
                  'H3.Antd UI',
                  level: AntdTitleLevel.h3,
                ),
                AntdTitle(
                  'H4.Antd UI',
                  level: AntdTitleLevel.h4,
                ),
                AntdTitle(
                  'H5.Antd UI',
                  level: AntdTitleLevel.h5,
                ),
                // AntdParagraph(
                //   content: '蚂蚁的企业级产品是一个庞大且复杂的体系。这类产品不仅量级巨大且功能复杂，而且变动和并发频繁，常常需要设计与开发能够快速的做出响应。同时这类产品中有存在很多类似的页面以及组件，可以通过抽象得到一些稳定且高复用性的内容。',
                // ),
                // AntdParagraph(
                //   content:
                //       '随着商业化的趋势，越来越多的企业级产品对更好的用户体验有了进一步的要求。带着这样的一个终极目标，我们（蚂蚁金服体验技术部）经过大量的项目实践和总结，逐步打磨出一个服务于企业级产品的设计体系 Ant Design。基于『确定』和『自然』的设计价值观，通过模块化的解决方案，降低冗余的生产成本，让设计者专注于更好的用户体验。',
                // ),
                // AntdTitle(
                //   '设计资源',
                //   level: AntdTitleLevel.h2,
                // ),
                // AntdParagraph(
                //   contentList: [
                //     AntdText('我们提供完善的设计原则、最佳实践和设计资源文件（'),
                //     AntdText('Sketch', code: true),
                //     AntdText('和'),
                //     AntdText('Axure', code: true),
                //     AntdText('，来帮助业务快速设计出高质量的产品原型。'),
                //   ],
                // ),
                // AntdParagraph(
                //   mark: true,
                //   content:
                //       '随着商业化的趋势，越来越多的企业级产品对更好的用户体验有了进一步的要求。带着这样的一个终极目标，我们（蚂蚁金服体验技术部）经过大量的项目实践和总结，逐步打磨出一个服务于企业级产品的设计体系 Ant Design。基于『确定』和『自然』的设计价值观，通过模块化的解决方案，降低冗余的生产成本，让设计者专注于更好的用户体验。',
                // ),
                // AntdParagraph(
                //   code: true,
                //   content:
                //       '随着商业化的趋势，越来越多的企业级产品对更好的用户体验有了进一步的要求。带着这样的一个终极目标，我们（蚂蚁金服体验技术部）经过大量的项目实践和总结，逐步打磨出一个服务于企业级产品的设计体系 Ant Design。基于『确定』和『自然』的设计价值观，通过模块化的解决方案，降低冗余的生产成本，让设计者专注于更好的用户体验。',
                // ),
              ],
            ),
          ),
          AntdCard(
            title: '文本与超链接组件',
            content: AntdSpace(
              direction: AntdSpaceDirection.vertical,
              children: [
                AntdText('Antd UI(normal)'),
                AntdText('Antd UI(secondary)', type: AntdTypofraphyType.secondary),
                AntdText('Antd UI(success)', type: AntdTypofraphyType.success),
                AntdText('Antd UI(warning)', type: AntdTypofraphyType.warning),
                AntdText('Antd UI(danger)', type: AntdTypofraphyType.danger),
                AntdText('Antd UI(disabled)', disabled: true),
                AntdText('Antd UI(mark)', mark: true),
                AntdText('Antd UI(code)', code: true),
                AntdText('Antd UI(keyboard)', keyboard: true),
                AntdText('Antd UI(underline)', underline: true),
                AntdText('Antd UI(delete)', delete: true),
                AntdText('Antd UI(strong)', strong: true),
                AntdText('Antd UI(italic)', italic: true),
                AntdLink(text: '链接', link: 'https://uiseed.cn'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
