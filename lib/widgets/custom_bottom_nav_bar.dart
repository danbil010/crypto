
import 'package:crypto_app/constants/app_color.dart';
import 'package:crypto_app/constants/app_fonts.dart';
import 'package:crypto_app/constants/app_size_value.dart';
import 'package:crypto_app/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  final List<Map<String, dynamic>> navItems;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.navItems,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = Get.width;
    double tabWidth = screenWidth / navItems.length;
    double indicatorWidth = 78;
    double indicatorLeft =
        (currentIndex * tabWidth) + ((tabWidth - indicatorWidth) / 2);

    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: AppColor.bottomNavigationBarColor,
            width: 1,
          ),
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: onTap,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: AppColor.primary,
              unselectedItemColor: AppColor.unselectedItemAndDividerColor,
              showSelectedLabels: false, // Hide default labels
              showUnselectedLabels: false,
              backgroundColor: AppColor.white,
              elevation: 0,
              selectedIconTheme: IconThemeData(size: AppIconSize.medium),
              unselectedIconTheme: IconThemeData(size: AppIconSize.small),
              enableFeedback: false,
              items: navItems
                  .map((item) => BottomNavigationBarItem(
                        icon: SizedBox(
                          width: tabWidth,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              spacing: AppSpacing.vs2,
                              children: [
                                Image.asset(
                                  item['icon'],
                                  width: AppIconSize.large,
                                  height: AppIconSize.large,
                                  color: currentIndex == navItems.indexOf(item)
                                      ? AppColor.primary
                                      : AppColor.unselectedItemAndDividerColor,
                                ),
                                if (currentIndex == navItems.indexOf(item))
                                  Flexible(
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(left: AppPadding.hp2),
                                      child: Text(
                                        item['label'],
                                        style: getLargeTextStyle(
                                            color: AppColor.primary,
                                            fontSize: AppFontSize.small),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        label: '',
                      ))
                  .toList(),
            ),
          ),

          /// **Dynamic Indicator Positioning**
          Positioned(
            top: -1.5,
            left: indicatorLeft,
            child: Container(
              height: 3,
              width: indicatorWidth,
              decoration: BoxDecoration(
                color: AppColor.primary,
                borderRadius: BorderRadius.circular(1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
