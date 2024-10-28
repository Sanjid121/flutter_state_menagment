import 'package:flutter/material.dart';
import 'package:flutter_state_menagment/controlar/main_controlar.dart';
import 'package:flutter_state_menagment/page_1.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

void main() {
  Get.put(Maincontroller(),);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Page1(),
  ));
}
