import 'package:flutter/material.dart';
import 'package:portfolio_01/utils/app_constant.dart';
import 'package:portfolio_01/widgets/custom_text.dart';

import '../../../../widgets/custom_rounded_text.dart';

class ProjectTileView extends StatelessWidget {
  const ProjectTileView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(20),
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                  text: "Mobile App",
                  color: Colors.white,
                  size: width * 0.04,
                  maxline: 1,
                  fontWeight: FontWeight.bold),
              SizedBox(
                height: width * 0.015,
              ),
              CustomText(
                  text: "Facebook Clone",
                  color: Colors.white,
                  size: width * 0.045,
                  maxline: 1,
                  fontWeight: FontWeight.bold),
              SizedBox(
                height: width * 0.01,
              ),
              CustomText(
                  text: "jan 2024 -jan 2027",
                  color: Colors.white,
                  size: width * 0.035,
                  maxline: 1,
                  fontWeight: FontWeight.bold),
              SizedBox(
                height: width * 0.02,
              ),
              SizedBox(
                width: width * 0.8,
                child: CustomText(
                    textAlign: TextAlign.justify,
                    text: AppConstants.introduction,
                    color: Colors.grey.shade300,
                    size: width * 0.04,
                    maxline: 4,
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomText(
                  text: "Read more >>",
                  color: Colors.yellow,
                  size: width * 0.04,
                  maxline: 4,
                  fontWeight: FontWeight.w500),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).width * 0.1,
                width: MediaQuery.sizeOf(context).width * 0.85,
                child: NotificationListener(
                  child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,

                      //shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return const CustomRoundedText(text: "Flutter");
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 10,
                        );
                      },
                      itemCount: 4),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
