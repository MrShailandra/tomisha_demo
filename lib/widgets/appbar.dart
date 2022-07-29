import 'package:flutter/material.dart';
import 'package:tomisha_demo/utils/constant.dart';
import 'package:tomisha_demo/utils/text_size.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // height: getHeight(context) * 0.01,
          width: getWidth(context),
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: Constant.gredientColor)),
        ),
        Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          margin: EdgeInsets.zero,
          elevation: 5,
          child: SizedBox(
            width: getWidth(context),
            height: getHeight(context) * 0.10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  Text(
                    "Login",
                    style: TextStyle(
                      color: Constant.fontColor,
                      fontSize: const AdaptiveTextSize()
                          .getadaptiveTextSize(context, 14),
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(85);
}
