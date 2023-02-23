import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../uniq_categories/uniqcat_controller.dart';

class Postview extends StatelessWidget {
  // const Postview({super.key});

  var data = Get.arguments;

  final UniqCatController uniqCatController = Get.put(UniqCatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text("Post View"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
          itemCount: uniqCatController.alluniqcatlist.length,
          itemBuilder: (context, index) {
            return Text(uniqCatController
                .alluniqcatlist[int.parse(data.toString())].title
                .toString());
          },
        ),
      ),
    );
  }
}
