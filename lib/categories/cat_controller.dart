import 'package:apifetch/categories/cat_network.dart';
import 'package:apifetch/categories/catmodel.dart';
import 'package:get/get.dart';

class AllcatsController extends GetxController {
  @override
  void onInit() {
    fetchAllcats();
    super.onInit();
  }

  var isLoading = true.obs;
  var mycatlist = <CatModel>[].obs;

  void fetchAllcats() async {
    try {
      isLoading(true);
      var allcats = await CatApi.fetchAllcats();
      if (allcats != null) {
        mycatlist.assignAll(allcats);
      }
    } finally {
      isLoading(false);
    }
  }
}
