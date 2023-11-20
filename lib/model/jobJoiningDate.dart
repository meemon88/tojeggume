// import 'package:datepicker_dropdown/datepicker_dropdown.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:toejiggeum/model/jobEndingDate.dart';
//
// class JobJoiningDate extends StatefulWidget {
//   const JobJoiningDate({super.key});
//
//
//   @override
//   State<JobJoiningDate> createState() => _JobJoiningDateState();
// }
//
// class _JobJoiningDateState extends State<JobJoiningDate> {
//
//
//   //Date Time Funcutions
//   DateTime? _jobStartingdateTime;
//   var result;
//   getDate() async {
//     DateTime? startingDate = await showDatePicker(
//         context: context,
//         initialDate: DateTime(DateTime.now().year),
//         firstDate: DateTime(DateTime.now().year - 20),
//         lastDate: DateTime(DateTime.now().year + 5));
//
//
//     int startYear = startingDate!.year;
//     int startMonth = startingDate.month;
//     int startDay = startingDate.day;
//
//
//     print("$startYear, $startMonth, $startDay");
//
//
//
//     setState(() {
//       _jobStartingdateTime = startingDate;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         children: <Widget>[
//           _jobStartingdateTime == null? const Text('Choose Date',style: TextStyle(fontSize: 19)):Text("Year: ${_jobStartingdateTime!.year} Month: ${_jobStartingdateTime!.month} Day: ${_jobStartingdateTime!.day}",style: const TextStyle(fontSize: 19),),
//           SizedBox(height: 15.h,),
//
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