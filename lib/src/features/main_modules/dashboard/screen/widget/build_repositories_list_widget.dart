import 'package:lazycoder/src/app_config/imports/import.dart';

Widget buildRepositoriesList(DashboardController controller) {
  final scrollController = ScrollController();

  scrollController.addListener(() {
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 100) {
      if (!controller.isLoadingMore.value) {
        controller.getRepositoriesList(loadMore: true);
      }
    }
  });

  return Obx(() {
    final items = controller.repositoriesList.value?.items ?? [];
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (_, __) => SizedBox(height: 12.h),
        controller: scrollController,
        scrollDirection: Axis.vertical,
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
        itemCount: items.length + (controller.isLoadingMore.value ? 1 : 0),
        itemBuilder: (context, index) {
          if (index < items.length) {
            final repo = items[index];
            return InkWell(
                onTap: ()=> controller.onTapItem(repo),
                child: buildRepositoryListItem(repo));
          } else {
            return Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 16.w),
                child: CircularProgressIndicator(color: AppColors.whiteColor),
              ),
            );
          }
        },
      ),
    );
  });
}