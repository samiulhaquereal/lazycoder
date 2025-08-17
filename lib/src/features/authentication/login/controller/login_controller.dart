import 'package:lazycoder/src/app_config/imports/import.dart';

class LoginController extends BaseController{


  Future<bool?> showWarning(BuildContext context) async => showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Exit"),
        content: Text("Do you want to exit app ?"),
        elevation: 24,
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: Text("No")),
          TextButton(
              onPressed: () => Navigator.pop(context, true),
              child: Text("Yes")),
        ],
      ));
}
