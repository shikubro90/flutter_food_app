import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/Widget/big_text.dart';
import 'package:flutter_food_app/Widget/icon_and_text.dart';
import 'package:flutter_food_app/Widget/small_text.dart';
import 'package:flutter_food_app/utils/app_colors.dart';
import 'package:flutter_food_app/utils/dimentions.dart';

class FoodPageBody extends StatefulWidget {
  FoodPageBody({super.key});
  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController =
      PageController(viewportFraction: Dimention.sliderGapBetween08);

  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  var _height = 220;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
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
    String screenHeight = MediaQuery.of(context).size.height.toString();
    String screenWidth = MediaQuery.of(context).size.width.toString();
    print("The hight is" + screenHeight);
    print("The width is" + screenWidth);
    return Column(
      children: [
        // products slider
        Container(
          height: Dimention.productsSlider,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        // DotsIndicator
        DotsIndicator(
          dotsCount: 5,
          position: _currPageValue.toInt(),
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeColor: AppColors.mainColor,
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        // SizeBox
        SizedBox(
          height: Dimention.height20,
        ),
        // Short Text
        Container(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: Dimention.width30),
                child: BigText(
                  text: "Popular",
                  color: Colors.black26,
                ),
              ),
              SizedBox(
                width: Dimention.width10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                child: SmallText(
                  text: ".",
                  color: Colors.black26,
                  size: 25,
                ),
              ),
              SizedBox(
                width: Dimention.width10,
              ),
              SmallText(text: "Food pairing")
            ],
          ),
        ),
        // List View Widgets
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                    left: Dimention.width20,
                    right: Dimention.width20,
                    bottom: Dimention.height10),
                child: Row(
                  children: [
                    Container(
                      height: Dimention.ListViewImageHight120,
                      width: Dimention.ListViewImageWidth120,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimention.height20),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/images/food-image3.jpg'))),
                    ),
                    Expanded(
                      child: Container(
                        height: Dimention.infoContainerHight100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(
                                  Dimention.height20,
                                ),
                                bottomRight:
                                    Radius.circular(Dimention.height20))),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: Dimention.width10,
                              right: Dimention.width10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BigText(
                                text:
                                    "Nutrituas food in china here you can get ",
                                color: Colors.black54,
                              ),
                              SizedBox(
                                height: Dimention.height5,
                              ),
                              SmallText(text: "With chiness characterstics"),
                              SizedBox(
                                height: Dimention.height5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  IconAndText(
                                      iconData: Icons.circle_sharp,
                                      text: "Normal",
                                      iconColor: Colors.orange,
                                      textColor: AppColors.mainBlackColor),
                                  SizedBox(
                                    width: Dimention.width5,
                                  ),
                                  IconAndText(
                                      iconData: Icons.location_on,
                                      text: "1.7km",
                                      iconColor: AppColors.mainColor,
                                      textColor: AppColors.mainBlackColor),
                                  SizedBox(
                                    width: Dimention.width5,
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
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix4 = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }

    return Transform(
      transform: matrix4,
      child: Stack(
        children: [
          Container(
            height: Dimention.productInfoCart,
            width: double.infinity,
            margin: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            decoration: BoxDecoration(
                color: index.isEven ? AppColors.mainColor : Colors.blue,
                borderRadius: BorderRadius.circular(Dimention.borderRadius30),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        'assets/images/${images[index].toString()}'))),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                height: Dimention.productPositionedCard,
                margin: EdgeInsets.only(
                    left: Dimention.prodcutPositionedCardAlign30,
                    right: Dimention.prodcutPositionedCardAlign30,
                    bottom: Dimention.prodcutPositionedCardAlignHeight30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(Dimention.borderRadius20),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xFFe8e8e8),
                          blurRadius: 5.0,
                          offset: Offset(0, 5)),
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-5, 0),
                      ),
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(5, 0),
                      )
                    ]),
                child: Container(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(
                        text: "Chinese Site",
                        color: AppColors.mainBlackColor,
                      ),
                      SizedBox(
                        height: Dimention.height5,
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
                            width: Dimention.width10,
                          ),
                          SmallText(text: "4.5"),
                          SizedBox(
                            width: Dimention.width10,
                          ),
                          SmallText(text: "1287"),
                          SizedBox(
                            width: Dimention.width10,
                          ),
                          SmallText(text: "comments")
                        ],
                      ),
                      SizedBox(
                        height: Dimention.height10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconAndText(
                              iconData: Icons.circle_sharp,
                              text: "Normal",
                              iconColor: Colors.orange,
                              textColor: AppColors.mainBlackColor),
                          const SizedBox(
                            width: 10,
                          ),
                          IconAndText(
                              iconData: Icons.location_on,
                              text: "1.7km",
                              iconColor: AppColors.mainColor,
                              textColor: AppColors.mainBlackColor),
                          const SizedBox(
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
          ),
        ],
      ),
    );
  }
}
