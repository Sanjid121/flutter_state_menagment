import 'package:flutter/material.dart';
import 'package:flutter_state_menagment/controlar/main_controlar.dart';
import 'package:flutter_state_menagment/page_3.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  Page2({Key? key}) : super(key: key);

  final sanjid = Get.find<Maincontroller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        title: Text('State menagment 2'),
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
                  color: Colors.orange[400],
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
            color: Colors.orange[600],
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Page3()));
            },
            child: Text('page=> 2'),
            color: Colors.blue[400],
          ),
        ],
      ),
    );
  }
}
