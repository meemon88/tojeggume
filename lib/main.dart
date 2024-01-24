
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:toejiggeum/languages/language.dart';
import 'package:toejiggeum/homepage.dart';


// Future internetChacker()async{
//   try{
//     await InternetAddress.lookup('google.com');
//     print('Ihave Internet');
//   }catch(e){
//     print(e);
//   }
// }

void main() async {
  await GetStorage.init();
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
            locale: Locale('en', 'US',),
            fallbackLocale: const Locale('en', 'US'),
            debugShowCheckedModeBanner: false,
            theme: ThemeData(primarySwatch: Colors.indigo),
            home: HomePage(),
          );
        });
  }
}
