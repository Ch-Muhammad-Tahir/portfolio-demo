import 'package:flutter/material.dart';
import 'package:portfolio_01/utils/app_constant.dart';
import 'package:portfolio_01/views/mobile_view/home_page/home_page_wiget/project_tile_view.dart';
import 'package:portfolio_01/views/mobile_view/home_page/home_page_wiget/top_tile.dart';
import 'package:portfolio_01/widgets/custom_text.dart';

class HomePageScreenWidget extends StatelessWidget {
  const HomePageScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
            text: "PortFolio",
            color: Colors.yellow,
            size: 24,
            maxline: 1,
            fontWeight: FontWeight.w500),
        backgroundColor: Colors.grey.shade600,
      ),
      backgroundColor: Colors.grey.shade600,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const IntroTopTile(),
              Card(
                shape: RoundedRectangleBorder(
                  //side: BorderSide(color: Colors.white24, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: CustomText(
                      text: "Introduction",
                      color: Colors.white,
                      size: width * 0.06,
                      maxline: 3,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.white24,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CustomText(
                            textAlign: TextAlign.justify,
                            text: AppConstants.introduction,
                            color: Colors.white,
                            size: width * 0.05,
                            maxline: 14,
                            fontWeight: FontWeight.w300),
                        CustomText(
                            text: "Read more >>",
                            color: Colors.yellow,
                            size: width * 0.04,
                            maxline: 4,
                            fontWeight: FontWeight.w500),
                      ],
                    ),
                  )),
              SizedBox(
                height: width * 0.7,
                width: width * 1.5,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    //physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return const ProjectTileView();
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: 5),
              )
            ],
          ),
        ),
      ),
    );
  }
}
