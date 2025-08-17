import 'package:lazycoder/src/app_config/imports/import.dart';

class AppPages {
  AppPages._();
  static String initial = Routes.getSplashRoute();
  static final unknownRoute = GetPage(
    name: Routes.getPageNotFoundRoute(),
    page: () => NotFoundScreen(),
    transition: Transition.fadeIn,
  );
  static List<GetPage> routes = [
    GetPage(
        name: Routes.getSplashRoute(),
        page: SplashScreen.new,
        binding: SplashBinding()
    ),
    GetPage(
      name: Routes.getLoadingRoute(),
      page: ()=> const LoaderScreen(),
      opaque: false,
      transition: Transition.fadeIn,
      preventDuplicates: true,
      fullscreenDialog: true,
    ),
    GetPage(
        name: Routes.getLoginRoute(),
        page: ()=> LoginScreen(),
        binding: LoginBinding(),
        transition: Transition.native
    ),
    GetPage(
        name: Routes.getDashboardRoute(),
        page: ()=> DashboardScreen(),
        bindings:[
          DashboardBinding()
        ]
    )
  ];
}
