import 'package:lazycoder/src/app_config/imports/import.dart';

class Loading extends StatelessWidget with ShorterEnumMixin {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
        child: Column(
          mainAxisAlignment: centerMAA,
          children: [
            Text('Loading...',style: TextStyle(fontSize: 14.sp,color: AppColors.whiteColor,fontWeight: FontWeight.bold))
          ],
        )
      ),
    );
  }
}

