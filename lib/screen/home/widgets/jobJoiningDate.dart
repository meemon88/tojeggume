import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobJoiningDate extends StatefulWidget {
  const JobJoiningDate({super.key});

  @override
  State<JobJoiningDate> createState() => _JobJoiningDateState();
}

class _JobJoiningDateState extends State<JobJoiningDate> {


  //Date Time Funcutions
  DateTime? _dateTime;
  var result;
  getDate() async {
    DateTime? date = await showDatePicker(
        context: context,
        initialDate: DateTime(DateTime.now().year),
        firstDate: DateTime(DateTime.now().year - 20),
        lastDate: DateTime(DateTime.now().year + 5));

    setState(() {
      _dateTime = date;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          _dateTime == null? const Text('Choose Date',style: TextStyle(fontSize: 19)):Text("Year: ${_dateTime!.year} Month: ${_dateTime!.month} Day: ${_dateTime!.day}",style: const TextStyle(fontSize: 19),),
          SizedBox(height: 15.h,),

          ElevatedButton(
              onPressed: () {
                getDate();
              },
              child: const Text('Select Date')),
        ],
      ),
    );
  }
}