
import 'package:flutter/material.dart';

Widget customDetailsBox({child}){
  return Container(
    // height: 200,
    width: 380,
    decoration: BoxDecoration(color:Colors.grey[100], borderRadius: BorderRadius.circular(20)),
    child: child,

  );
}