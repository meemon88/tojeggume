import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Widget customDate({child, onPressed, buttonText,selectedDateText,dateInputControler}){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 120.h,
      width: 250.w,
      decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.black)),
      child: Column(
        children: [
          SizedBox(height: 5.h),
          Text('job_join_date'.tr,
              style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold)),
          const Spacer(),
          Container(child: Center(
            child: Column(
              children: <Widget>[
                dateInputControler == null ? Text('Choose Date', style: TextStyle(fontSize: 19))
                    : Text( selectedDateText,
                  //"Year: ${_jobEndingDateTime!.year} Month: ${_jobEndingDateTime!.month} Day: ${_jobEndingDateTime!.day}",
                 style: TextStyle(fontSize: 19)),
                SizedBox(
                  height: 15.h,
                ),
                ElevatedButton(
                    onPressed: onPressed,
                    child: Text(buttonText)),
              ],
            ),
          ),)
        ],
      ),
    ),
  );
}