import 'package:apifetch/userapi/uesrnetwork.dart';
import 'package:apifetch/userapi/usermodel.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  @override
  void onInit() {
    fetchAllusers();
    super.onInit();
  }

  var isLoading = true.obs;

  var alluserlist = <UserModel>[].obs;

  void fetchAllusers() async {
    try {
      isLoading(true);
      var alluser = await UserApi.fetchAllusers();
      if (alluser != null) {
        alluserlist.assignAll(alluser);
      }
    } finally {
      isLoading(false);
    }
  }
}
