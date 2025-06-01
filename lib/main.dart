import 'package:crypto_app/screens/routers/app_pages.dart';
import 'package:crypto_app/screens/routers/app_routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = 'pk_test_51RUkz3RQCnpFAAFCiQgQzygvdhoI1gj1EsLxXefg4jrFxPMKLXC9Gp3Osgn0MzUAJG9OgsmwSbRzs5XMGb5OSByd004gswb7xr'; // Replace with your key
  await Stripe.instance.applySettings();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      child: GetMaterialApp(
        title: 'Crypto App',
        initialRoute: AppRoutes.splash,
        getPages: AppPages.pages,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
