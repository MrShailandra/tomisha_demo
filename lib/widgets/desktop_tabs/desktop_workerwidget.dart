import 'package:flutter/material.dart';
import 'package:tomisha_demo/gen/assets.gen.dart';
import 'package:tomisha_demo/utils/constant.dart';
import 'package:tomisha_demo/utils/text_size.dart';
import 'package:tomisha_demo/widgets/paths/sectionPath.dart';

class DesktopWorkerWidget extends StatelessWidget {
  const DesktopWorkerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: getHeight(context) * 0.035,
        ),
        Center(
          child: Text(
            "Drei einfache Schritte\n zu deinem neuen Job",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Constant.widgetTextColor,
              fontWeight: FontWeight.w400,
              fontSize:
                  const AdaptiveTextSize().getadaptiveTextSize(context, 40),
            ),
          ),
        ),
        SizedBox(height: getHeight(context) * 0.050),
        SizedBox(
            height: getHeight(context) * 0.48,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: getWidth(context) * 0.50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(30),
                            decoration: const BoxDecoration(
                                color: Color(0xffF7FAFC),
                                shape: BoxShape.circle),
                            child: Text(
                              "1.",
                              style: TextStyle(
                                color: Constant.numberTextColor,
                                fontSize: const AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 130),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              const SizedBox(
                                height: 90,
                              ),
                              Text(
                                "Erstellen dein Lebenslauf",
                                style: TextStyle(
                                  color: Constant.numberTextColor,
                                  fontSize: const AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 26),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: getWidth(context) * 0.040,
                    ),
                    Image.asset(
                      Assets.images.undrawProfileDataReV81r2x.path,
                      width: getWidth(context) * 0.25,
                    ),
                  ],
                )
              ],
            )),
        SizedBox(
          // height: getHeight(context) * 0.533,
          // width: getWidth(context),
          child: Stack(
            alignment: Alignment.center,
            children: [
              ClipPath(
                clipper: WaveClipperTwo(reverse: true, flip: true),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: getHeight(context) * 0.354,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: Constant.sectionColor),
                  ),
                ),
              ),
              Positioned(
                top: getHeight(context) * 0.06,
                child: ClipPath(
                  clipper: WaveClipperTwo(reverse: false, flip: false),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: getHeight(context) * 0.354,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: Constant.sectionColor),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    Assets.images.undrawTask31wc.path,
                    width: getWidth(context) * 0.16,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: getWidth(context) * 0.12,
                  ),
                  Text(
                    "2.",
                    style: TextStyle(
                      color: Constant.numberTextColor,
                      fontSize: const AdaptiveTextSize()
                          .getadaptiveTextSize(context, 120),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Erstellen dein Lebenslauf",
                        style: TextStyle(
                          color: Constant.numberTextColor,
                          fontSize: const AdaptiveTextSize()
                              .getadaptiveTextSize(context, 26),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: getHeight(context) * 0.15,
        ),
        SizedBox(
            height: getHeight(context) * 0.48,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      // width: getWidth(context) * 0.50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 200,
                                width: 200,
                                padding: const EdgeInsets.all(30),
                                decoration: const BoxDecoration(
                                    color: Color(0xffF7FAFC),
                                    shape: BoxShape.circle),
                              ),
                              Positioned(
                                top: -20,
                                right: 40,
                                child: Text(
                                  "3.",
                                  style: TextStyle(
                                    color: Constant.numberTextColor,
                                    fontSize: const AdaptiveTextSize()
                                        .getadaptiveTextSize(context, 130),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 90,
                        ),
                        Text(
                          "Erstellen dein Lebenslauf",
                          style: TextStyle(
                            color: Constant.numberTextColor,
                            fontSize: const AdaptiveTextSize()
                                .getadaptiveTextSize(context, 26),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: getWidth(context) * 0.20,
                    ),
                    Image.asset(
                      Assets.images.undrawPersonalFile222m.path,
                      width: getWidth(context) * 0.25,
                    ),
                  ],
                )
              ],
            )),
        SizedBox(
          height: getHeight(context) * 0.035,
        )
      ],
    );
  }
}
