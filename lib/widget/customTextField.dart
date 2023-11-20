import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Widget customTextField({controller, onTap, onChanged, key, hintText, required String label,}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      height: 50.h,
      width: 250.w,
      child: TextFormField(
        key: key,
        textAlign: TextAlign.center,
        controller: controller,
        style: const TextStyle(fontSize: 18),
        // decoration: InputDecoration(hintText: 'last_three_month_salary'.tr),
        onTap: onTap,
        decoration: InputDecoration(
          hintText: hintText,
          enabled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(4),),
          label: Text(label),
        ),

        onChanged: onChanged,
        maxLength: 10,
        maxLines: 1,
        keyboardType: TextInputType.number,
      ),
    ),
  );
}
