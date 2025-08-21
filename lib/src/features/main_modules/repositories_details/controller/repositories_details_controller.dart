import 'package:lazycoder/src/app_config/imports/import.dart';

class RepositoriesDetailsController extends BaseController{

  var item;

  @override
  void onInit() {
    super.onInit();
    item = Get.arguments;
    console.log(item);
  }

}
