import 'package:bmi_claculator/constants.dart';
import 'package:flutter/material.dart';

class RightBar extends StatelessWidget {
  const RightBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: defaultPadding,
              width: 80,
              margin: const EdgeInsets.only(bottom: 2),
              decoration:   BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(defaultPadding/2),topLeft: Radius.circular(defaultPadding/2))
              ),
            ),
            Container(
              height: defaultPadding,
              width: 100,
              margin: const EdgeInsets.only(bottom: 2),
              decoration:   BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(defaultPadding/2),topLeft: Radius.circular(defaultPadding/2))
              ),
            ),
            Container(
              height: defaultPadding,
              width: 20,
              margin: const EdgeInsets.only(bottom: 2),
              decoration:   BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(defaultPadding/2),topLeft: Radius.circular(defaultPadding/2))
              ),
            ),
          ],
        ),
      ],
    );
  }
}