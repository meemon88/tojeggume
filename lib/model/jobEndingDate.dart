// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
//
// class JobEndingDate extends StatefulWidget {
//   const JobEndingDate({super.key});
//
//   @override
//   State<JobEndingDate> createState() => _JobJoiningDateState();
// }
//
// class _JobJoiningDateState extends State<JobEndingDate> {
//
//   int? endYear;
//   int? endMonth;
//   int? endDay;
//   //Date Time Functions
//   DateTime? _jobEndingDateTime;
//   var result;
//
//   getDate() async {
//     DateTime? endingDate = await showDatePicker(
//         context: context,
//         initialDate: DateTime(DateTime.now().year),
//         firstDate: DateTime(DateTime.now().year - 20),
//         lastDate: DateTime(DateTime.now().year + 5));
//
//      endYear = endingDate!.year;
//      endMonth = endingDate.month;
//      endDay = endingDate.day;
//
//
//  print("$endYear, $endMonth, $endDay");
//
//     setState(() {
//       _jobEndingDateTime = endingDate;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         children: <Widget>[
//           _jobEndingDateTime == null
//               ? const Text('Choose Date', style: TextStyle(fontSize: 19))
//               : Text(
//                   "Year: ${_jobEndingDateTime!.year} Month: ${_jobEndingDateTime!.month} Day: ${_jobEndingDateTime!.day}",
//                   style: const TextStyle(fontSize: 19),
//                 ),
//           SizedBox(
//             height: 15.h,
//           ),
//           ElevatedButton(
//               onPressed: () {
//                 getDate();
//               },
//               child: const Text('Select Date')),
//         ],
//       ),
//     );
//   }
// }
