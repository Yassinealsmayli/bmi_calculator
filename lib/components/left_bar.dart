import 'package:bmi_claculator/constants.dart';
import 'package:flutter/material.dart';

class LeftBar extends StatelessWidget {
  const LeftBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: defaultPadding,
              width: 60,
              margin: const EdgeInsets.only(bottom: 2),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(defaultPadding/2),topRight: Radius.circular(defaultPadding/2))
              ),
            ),
            Container(
              height: defaultPadding,
              width: 120,
              margin: const EdgeInsets.only(bottom: 2),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(defaultPadding/2),topRight: Radius.circular(defaultPadding/2))
              ),
            ),
            Container(
              height: defaultPadding,
              width: 70,
              margin: const EdgeInsets.only(bottom: 2),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(defaultPadding/2),topRight: Radius.circular(defaultPadding/2))
              ),
            ),
            Container(
              height: defaultPadding,
              width: 50,
              margin: const EdgeInsets.only(bottom: 2),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(defaultPadding/2),topRight: Radius.circular(defaultPadding/2))
              ),
            ),
          ],
        ),
      ],
    );
  }
}