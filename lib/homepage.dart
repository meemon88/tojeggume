import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toejiggeum/model/jobEndingDate.dart';
import 'package:toejiggeum/model/jobJoiningDate.dart';
import 'package:toejiggeum/widget/customDateWidget.dart';
import 'package:toejiggeum/widget/customDetailsBox.dart';
import 'package:toejiggeum/widget/customTextField.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _samsungAmount = TextEditingController();
  final TextEditingController _firstMonth = TextEditingController();
  final TextEditingController _secondMonth = TextEditingController();
  final TextEditingController _thirdMonth = TextEditingController();

  var result;
  String myFullResult = "";

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
              customDate(),
              customDate(),
              customTextField(label: "Salary One", controller: _firstMonth),
              customTextField(label: "Salary Two", controller: _secondMonth),
              customTextField(label: "Salary Three", controller: _thirdMonth),
              customTextField(
                  label: "Samsung Amount", controller: _samsungAmount),
              customDetailsBox(
                  child: Column(children: [
                Text(result == null ? "0" : result.toString())
              ])),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      int salaryOne1 = int.parse(_firstMonth.text);
                      int salaryOne2 = int.parse(_secondMonth.text);
                      int salaryOne3 = int.parse(_thirdMonth.text);
                      int samsungAmount = int.parse(_samsungAmount.text);

                      result = (salaryOne1 + salaryOne2 + salaryOne3) / 3 -
                          samsungAmount;
                      myFullResult = result.toString();
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
