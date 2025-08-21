import 'package:lazycoder/src/app_config/imports/import.dart';

class RepositoriesDetailsScreen extends BaseView<RepositoriesDetailsController> {
  RepositoriesDetailsScreen({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Color pageBackgroundColor() {
    return AppColors.backgroundColor;
  }

  @override
  Widget body(BuildContext context) {
    final repo = controller.item;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            repo.name ?? "No name",
            style: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.whiteColor,
            ),
          ),
          RetCore.space(12.h),
          Row(
            children: [
              CircleAvatar(
                radius: 20.r,
                backgroundImage: NetworkImage(repo.owner?.avatarUrl ?? ""),
                backgroundColor: AppColors.customeGrayColor,
              ),
              Gap(10.w),
              Text(
                repo.owner?.login ?? "Unknown owner",
                style: const TextStyle(
                  fontSize: 16,
                  color: AppColors.whiteColor,
                ),
              ),
            ],
          ),
          RetCore.space(16.h),
          Text(
            repo.description ?? "No description provided.",
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.whiteColor.withOpacity(0.8),
            ),
          ),
          RetCore.space(16.h),
          Row(
            children: [
              Icon(Icons.update, size: 16.sp, color: AppColors.grayColor),
              Gap(6.w),
              Text(
                "Last updated: ${repo.updatedAt != null ? repo.updatedAt.toString() : 'Unknown'}",
                style: TextStyle(
                  fontSize: 13.sp,
                  color: AppColors.grayColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}