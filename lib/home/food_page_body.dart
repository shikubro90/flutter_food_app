import 'package:flutter/material.dart';
import 'package:flutter_food_app/Widget/big_text.dart';
import 'package:flutter_food_app/Widget/icon_and_text.dart';
import 'package:flutter_food_app/Widget/small_text.dart';
import 'package:flutter_food_app/utils/app_colors.dart';

class FoodPageBody extends StatefulWidget {
  FoodPageBody({super.key});



  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);

  var _pageController = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      setState(() {
        _pageController = pageController.page!;
        print("page value"+_pageController.toString());
      });
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  var images = [
    "food-image2.jpg",
    "food-image1.jpg",
    "food-image3.jpg",
    "food-image4.jpg",
    "food-image1.jpg",
    "food-image2.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          width: double.infinity,
          margin: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          decoration: BoxDecoration(
              color: index.isEven ? AppColors.mainColor : Colors.blue,
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/${images[index]}'))),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              height: 120,
              margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                 BoxShadow(
                   color: Color(0xFFe8e8e8),
                   blurRadius: 5.0,
                   offset: Offset(0, 5)
                 )
                ]
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: "Chinese Site",
                      color: AppColors.mainBlackColor,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                              4,
                              (index) => Icon(
                                    Icons.star_sharp,
                                    color: AppColors.mainColor,
                                    size: 20,
                                  )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "4.5"),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "1287"),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "comments")
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        IconAndText(
                            iconData: Icons.circle_sharp,
                            text: "Normal",
                            iconColor: Colors.orange,
                            textColor: AppColors.mainBlackColor),
                        SizedBox(
                          width: 10,
                        ),
                        IconAndText(
                            iconData: Icons.location_on,
                            text: "1.7km",
                            iconColor: AppColors.mainColor,
                            textColor: AppColors.mainBlackColor),
                        SizedBox(
                          width: 10,
                        ),
                        IconAndText(
                            iconData: Icons.access_alarm_rounded,
                            text: "32 min",
                            iconColor: AppColors.iconColor2,
                            textColor: AppColors.mainBlackColor)
                      ],
                    )
                  ],
                ),
              )),
        )
      ],
    );
  }
}
