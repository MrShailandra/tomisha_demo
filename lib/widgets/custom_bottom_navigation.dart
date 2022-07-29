import 'package:flutter/material.dart';
import 'package:tomisha_demo/utils/constant.dart';
import 'package:tomisha_demo/widgets/custom_button.dart';

class CustomBottomNavigatioBar extends StatelessWidget {
  const CustomBottomNavigatioBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        margin: EdgeInsets.zero,
        elevation: 5,
        child: SizedBox(
          height: 80,
          width: getWidth(context),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: CustomButton(text: "Kostenlos Registrieren", onTap: () {}),
            ),
          ),
        ));
  }
}
