import 'dart:ffi';

import 'package:apifetch/uniq_categories/uniqcat_network.dart';
import 'package:get/get.dart';
import 'uniqcatmodel.dart';

class UniqCatController extends GetxController {
  @override
  void onInit() {
    fetchAllcatlist();
    super.onInit();
  }

  var isLoading = false.obs;
  var alluniqcatlist = <UniqCategory>[].obs;
  RxSet myUniqCatName = Set<String>().obs;

  var uniqueList = <String>[].obs;

  void fetchAllcatlist() async {
    try {
      isLoading(true);
      var alluniqlist = await UniqCatApi.fetchUniqCat();

      if (alluniqlist != null) {
        alluniqcatlist.assignAll(alluniqlist);
      }
      var myUniqCatName = Set<String>();

      alluniqcatlist.forEach((element) {
        myUniqCatName.add(element.category!.name.toString());
      });

      for (int i = 0; i < myUniqCatName.length; i++) {
        uniqueList.value.add(myUniqCatName.elementAt(i));
      }
      isLoading(false);
      print(myUniqCatName.length.toString());
    } catch (e) {
      isLoading(false);
    }
  }

  /// Fetch post data

  void fetchallPost() async {}
}
