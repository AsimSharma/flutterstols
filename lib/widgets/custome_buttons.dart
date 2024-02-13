import 'package:flutter/material.dart';
import 'package:flutterstols/utils/extensions.dart';

class CustomeButtons extends StatelessWidget {
  const CustomeButtons(
      {super.key,
      required this.height,
      required this.width,
      required this.btnTitle,
      required this.btnColor,
      required this.onPressed});

  final double height, width;
  final String btnTitle;
  final Color btnColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: Container(
          margin:
              EdgeInsets.symmetric(horizontal: 0.0045.toResponsive(context)),
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: btnColor,
              borderRadius: BorderRadius.all(
                  Radius.circular(0.008.toResponsive(context)))),
          child: Center(
            child: Text(
              btnTitle,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 0.015.toResponsive(context),
                  fontWeight: FontWeight.w700),
            ),
          ),
        ));
  }
}
