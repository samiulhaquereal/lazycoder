import 'package:lazycoder/src/app_config/imports/import.dart';

class DashboardController extends BaseController{

  var isLoadingMore = false.obs;
  RxInt currentPage = 1.obs;
  Rx<RepositoriesListModel?> repositoriesList = Rx<RepositoriesListModel?>(null);

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

        if (repositoriesList.value != null) {
          return;
        }

        final cached = storage.read('repositoriesList');
        if (cached != null) {
          repositoriesList.value = repositoriesListModelFromJson(cached);
          return;
        }

        repositoriesList.value = RepositoriesListModel();
      }

      final page = currentPage.value;
      Map<String, dynamic>? response = await apiServices.getSearch(name: 'Flutter', page: page, perPage: 10);
      if (response?['records'] != null){
        final jsonString = jsonEncode(response?['records']);
        final newData = repositoriesListModelFromJson(jsonString);

        if (loadMore) {
          final currentItems = repositoriesList.value?.items ?? [];
          final updatedItems = [...currentItems, ...?newData.items];

          repositoriesList.value = RepositoriesListModel(
            totalCount: newData.totalCount,
            incompleteResults: newData.incompleteResults,
            items: updatedItems,
          );
        } else {
          repositoriesList.value = newData;
          await storage.write('repositoriesList', jsonString);
        }
      }
    } catch (e) {
      console.log('Error fetching List: $e');
    }finally {
      isLoadingMore.value = false;
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

  void onTapItem(Item repo) {
    Get.toNamed(Routes.getRepositoriesDetailsRoute(),arguments: repo);
  }

}
