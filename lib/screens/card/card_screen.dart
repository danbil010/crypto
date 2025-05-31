import 'package:crypto_app/constants/app_color.dart';
import 'package:crypto_app/constants/app_size_value.dart';
import 'package:crypto_app/controller/cart_controller.dart';
import 'package:crypto_app/widgets/custom_app_bar.dart';
import 'package:crypto_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  CartController get cartController => Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.background,
        appBar: CustomAppBar(
            automaticallyImplyLeading: false, title: 'Card Payment'),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: AppSpacing.vs24,
          children: [
            Expanded(
              flex: 10,
              child: Center(
                child: Text('Card Screen'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Obx(
                  () => CustomButton(
                    isLoading: cartController.isLoading.value,
                    isOutlined: cartController.isLoading.value ? true : false,
                    text: 'Pay with Stripe',
                    onPressed: () {
                     cartController.stripePayment();
                    },
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
