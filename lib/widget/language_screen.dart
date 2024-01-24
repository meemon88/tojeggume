import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SelectLanguage extends StatelessWidget {
  const SelectLanguage({Key? key});

  @override
  Widget build(BuildContext context) {

    final data =GetStorage();


    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: PopupMenuButton<String>(
        icon: const Icon(Icons.language),
        onSelected: (value) {
          // Save the selected language to GetStorage
          GetStorage().write('language', value);

          // Update the locale dynamically
          updateLocale(value);
        },
        itemBuilder: (BuildContext context) {
          return const [
            PopupMenuItem<String>(
              value: 'bangla',
              child: Row(
                children: [
                  SizedBox(height: 13, width: 20, child: Image(image: AssetImage('assets/icon/bd_flag.png'), fit: BoxFit.fill)),
                  SizedBox(width: 5),
                  Text("Bangla"),
                ],
              ),
            ),
            PopupMenuItem<String>(
              value: 'english',
              child: Row(
                children: [
                  SizedBox(height: 13, width: 20, child: Image(image: AssetImage('assets/icon/us_flag.png'), fit: BoxFit.fill)),
                  SizedBox(width: 5),
                  Text("English"),
                ],
              ),
            ),
            PopupMenuItem<String>(
              value: 'korean',
              child: Row(
                children: [
                  SizedBox(height: 13, width: 20, child: Image(image: AssetImage('assets/icon/kr_flag.png'), fit: BoxFit.fill)),
                  SizedBox(width: 5),
                  Text("Korean"),
                ],
              ),
            ),
          ];
        },
      ),
    );
  }

  void updateLocale(String value) {
    if (value == 'bangla') {
      Get.updateLocale(Locale('bn', 'BD'));
    } else if (value == 'english') {
      Get.updateLocale(Locale('en', 'US'));
    } else if (value == 'korean') {
      Get.updateLocale(Locale('ko', 'KR'));
    }
  }
}
