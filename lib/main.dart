import 'package:flutter/material.dart';
import 'package:flutter_food_app/pages/home/food_page.dart';
import 'package:flutter_food_app/pages/home/popular_food_details.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Food App',
        theme: ThemeData(
          fontFamily: "Roboto",
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: FoodHomePage());
        home: PopularFoodDetails());
  }
}
