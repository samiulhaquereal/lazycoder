import 'package:lazycoder/src/app_config/imports/import.dart';

class DashboardController extends BaseController{

  RxBool ignore = false.obs;
  var isLoadingMore = false.obs;
  RxInt currentPage = 1.obs;
  Rx<RepositoriesListModel?> repositoriesList = Rx<RepositoriesListModel?>(null);
  RxList<String> posterPaths = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    getRepositoriesList();
  }

  Future<void> getRepositoriesList({bool loadMore = false})async{
    try {
      if (loadMore) {
        isLoadingMore.value = true;
        currentPage.value++;
      } else {
        currentPage.value = 1;
        repositoriesList.value = RepositoriesListModel();
      }

      Map<String, dynamic>? response = await apiServices.getSearch(name: 'Flutter', page: 1, perPage: 1);
      if (response?['records'] != null && response?['records']['Response'] == 'True'){
        final jsonString = jsonEncode(response?['records']);
        repositoriesList.value = repositoriesListModelFromJson(jsonString);
        /*posterPaths.value = repositoriesList.value?.items
            ?.map((e) => e.poster ?? '')
            .where((url) => url.isNotEmpty)
            .toList() ?? [];*/
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

  void onTapItem() {
    //Get.toNamed(Routes.getMovieDetailsRoute());
  }

}
