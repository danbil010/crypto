
import 'package:crypto_app/constants/app_color.dart';
import 'package:crypto_app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: AppColor.background,
        appBar: CustomAppBar(
          automaticallyImplyLeading: true,
          backgroundColor: AppColor.white,
          title: 'Your Work Schedule',
        ),
        body: Center(
          child: Text('Card Screen'),
        )
      
    );
  }
}
