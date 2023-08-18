import 'package:flutter/material.dart';
import 'package:portfolio_01/widgets/custom_text.dart';

class CustomRoundedText extends StatelessWidget {
  final String text;
  const CustomRoundedText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 15, 16, 65),
          borderRadius: BorderRadius.circular(20)),
      child: CustomText(
          text: text,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          maxline: 1,
          size: MediaQuery.sizeOf(context).width * 0.04),
    );
  }
}
