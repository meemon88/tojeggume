import 'package:flutter/material.dart';
import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toejiggeum/screen/home/widgets/jobJoiningDate.dart';
import 'package:toejiggeum/screen/language/changeLanguage.dart';
import 'package:toejiggeum/widget/customDetailsBox.dart';
import 'package:toejiggeum/widget/customTextField.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   TextEditingController _samsungAmount = TextEditingController();
   TextEditingController _firstMonth = TextEditingController();
   TextEditingController _secondMonth = TextEditingController();
   TextEditingController _thirdMonth = TextEditingController();
  

  String  salaryOne = "";
  String salaryTwo = "";
  String salaryThree = "";
  String samsungAmount = "";

  calculate() {
    
    
    
    
    setState(() {
      salaryOne = _firstMonth.text;
      salaryTwo = _secondMonth.text;
      salaryThree = _thirdMonth.text;
      samsungAmount = _samsungAmount.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar Below
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.language)),
          title: Text('app_name'.tr),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.info_outlined))
          ]),

      //Body

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 5.h),
              Container(
                height: 120.h,
                width: 300.w,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Text('job_join_date'.tr,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 15.h,
                    ),
                    const JobJoiningDate(),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                height: 120.h,
                width: 300.w,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Text('job_end_date'.tr,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 15.h,
                    ),
                    const JobJoiningDate(),
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              customTextField(
                label: "Salary One",
                  // hintText: 'last_three_month_salary'.tr,
                  controller: _firstMonth),
              SizedBox(height: 5.h),
              customTextField(
                  label: "Salary Two",
                  // hintText: 'last_three_month_salary'.tr,
                  controller: _secondMonth),
              SizedBox(height: 5.h),
              customTextField(
                  label: "Salary Three",
                  // hintText: 'last_three_month_salary'.tr,
                  controller: _thirdMonth),
              SizedBox(height: 5.h),
              customTextField(
                  label: "Samsung Amount",
                  // hintText: 'samsung_amount'.tr,
                  controller: _samsungAmount),
              SizedBox(height: 10.h),
              customDetailsBox(
                  child: Column(
                children: [
                  Text(salaryOne),
                  Text(salaryTwo),
                  Text(salaryThree),
                  Text(samsungAmount),
                  Text("${salaryOne + salaryTwo + salaryThree}")
                ],
              )),
              SizedBox(height: 10.h),
              ElevatedButton(
                  onPressed: () {
                    calculate();
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
