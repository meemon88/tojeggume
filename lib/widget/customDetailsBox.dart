
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customDetailsBox({child}){
  return Container(
    height: 200,
    width: 380,
    decoration: BoxDecoration(color:Colors.grey[400], borderRadius: BorderRadius.circular(20)),
    child: child,

  );
}