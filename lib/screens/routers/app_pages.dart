
import 'package:crypto_app/screens/auth/login_screen.dart';
import 'package:crypto_app/screens/routers/app_routes.dart';
import 'package:crypto_app/screens/dashboard_screen.dart';
import 'package:get/get.dart';

import '../splash/splash_screen.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: AppRoutes.splash,
        page: () => SplashScreen(),
        transition: Transition.native),
    GetPage(
        name: AppRoutes.login,
        page: () => LoginScreen(),
        transition: Transition.fade),
    GetPage(
      name: AppRoutes.dashboard,
      page: () => DashboardScreen(),
      transition: Transition.fade,
    ),
    
  ];
}
