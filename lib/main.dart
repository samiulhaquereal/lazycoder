import 'package:lazycoder/src/app_config/imports/import.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  const env = String.fromEnvironment('ENV', defaultValue: 'development');
  AppEnvironment.setupEnv(getEnvironmentFromString(env));
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: AppEnvironment.statusBarColor,
    statusBarIconBrightness: AppEnvironment.statusBarIconColor,
  ));
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  ErrorWidget.builder = (FlutterErrorDetails details)=>SafeArea(child: Scaffold(
    appBar: CustomAppBar(appBarTitleText: AppEnvironment.title),
    body: CustomErrorMessageWidget(errorMessage: AppEnvironment.environment == Environment.development
        ? details.exceptionAsString()
        : 'Something went wrong'),
  ));
  await GetStorage.init();
  runApp(const MyApp());
}