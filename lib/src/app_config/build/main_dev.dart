import 'package:lazycoder/src/app_config/imports/import.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  AppEnvironment.setupEnv(Environment.DEVELOPMENT);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: AppEnvironment.statusBarColor,
    statusBarIconBrightness: AppEnvironment.statusBarIconColor,
  ));
  ErrorWidget.builder = (FlutterErrorDetails details)=>SafeArea(child: Scaffold(
    appBar: CustomAppBar(appBarTitleText: AppEnvironment.title),
    body: CustomErrorWidget(errorMessage: details.exceptionAsString()),
  ));
  await GetStorage.init();
  runApp(const MyApp());
}
