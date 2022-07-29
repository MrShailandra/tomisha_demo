import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:tomisha_demo/gen/assets.gen.dart';
import 'package:tomisha_demo/utils/text_size.dart';
import 'package:tomisha_demo/widgets/appbar.dart';
import 'package:tomisha_demo/widgets/desktop_tabs/desktop_arbeit.dart';
import 'package:tomisha_demo/widgets/desktop_tabs/desktop_tempo.dart';
import 'package:tomisha_demo/widgets/desktop_tabs/desktop_workerwidget.dart';
import 'package:tomisha_demo/widgets/custom_button.dart';
import 'package:tomisha_demo/widgets/hero_text.dart';
import 'package:tomisha_demo/widgets/paths/sectionPath.dart';

import '../../utils/constant.dart';

class DesktopWidget extends StatefulWidget {
  const DesktopWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<DesktopWidget> createState() => _DesktopWidgetState();
}

class _DesktopWidgetState extends State<DesktopWidget> {
  int value = 0;
  List<Widget> widgets = [
    const DesktopWorkerWidget(),
    const DesktopArbeitWidget(),
    const DesktopTempoWidget()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: DesktopClipper(),
              child: Container(
                height: getHeight(context) * 0.47,
                width: getWidth(context),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: Constant.heroColor),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: getWidth(context) * 0.12,
                    ),
                    SizedBox(
                      width: getWidth(context) * 0.22,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const HeroText(isDesktop: true),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomButton(
                              onTap: () {}, text: "Kostenlos Registrieren")
                        ],
                      ),
                    ),
                    Container(
                      height: getHeight(context) * 0.30,
                      width: getWidth(context) * 0.40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                  Assets.images.undrawAgreementAajr.path))),
                    ),
                    const SizedBox()
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: getWidth(context) * 0.20),
              child: DefaultTabController(
                initialIndex: 0,
                length: 3,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: const Color(0xffCBD5E0))),
                    child: TabBar(
                      enableFeedback: true,
                      automaticIndicatorColorAdjustment: true,
                      unselectedLabelColor: Constant.fontColor,
                      labelStyle: TextStyle(
                          fontSize: const AdaptiveTextSize()
                              .getadaptiveTextSize(context, 14),
                          color: Constant.textColor,
                          fontWeight: FontWeight.bold),
                      unselectedLabelStyle: TextStyle(
                          fontSize: const AdaptiveTextSize()
                              .getadaptiveTextSize(context, 14),
                          color: Constant.fontColor),
                      onTap: (index) {
                        setState(() {
                          value = index;
                        });
                      },
                      tabs: const [
                        Tab(
                          text: "Arbeitnehmer",
                        ),
                        Tab(
                          text: "Arbeitgeber",
                        ),
                        Tab(
                          text: "Temporärbüro",
                        ),
                      ],
                      indicator: RectangularIndicator(
                          horizontalPadding: 0,
                          verticalPadding: 0,
                          color: Constant.activeTabColor,
                          bottomLeftRadius: value == 0 ? 14 : 0,
                          topLeftRadius: value == 0 ? 14 : 0,
                          bottomRightRadius: value == 2 ? 14 : 0,
                          topRightRadius: value == 2 ? 14 : 0),
                    ),
                  ),
                ),
              ),
            ),
            widgets[value]
          ],
        ),
      ),
    );
  }
}
