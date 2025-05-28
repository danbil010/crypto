import 'package:crypto_app/constants/app_assets.dart';
import 'package:crypto_app/constants/app_color.dart';
import 'package:crypto_app/constants/app_fonts.dart';
import 'package:crypto_app/constants/app_size_value.dart';
import 'package:crypto_app/constants/app_string.dart';
import 'package:crypto_app/constants/app_styles.dart';
import 'package:crypto_app/controller/home_controller.dart';
import 'package:crypto_app/models/assets_model.dart';
import 'package:crypto_app/models/transactions_model.dart';
import 'package:crypto_app/screens/home/widget/card_container.dart';
import 'package:crypto_app/utils/custom_app_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: AppSize.h500,
              color: AppColor.white,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    width: double.infinity,
                    height: AppSize.h460,
                    padding: EdgeInsets.only(top: AppPadding.vp48),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              AppAssets.images.backgroundImg,
                            ),
                            fit: BoxFit.cover)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(AppPadding.vp12),
                          margin: EdgeInsets.only(left: AppMargin.hm12),
                          decoration: BoxDecoration(
                              color: AppColor.white, shape: BoxShape.circle),
                          child: Icon(
                            Icons.menu,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: AppSpacing.hs12,
                            children: [
                              Image.asset(
                                AppAssets.images.logo,
                                scale: 8,
                                fit: BoxFit.none,
                              ),
                              Text(
                                AppStrings.appName,
                                style: getExtraLargeTextStyle(
                                    color: AppColor.black,
                                    fontSize: AppFontSize.xxxLarge),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          spacing: AppSpacing.hs24,
                          children: [
                            Container(
                              padding: EdgeInsets.all(AppPadding.vp12),
                              decoration: BoxDecoration(
                                  color: AppColor.white,
                                  shape: BoxShape.circle),
                              child: Icon(
                                Icons.notifications,
                              ),
                            ),
                            Container(
                              width: AppSize.h56,
                              height: AppSize.h56,
                              margin: EdgeInsets.only(right: AppMargin.hm12),
                              decoration: BoxDecoration(
                                  color: AppColor.white,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          AppAssets.images.profile))),
                              clipBehavior: Clip.antiAlias,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 2,
                    left: 10,
                    right: 10,
                    child: Container(
                      height: AppSize.h320,
                      width: AppSize.w950,
                      decoration: BoxDecoration(
                          color: AppColor.primary,
                          borderRadius:
                              BorderRadius.circular(AppRadius.medium)),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: AppPadding.vp16,
                                vertical: AppPadding.vp24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              spacing: AppSpacing.hs24,
                              children: [
                                Text(
                                  'Credit',
                                  style:
                                      getMediumTextStyle(color: AppColor.white),
                                ),
                                Image.asset(
                                  AppAssets.icons.visa,
                                  scale: 3,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(AppPadding.vp12),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  spacing: AppSpacing.hs24,
                                  children: [
                                    Text(
                                      '${12500.00}',
                                      style: getExtraLargeTextStyle(
                                          color: AppColor.white),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Available Balance',
                                      style: getSmallTextStyle(
                                          color: AppColor.white),
                                    ),
                                    Row(
                                      spacing: AppSpacing.vs16,
                                      children: [
                                        Row(
                                          children: List.generate(
                                            4,
                                            (index) {
                                              return Icon(
                                                Icons.star_sharp,
                                                size: 12,
                                                color: AppColor.white,
                                              );
                                            },
                                          ),
                                        ),
                                        Text(
                                          '${3090}',
                                          style: getSmallTextStyle(
                                              color: AppColor.white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: AppSize.h130,
                            width: double.infinity,
                            padding: EdgeInsets.all(AppPadding.vp16),
                            decoration: BoxDecoration(
                                color: AppColor.cardColor,
                                borderRadius:
                                    BorderRadius.circular(AppRadius.medium)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CardContainer(
                                  icon: AppAssets.icons.deposit,
                                  title: AppStrings.deposit,
                                ),
                                CardContainer(
                                  icon: AppAssets.icons.send,
                                  title: AppStrings.send,
                                ),
                                CardContainer(
                                  icon: AppAssets.icons.convert,
                                  title: AppStrings.convert,
                                ),
                                CardContainer(
                                  icon: AppAssets.icons.widthDraw,
                                  title: AppStrings.withdraw,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Me Assets',
                        style: getMediumTextStyle(color: AppColor.black),
                      ),
                      Text(
                        'View All',
                        style: getMediumTextStyle(color: AppColor.primary),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        homeController.assetsList.length,
                        (index) {
                          AssetModel assetModel =
                              homeController.assetsList[index];
                          return Container(
                            padding: EdgeInsets.all(AppPadding.vp12),
                            margin: EdgeInsets.all(AppMargin.hm8),
                            decoration: BoxDecoration(
                                color: AppColor.white,
                                borderRadius:
                                    BorderRadius.circular(AppRadius.medium),
                                border: Border.all(color: AppColor.grey3)),
                            child: Row(
                              spacing: AppSpacing.hs24,
                              children: [
                                CircleAvatar(
                                  radius: AppRadius.large,
                                  backgroundColor: index == 0
                                      ? AppColor.dartOrange
                                      : AppColor.grey3,
                                  child: Image.asset(assetModel.profile),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(assetModel.title),
                                    Text(assetModel.subtitle),
                                  ],
                                ),
                                Text(assetModel.ratio),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:  AppPadding.hp12),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Transactions',
                        style: getMediumTextStyle(color: AppColor.black),
                      ),
                      Text(
                        'View All',
                        style: getMediumTextStyle(color: AppColor.primary),
                      ),
                    ],
                  ),
                  Obx(
                    () => homeController.isLoading.value
                        ? CustomAppLoader(
                            size: AppSize.h40,
                            color: AppColor.primary,
                          )
                        : ListView.builder(
                            shrinkWrap: true,
                            itemCount: homeController.transactions.length,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              TransactionsModel assetModel =
                                  homeController.transactions[index];
                              return Container(
                                padding: EdgeInsets.all(AppPadding.vp12),
                                margin: EdgeInsets.all(AppMargin.hm8),
                                decoration: BoxDecoration(
                                    color: AppColor.background,
                                    borderRadius:
                                        BorderRadius.circular(AppRadius.medium),),
                                  
                                child: Row(
                                  spacing: AppSpacing.hs24,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      radius: AppRadius.large,
                                      backgroundImage: AssetImage(
                                          assetModel.profile.isNotEmpty
                                              ? assetModel.profile
                                              : AppAssets.images.transImg1),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(assetModel.title),
                                        Text(assetModel.transer == true
                                            ? 'Incoming Transfer'
                                            : 'Outgoing Transfer'),
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      children: [
                                        Text(
                                          assetModel.price,
                                          style: getMediumTextStyle(
                                            color: AppColor.black,
                                            fontSize: AppFontSize.xLarge,
                                          ),
                                        ),
                                        Text(assetModel.date),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
