import 'package:lazycoder/src/app_config/imports/import.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String appBarTitleText;
  final List<Widget>? actions;
  final bool isBackButtonEnabled;
  final bool isCenterTitle;

  const CustomAppBar({
    required this.appBarTitleText,
    super.key,
    this.actions,
    this.isBackButtonEnabled = true,
    this.isCenterTitle = false,
  });

  @override
  Size get preferredSize => AppBar().preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primaryColor,
      centerTitle: isCenterTitle,
      elevation: 0,
      automaticallyImplyLeading: isBackButtonEnabled,
      actions: actions,
      iconTheme: IconThemeData(color: AppColors.blackColor),
      title: Text(appBarTitleText),
    );
  }
}
