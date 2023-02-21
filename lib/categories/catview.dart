import 'package:apifetch/categories/cat_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesView extends StatelessWidget {
  CategoriesView({super.key});

  final AllcatsController allcatsController = Get.put(AllcatsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories View"),
      ),
      body: ListView.builder(
        itemCount: allcatsController.mycatlist.length,
        itemBuilder: (context, index) {
          return Text(allcatsController.mycatlist[index].name.toString());
        },
      ),
    );
  }
}
