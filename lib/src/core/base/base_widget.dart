import 'package:lazycoder/src/app_config/imports/import.dart';

abstract class BaseWidget<Controller extends BaseController> extends GetView<Controller> with ValidatorMixin, ShorterEnumMixin, StyleMixin {
  BaseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: onWillPop,
        child: body(context)
        );
  }

  Widget body(BuildContext context);

  Future<bool> onWillPop() async {
    return true;
  }
}
