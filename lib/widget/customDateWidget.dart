import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Widget customDate(
    {onPressed,
    buttonText,
    selectedDateText,
    dateInputControler,
    widgetTitle}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 90.h,
      width: 250.w,
      decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.black)),
      child: Column(
        children: [
          SizedBox(height: 5.h),
          Text(widgetTitle,
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const Spacer(),
          Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  ElevatedButton(
                      onPressed: onPressed,
                      child: dateInputControler == null? Text(buttonText, style: TextStyle(fontSize: 14.sp))
                          : Text(selectedDateText, style: TextStyle(fontSize: 14.sp))),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}
