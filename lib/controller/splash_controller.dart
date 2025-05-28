import 'package:crypto_app/local/shared_preference_helper.dart';
import 'package:crypto_app/screens/auth/login_screen.dart';
import 'package:crypto_app/screens/dashboard_screen.dart';
import 'package:crypto_app/screens/wall/wall_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit()  {
    super.onInit();

    Future.delayed(Duration(seconds: 2), ()  {
      isUserLoggedIn();
    });
  }

  Future isUserLoggedIn() async {
    String email = await SharedPreferenceHelper.getString('email') ?? '';

    if (email.isNotEmpty) {
      Get.to(() => DashboardScreen());
    } else {
      Get.to(() => WallScreen());
    }
  }
}
