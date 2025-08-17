import 'package:lazycoder/src/app_config/imports/import.dart';

class LoginScreen extends BaseView<LoginController> {
  LoginScreen({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }
  
  @override
  Future<bool> onWillPop()async{
    final shouldPop = await controller.showWarning(controller.buildContext!);
    return shouldPop ?? false;
  }

  @override
  Widget body(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [

        ],
      ),
    );
  }
}
