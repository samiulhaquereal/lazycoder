import 'package:lazycoder/src/app_config/imports/import.dart';

Widget buildRepositoryListItem(Item repo) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 12.h),
    decoration: BoxDecoration(
      color: Colors.grey.shade200,
      borderRadius: BorderRadius.circular(12.r),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          repo.name ?? "No Name",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        RetCore.space(8.h),
        Text(
          repo.description ?? "No description",
          style: TextStyle(fontSize: 14.sp, color: Colors.grey[700]),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        RetCore.space(8.h),
        Row(
          children: [
            Icon(Icons.star, size: 16.sp, color: AppColors.amberColor),
            Gap(4.w),
            Text("${repo.stargazersCount ?? 0}",style: TextStyle(fontSize: 14.sp),),
          ],
        )
      ],
    ),
  );
}