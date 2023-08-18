import 'package:flutter/material.dart';
import 'package:portfolio_01/utils/app_constant.dart';

import '../../../../widgets/custom_text.dart';

class IntorTextWidget extends StatefulWidget {
  const IntorTextWidget({super.key});

  @override
  State<IntorTextWidget> createState() => _IntorTextWidgetState();
}

class _IntorTextWidgetState extends State<IntorTextWidget> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.sizeOf(context).width;
    return SizedBox(
      width: size * 0.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
              text: AppConstants.name,
              color: Colors.white,
              size: size * 0.07,
              maxline: 3,
              fontWeight: FontWeight.bold),
          CustomText(
              text: AppConstants.location,
              color: Colors.white,
              size: size * 0.04,
              maxline: 3,
              fontWeight: FontWeight.bold)
        ],
      ),
    );
  }
}
