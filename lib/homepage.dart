// import 'package:age_calculator/age_calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toejiggeum/widget/customDateWidget.dart';
import 'package:toejiggeum/widget/customDetailsBox.dart';
import 'package:toejiggeum/widget/customTextField.dart';

import 'widget/language_screen.dart';
import 'widget/start_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var result;
  DateTime selectedDate = DateTime.now();

  String totalWorkingDays = "";

  calculation() async {
    var oneYear = 365;
    int salaryOne = int.parse(_firstMonth.text);
    int salaryTwo = int.parse(_secondMonth.text);
    int salaryThree = int.parse(_thirdMonth.text);
    int samsungAmount = int.parse(_samsungAmount.text);
    var totalSalary = (salaryOne + salaryTwo + salaryThree) / 3;

    DateTime fromDate = DateTime.parse(_startDate.toString());
    DateTime toDate = DateTime.parse(_endDate.toString());
    Duration differance = toDate.difference(fromDate);

    var averageYear = differance.inDays / oneYear;
    var resultOne = totalSalary * averageYear;
    result = (resultOne - samsungAmount).toStringAsFixed(2);

    setState(() {
      totalWorkingDays = differance.inDays.toString();
    });
  }

  //Date Time Funcutions
  DateTime? _startDate;

  startDate() async {
    DateTime? startingDate = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(DateTime.now().year - 20),
        lastDate: DateTime(DateTime.now().year + 5));
    setState(() {
      _startDate = startingDate;
    });
  }

//end date
  DateTime? _endDate;
  endDate() async {
    DateTime? endDate = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(DateTime.now().year - 20),
        lastDate: DateTime(DateTime.now().year + 5));
    setState(() {
      _endDate = endDate;
    });
  }

  final TextEditingController _samsungAmount = TextEditingController();
  final TextEditingController _firstMonth = TextEditingController();
  final TextEditingController _secondMonth = TextEditingController();
  final TextEditingController _thirdMonth = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const StartDrawer(),
      // Appbar Below
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text('app_name'.tr),
          actions: const [
            SelectLanguage(),
          ]),

      //Body

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              customDate(
                widgetTitle: 'job_join_date'.tr,
                buttonText: 'Select Date',
                selectedDateText:
                    "${_startDate?.day} / ${_startDate?.month} / ${_startDate?.year}",
                dateInputControler: _startDate,
                onPressed: () {
                  startDate();
                },
              ),
              customDate(
                  widgetTitle: 'job_end_date'.tr,
                  buttonText: 'Select Date',
                  onPressed: () {
                    endDate();
                  },
                  selectedDateText:
                      "${_endDate?.day} / ${_endDate?.month} / ${_endDate?.year}",
                  dateInputControler: _endDate),
              customTextField(label: "Salary One", controller: _firstMonth),
              customTextField(label: "Salary Two", controller: _secondMonth),
              customTextField(label: "Salary Three", controller: _thirdMonth),
              customTextField(
                  label: "Samsung Amount", controller: _samsungAmount),
              result == null
                  ? Container()
                  : customDetailsBox(
                      child: Column(children: [
                        SizedBox(height: 5.h,),
                      Text("Amount of money you can get: ${result.toString()}",style: TextStyle(fontSize: 16.sp),),
                        SizedBox(height: 5.h,),
                      Text("আপনি সর্বমোট ${totalWorkingDays} দিন কাজ করেছেন",style: TextStyle(fontSize: 16.sp),),
                        SizedBox(height: 5.h,),
                    ])),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      calculation();
                    });
                  },
                  child: Text('calculate'.tr))
            ],
          ),
        ),
      ),
    );
  }
}

//외국인 퇴직금 계산기
