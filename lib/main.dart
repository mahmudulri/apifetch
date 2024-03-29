import 'package:apifetch/categories/catview.dart';
import 'package:apifetch/userapi/userview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'uniq_categories/uniqcatview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UniqCategories(),
    );
  }
}
