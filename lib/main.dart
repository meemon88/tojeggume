
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
  // box.write("ks", "khariul");
  // print(box.read("ks"));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
GetStorage box = GetStorage();
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
            // locale: Locale('en', 'US',),
            locale:
              box.read("language")== "english" ? Locale('en', 'US',):
              box.read("language")== "bangla" ? Locale('bn', 'BD',):
              box.read("language")== "korean" ? Locale('ko', 'KR',): Locale('en', 'US',),
            fallbackLocale: const Locale('en', 'US'),
            debugShowCheckedModeBanner: false,
            theme: ThemeData(primarySwatch: Colors.indigo),
            home: HomePage(),
          );
        });
  }
}
