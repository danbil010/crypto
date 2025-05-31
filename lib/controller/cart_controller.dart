import 'package:crypto_app/utils/snackbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  Map<String, dynamic>? paymentIntentData;


  RxBool isLoading = false.obs;

  Future<void> stripePayment() async {
    try {
      isLoading.value = true;
      // For testing, use static/dummy paymentIntentData (replace with your own client secret)
      paymentIntentData = {
       
            
      };

      // Step 2: Initialize Payment Sheet
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: paymentIntentData!['client_secret'],
          style: ThemeMode.light,
          merchantDisplayName: 'Your Company',
        ),
      );

      // Step 3: Present Payment Sheet
      await Stripe.instance.presentPaymentSheet();

      SnackbarHelper.showSuccess("Payment completed successfully");
      paymentIntentData = null;
    } catch (e) {
      if (e is StripeException) {
        SnackbarHelper.showError("Payment cancelled");
      } else {
        SnackbarHelper.showSuccess("Error $e.toString()");
      }
    } finally {
      isLoading.value = false;
    }
  }
}


