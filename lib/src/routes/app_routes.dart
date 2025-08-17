abstract class Paths {
  Paths._();
  static const String _splash = "/";
  static const String _notFoundScreenPage = "/404";
  static const String _loadingScreenPage = "/loading";
  static const String _loginPage = "/loginPage";
  static const String _dashboardPage = "/dashboardPage";
}

abstract class Routes{
  Routes._();
  static String getSplashRoute ()=> Paths._splash;
  static String getLoadingRoute ()=> Paths._loadingScreenPage;
  static String getPageNotFoundRoute ()=> Paths._notFoundScreenPage;
  static String getLoginRoute ()=> Paths._loginPage;
  static String getDashboardRoute()=> Paths._dashboardPage;
}
