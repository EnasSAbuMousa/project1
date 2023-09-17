import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_structuer/resources/color_manager.dart';
import 'center_review.dart';
import 'feedback.dart';
import 'trainee_review.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              fontFamily: "DroidKufi",
              primaryColor: ColorManager.primaryy
            ),
            home: Directionality(
              // add this
              textDirection: TextDirection.ltr, // set this property
              child: homee(),
            ),
            debugShowCheckedModeBanner: false,

          );
        });
  }
}
