import 'package:lazycoder/src/app_config/imports/import.dart';

class LoaderScreen extends StatelessWidget {
  const LoaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: Colors.grey[800]?.withOpacity(.7),
        body: const Center(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: AppColors.transparentColor,
            ),
            child: Loading(),
          ),
        ),
      ),
    );
  }
}
