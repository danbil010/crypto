
import 'package:crypto_app/constants/app_assets.dart';
import 'package:crypto_app/screens/benefits/benefits_screen.dart';
import 'package:crypto_app/screens/card/card_screen.dart';
import 'package:crypto_app/screens/discover/discover_screen.dart';
import 'package:crypto_app/screens/home/home_screen.dart';
import 'package:crypto_app/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  final _selectedIndex = 0.obs;


  void _onItemTapped(int index) {
    if (_selectedIndex.value != index) {
      // Delete previous screen controllers
      if (_selectedIndex.value == 1) {
      //  Get.delete<DashboardScreen>();
      } else if (_selectedIndex.value == 2) {
        //  Get.delete<UserReportController>();
      } 

      
    }

    _selectedIndex.value = index;
  }

  final List<Map<String, dynamic>> _navItems = [
    {'icon': AppAssets.icons.timer, 'label': 'Home'},
    {'icon': AppAssets.icons.calendarClock, 'label': 'Card'},
    {'icon': AppAssets.icons.report, 'label': 'Benefits'},
    {'icon': AppAssets.icons.discover, 'label': 'Discover'},
  ].obs;

  final List<Widget> _screens = [
    HomeScreen(),
    CardScreen(),
    BenefitsScreen(),
    DiscoverScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: _screens.elementAt(_selectedIndex.value),
          bottomNavigationBar: CustomBottomNavBar(
          
            currentIndex: _selectedIndex.value,
            onTap: _onItemTapped,
            navItems: _navItems,
          ),
        ));
  }
}
