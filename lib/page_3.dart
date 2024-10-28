import 'package:flutter/material.dart';
import 'package:flutter_state_menagment/controlar/main_controlar.dart';
import 'package:get/get.dart';

class Page3 extends StatelessWidget {
  Page3({Key? key}) : super(key: key);

  final sanjid = Get.find<Maincontroller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: Text('State menagment 3'),
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
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text('Data =>${sanjid.count}')),
              ),
            );
          }),
          MaterialButton(
            minWidth: 200,
            onPressed: () {
              sanjid.sanjid();
            },
            child: Text('count'),
            color: Colors.blue[600],
          ),
        ],
      ),
    );
  }
}
