import 'package:flutter/material.dart';
import 'package:tomisha_demo/gen/assets.gen.dart';
import 'package:tomisha_demo/utils/constant.dart';
import 'package:tomisha_demo/utils/text_size.dart';
import 'package:tomisha_demo/widgets/paths/circlepath.dart';
import 'package:tomisha_demo/widgets/paths/sectionPath.dart';

class ArbeitgeberWidget extends StatelessWidget {
  const ArbeitgeberWidget({Key? key}) : super(key: key);

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
            "Drei einfache Schritte \nzu deinem neuen Mitarbeiter",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Constant.widgetTextColor,
              fontWeight: FontWeight.w600,
              fontSize:
                  const AdaptiveTextSize().getadaptiveTextSize(context, 25),
            ),
          ),
        ),
        SizedBox(height: getHeight(context) * 0.025),
        SizedBox(
          height: getHeight(context) * 0.48,
          child: Stack(
            children: [
              Positioned(
                bottom: -5,
                child: CustomPaint(
                    painter: MyPainter(),
                    child: SizedBox(
                      height: getHeight(context) * 0.415,
                      width: getWidth(context) * 0.7,
                    )),
              ),
              Positioned(
                bottom: getHeight(context) * 0.085,
                left: getWidth(context) * 0.04,
                child: Text(
                  "1.",
                  style: TextStyle(
                    color: Constant.numberTextColor,
                    fontSize: const AdaptiveTextSize()
                        .getadaptiveTextSize(context, 130),
                  ),
                ),
              ),
              Positioned(
                bottom: getHeight(context) * 0.12,
                left: getWidth(context) * 0.3,
                child: Text(
                  "Erstellen dein \nUnternehmensprofil",
                  style: TextStyle(
                    color: Constant.numberTextColor,
                    fontSize: const AdaptiveTextSize()
                        .getadaptiveTextSize(context, 16),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  Assets.images.undrawProfileDataReV81r2x.path,
                  height: getHeight(context) * 0.237,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: getHeight(context) * 0.533,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              ClipPath(
                clipper: WaveClipperTwo(reverse: true, flip: true),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: getHeight(context) * 0.414,
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
                    height: getHeight(context) * 0.414,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: Constant.sectionColor),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: getHeight(context) * 0.024,
                left: getWidth(context) * 0.04,
                child: Text(
                  "2.",
                  style: TextStyle(
                    color: Constant.numberTextColor,
                    fontSize: const AdaptiveTextSize()
                        .getadaptiveTextSize(context, 130),
                  ),
                ),
              ),
              Positioned(
                top: getHeight(context) * 0.142,
                child: Image.asset(
                  Assets.images.undrawAboutMeWa29.path,
                ),
              ),
              Positioned(
                top: getHeight(context) * 0.154,
                left: getWidth(context) * 0.3,
                child: Text(
                  "Erstellen ein Jobinserat",
                  style: TextStyle(
                    color: Constant.numberTextColor,
                    fontSize: const AdaptiveTextSize()
                        .getadaptiveTextSize(context, 16),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: getHeight(context) * 0.472,
          width: getWidth(context),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              CustomPaint(
                  painter: MyPainter(),
                  child: SizedBox(
                    height: getHeight(context) * 0.414,
                    width: getWidth(context) * 0.8,
                  )),
              Positioned(
                top: getHeight(context) * 0.036,
                left: getWidth(context) * 0.04,
                child: Text(
                  "3.",
                  style: TextStyle(
                    color: Constant.numberTextColor,
                    fontSize: const AdaptiveTextSize()
                        .getadaptiveTextSize(context, 130),
                  ),
                ),
              ),
              Positioned(
                top: getHeight(context) * 0.1179,
                left: getWidth(context) * 0.3,
                child: Text(
                  "Wähle deinen \nneuen Mitarbeiter aus",
                  style: TextStyle(
                    color: Constant.numberTextColor,
                    fontSize: const AdaptiveTextSize()
                        .getadaptiveTextSize(context, 16),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  Assets.images.undrawSwipeProfiles1I6mr.path,
                  height: getHeight(context) * 0.237,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: getHeight(context) * 0.035,
        )
      ],
    );
  }
}
