import 'package:flutter/material.dart';
import 'package:flutter_state_menagment/controlar/main_controlar.dart';
import 'package:flutter_state_menagment/page_2.dart';
import 'package:get/get.dart';

class Page1 extends StatelessWidget {
  Page1({Key? key}) : super(key: key);

  final sanjid = Get.find<Maincontroller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('State menagment 1'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() {
            return Center(
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.green[400],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text('Data =>${sanjid.count} ')),
              ),
            );
          }),
          SizedBox(
            height: 10,
          ),
          MaterialButton(
            onPressed: () {
              sanjid.sanjid();
            },
            child: Text('count '),
            color: Colors.green[400],
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Page2()));
            },
            child: Text('page=> 2'),
            color: Colors.orange[400],
          ),
        ],
      ),
    );
  }
}
