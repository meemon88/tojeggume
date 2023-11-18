import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeLanguage extends StatelessWidget {
  const ChangeLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.updateLocale(
                    Locale('bn', 'BD'),
                  );
                },
                child: Text('bangla'.tr)),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.updateLocale(
                    Locale('en', 'US'),
                  );
                },
                child: Text('English')),
          ],
        ),

    );
  }
}
