import 'package:apifetch/uniq_categories/uniqcat_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UniqCategories extends StatefulWidget {
  const UniqCategories({super.key});

  @override
  State<UniqCategories> createState() => _UniqCategoriesState();
}

class _UniqCategoriesState extends State<UniqCategories> {
  final UniqCatController uniqCatController = Get.put(UniqCatController());

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          title: Text("Unique Categoreis"),
        ),
        body: Obx(() {
          if (uniqCatController.isLoading.value) {
            return CircularProgressIndicator();
          } else {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 5,
                  );
                },
                itemCount: uniqCatController.uniqueList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: screenWidth,
                      height: screenHeight * 0.050,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Center(
                        child: Text(
                          uniqCatController.uniqueList[index].toString(),
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          }
        }));
  }
}
