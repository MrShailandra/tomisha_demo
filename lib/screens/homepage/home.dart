import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:tomisha_demo/gen/assets.gen.dart';
import 'package:tomisha_demo/utils/constant.dart';
import 'package:tomisha_demo/utils/responsive.dart';
import 'package:tomisha_demo/utils/text_size.dart';
import 'package:tomisha_demo/widgets/appbar.dart';
import 'package:tomisha_demo/widgets/mobile_tabs/arbeit.dart';
import 'package:tomisha_demo/widgets/custom_bottom_navigation.dart';
import 'package:tomisha_demo/widgets/screens_widget/desktop.dart';
import 'package:tomisha_demo/widgets/screens_widget/tablet.dart';
import 'package:tomisha_demo/widgets/mobile_tabs/tempo.dart';
import 'package:tomisha_demo/widgets/mobile_tabs/workerwidget.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen>
    with SingleTickerProviderStateMixin {
  int value = 0;
  List<Widget> widgets = [
    const WorkerWidget(),
    const ArbeitgeberWidget(),
    const TempoWidget()
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("Width ${getWidth(context) * 0.3}");
    print("Height ${getHeight(context) * 0.472}");
    return Responsive(
      tablet: const TabletWidget(),
      desktop: const DesktopWidget(),
      mobile: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: const CustomBottomNavigatioBar(),
        appBar: const CustomAppBar(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // height: getHeight(context),
                // width: getWidth(context),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: Constant.heroColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  child: Column(
                    children: [
                      Text(
                        "Deine Job \nwebsite",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: const AdaptiveTextSize()
                              .getadaptiveTextSize(context, 42),
                          fontWeight: FontWeight.w400,
                          color: Constant.textColor,
                        ),
                      ),
                      Image.asset(
                        Assets.images.undrawAgreementAajr2x.path,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: DefaultTabController(
                  initialIndex: 0,
                  length: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
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
              widgets[value]
            ],
          ),
        ),
      ),
    );
  }
}
