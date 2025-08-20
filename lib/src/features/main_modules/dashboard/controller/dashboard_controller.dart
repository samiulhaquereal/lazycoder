import 'package:lazycoder/src/app_config/imports/import.dart';

class DashboardController extends BaseController{

  RxBool ignore = false.obs;
  Rx<RepositoriesListModel?> repositoriesList = Rx<RepositoriesListModel?>(null);

  @override
  void onInit() {
    super.onInit();
    _getRepositoriesList();
  }

  Future<void> _getRepositoriesList()async{
    try {
      Map<String, dynamic>? response = await apiServices.getSearch(name: 'Flutter', page: 1, perPage: 1);
      if (response?['records'] != null && response?['records']['Response'] == 'True'){
        final jsonString = jsonEncode(response?['records']);
        repositoriesList.value = repositoriesListModelFromJson(jsonString);
        console.log( repositoriesList.value);
      }
    } catch (e) {
      console.log('Error fetching List: $e');
    }
  }

  Future<bool> showAppExitModal() async {
    final shouldPop = await RetCore.dialogBox(
        title: AppStrings.exit,
        content: AppStrings.exitMessage,
        mode: RetCoreDialogBoxMode.confirm,
        style: RetCoreDialogBoxStyle.confirm
    );
    return shouldPop;
  }

}
