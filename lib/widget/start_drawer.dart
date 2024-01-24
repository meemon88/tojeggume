import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'my_card.dart';

class StartDrawer extends StatelessWidget {
  const StartDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                      image: AssetImage("assets/drawer_header_menu.png"),
                      fit: BoxFit.cover)),
              child: MyCard()),
          ListTile(
              title: Text('all_visa_information'.tr,
                  style: TextStyle(fontSize: 15.sp)),
              onTap: () {}),
          ListTile(
            title: Text(
              'eps_exam_information'.tr,
              style: TextStyle(fontSize: 15.sp),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'About'.tr,
              style: TextStyle(fontSize: 15.sp),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'App version : 1.1.0'.tr,
              style: TextStyle(fontSize: 15.sp),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
