import 'package:flutter/material.dart';
import 'package:flutter_page_ui/Pages/user_creator/login_page.dart';
import 'package:flutter_page_ui/widgets/custom_page_route.dart';
import 'package:flutter_page_ui/widgets/responsiv.dart';
import 'package:flutter_page_ui/widgets/responsive_body.dart';
import 'package:flutter_page_ui/widgets/widget_scrollable.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        color: const Color(0xFF0A192E),
        child: WidgetScrollable(
          childwidget: buildContent(context),
          height: 856,
        ));
  }

  Column buildContent(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: ResponsiveWidget.isMobile(context)
            ? CrossAxisAlignment.stretch
            : CrossAxisAlignment.center,
        children: [
          Container(
            color: const Color(0xFFE2CCCE),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.6,
            child: const Image(image: AssetImage('assets/nft.png')),
          ),
          SizedBox(
            width: 1000,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Let's Get ${ResponsiveWidget.isMobile(context) ? "\n" : ""}Started",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium
                            ?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFFE2CCCE)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Intraday trading is an exciting and mysterious activity for most people. The flashing profit-making intraday trading videos on YouTube excite most. If you ask any",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                            fontWeight: FontWeight.normal,
                            color: Color(0xFFE2CCCE)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(createRoute(LoginPage()));
                            },
                            child: Row(
                              children: [
                                Text(
                                  "Next",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5
                                      ?.copyWith(color: Color(0xFFD57368)),
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xFFD57368),
                                )
                              ],
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 60,
                    )
                  ]),
            ),
          )
        ]);
  }
}
