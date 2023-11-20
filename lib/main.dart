import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toejiggeum/model/language.dart';
import 'package:toejiggeum/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
// Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return GetMaterialApp(
            translations: Languages(),
            locale: const Locale('en', 'US'),
            fallbackLocale: const Locale('en', 'US'),
            debugShowCheckedModeBanner: false,
            theme: ThemeData(primarySwatch: Colors.green,
              //textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp,displayColor: Colors.black12),
            ),
            home: HomePage(),
          );
        }
    );
  }
}