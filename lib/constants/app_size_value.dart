import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

extension AppMediaQuery on GetInterface {
  /// Returns the screen height of the device.
  double get screenHeight => Get.context!.mediaQuery.size.height;

  /// Returns the screen width of the device.
  double get screenWidth => Get.context!.mediaQuery.size.width;

  /// Returns the device's pixel density.
  double get devicePixelRatio => Get.context!.mediaQuery.devicePixelRatio;

  /// Returns the height of the status bar.
  double get statusBarHeight => Get.context!.mediaQuery.padding.top;

  /// Returns the height of the bottom safe area.
  double get bottomPadding => Get.context!.mediaQuery.padding.bottom;

  /// Returns the text scaler.
  TextScaler get textScaler => MediaQuery.textScalerOf(Get.context!);

  /// Checks if the device is in landscape mode.
  bool get isLandscape =>
      Get.context!.mediaQuery.orientation == Orientation.landscape;

  /// Checks if the device is in portrait mode.
  bool get isPortrait =>
      Get.context!.mediaQuery.orientation == Orientation.portrait;
}

class AppRadius {
  static double get veryTiny => Get.height * 0.004; // 4px on 1000px height
  static double get tiny => Get.height * 0.008; // 8px on 1000px height
  static double get verySmall => Get.height * 0.009; // 9px on 1000px height
  static double get small => Get.height * 0.01; // 10px
  static double get semiSmall => Get.height * 0.012;
  static double get medium => Get.height * 0.02; // 20px
  static double get large => Get.height * 0.03; // 30px
  static double get extraLarge => Get.height * 0.08; // 80px
}

class AppSpacing {
  // Vertical Spacing
  static double get vs2 => Get.height * 0.002; // 2px
  static double get vs4 => Get.height * 0.004; // 4px
  static double get vs5 => Get.height * 0.005; // 4px
  static double get vs6 => Get.height * 0.006; // 4px
  static double get vs7 => Get.height * 0.007; // 4px
  static double get vs8 => Get.height * 0.008; // 8px
  static double get vs10 => Get.height * 0.010; // 8px
  static double get vs12 => Get.height * 0.012; // 12px
  static double get vs16 => Get.height * 0.016; // 16px
  static double get vs20 => Get.height * 0.020; // 24px
  static double get vs24 => Get.height * 0.024; // 24px
  static double get vs32 => Get.height * 0.032; // 32px
  static double get vs40 => Get.height * 0.040; // 40px
  static double get vs48 => Get.height * 0.048; // 48px

  // Horizontal Spacing
  static double get hs2 => Get.width * 0.002; // 2px
  static double get hs4 => Get.width * 0.004; // 4px
  static double get hs8 => Get.width * 0.008; // 8px
  static double get hs12 => Get.width * 0.012; // 12px
  static double get hs16 => Get.width * 0.016; // 16px
  static double get hs24 => Get.width * 0.024; // 24px
  static double get hs32 => Get.width * 0.032; // 32px
  static double get hs48 => Get.width * 0.048; // 48px
  static double get hs150 => Get.width * 0.150; // 48px
}

class AppMargin {
  // Horizontal Margins (using Get.width)
  static double get hm2 => Get.width * 0.005; // ~2px
  static double get hm4 => Get.width * 0.01; // ~4px
  static double get hm8 => Get.width * 0.02; // ~8px
  static double get hm12 => Get.width * 0.03; // ~12px
  static double get hm16 => Get.width * 0.04; // ~16px
  static double get hm18 => Get.width * 0.045; // ~18px
  static double get hm20 => Get.width * 0.05; // ~20px
  static double get hm24 => Get.width * 0.06; // ~24px
  static double get hm32 => Get.width * 0.08; // ~32px
  static double get hm40 => Get.width * 0.10; // ~40px
  static double get hm48 => Get.width * 0.12; // ~48px
  static double get hm56 => Get.width * 0.14; // ~56px
  static double get hm64 => Get.width * 0.16; // ~64px
  static double get hm72 => Get.width * 0.18; // ~72px
  static double get hm80 => Get.width * 0.20; // ~80px

  // Vertical Margins (using Get.height)
  static double get vm2 => Get.height * 0.0025; // ~2px
  static double get vm3 => Get.height * 0.00375;
  static double get vm4 => Get.height * 0.005; // ~4px
  static double get vm8 => Get.height * 0.01; // ~8px
  static double get vm12 => Get.height * 0.015; // ~12px
  static double get vm16 => Get.height * 0.02; // ~16px
  static double get vm20 => Get.height * 0.025; // ~20px
  static double get vm24 => Get.height * 0.03; // ~24px
  static double get vm32 => Get.height * 0.04; // ~32px
  static double get vm40 => Get.height * 0.05; // ~40px
  static double get vm48 => Get.height * 0.06; // ~48px
  static double get vm56 => Get.height * 0.07; // ~56px
  static double get vm64 => Get.height * 0.08; // ~64px
  static double get vm72 => Get.height * 0.09; // ~72px
  static double get vm80 => Get.height * 0.10; // ~80px
}

class AppIconSize {
  // Icon Sizes with fixed multipliers for consistent sizing
  static double get xxxSmall => Get.width * 0.024; // 10px
  static double get xxSmall => Get.width * 0.028; // 11px
  static double get xSmall => Get.width * 0.032; // 12px
  static double get small => Get.width * 0.040; // 16px
  static double get medium => Get.width * 0.050; // 20px
  static double get large => Get.width * 0.064; // 24px
  static double get xLarge => Get.width * 0.080; // 32px
  static double get xxLarge => Get.width * 0.096; // 38px
  static double get xxxLarge => Get.width * 0.112; // 44px
  static double get huge => Get.width * 0.128; // 50px
  static double get xHuge => Get.width * 0.144; // 56px
  static double get xxHuge => Get.width * 0.160; // 62px
  static double get xxxHuge => Get.width * 0.176; // 68px
}

class AppSize {
  // Heights
  static double get h2 => Get.height * 0.002; // 2px
  static double get h3 => Get.height * 0.003; // 3px
  static double get h4 => Get.height * 0.004; // 4px
  static double get h8 => Get.height * 0.008; // 8px
  static double get h12 => Get.height * 0.012; // 12px
  static double get h16 => Get.height * 0.016; // 16px
  static double get h20 => Get.height * 0.020; // 20px
  static double get h24 => Get.height * 0.024; // 24px
  static double get h28 => Get.height * 0.028; // 24px
  static double get h32 => Get.height * 0.032; // 32px
  static double get h40 => Get.height * 0.040; // 40px
  static double get h45 => Get.height * 0.045; // 40px
  static double get h50 => Get.height * 0.050; // 40px
  static double get h48 => Get.height * 0.048; // 48px
  static double get h56 => Get.height * 0.056; // 56px
  static double get h60 => Get.height * 0.060; // 56px
  static double get h62 => Get.height * 0.062; // 64px
  static double get h64 => Get.height * 0.064; // 64px
  static double get h66 => Get.height * 0.066; // 64px
  static double get h68 => Get.height * 0.068; // 64px
  static double get h70 => Get.height * 0.070; // 64px
  static double get h72 => Get.height * 0.072; // 72px
  static double get h76 => Get.height * 0.076; // 76px
  static double get h80 => Get.height * 0.080; // 80px
  static double get h82 => Get.height * 0.080; // 80px
  static double get h88 => Get.height * 0.088; // 88px
  static double get h96 => Get.height * 0.096; // 96px
  static double get h100 => Get.height * 0.100; // 100px
  static double get h110 => Get.height * 0.110; // 120px
  static double get h120 => Get.height * 0.120; // 120px
  static double get h125 => Get.height * 0.125; // 130px
  static double get h130 => Get.height * 0.130; // 130px
  static double get h140 => Get.height * 0.140; // 140px
  static double get h150 => Get.height * 0.150; // 140px
  static double get h160 => Get.height * 0.160; // 160px
  static double get h180 => Get.height * 0.180; // 180px
  static double get h190 => Get.height * 0.190; // 190px
  static double get h200 => Get.height * 0.200; // 200px
  static double get h220 => Get.height * 0.220; // 220px
  static double get h210 => Get.height * 0.210; // 210px
  static double get h240 => Get.height * 0.240; // 240px
  static double get h260 => Get.height * 0.260; // 260px
  static double get h280 => Get.height * 0.280; // 280px
  static double get h300 => Get.height * 0.300; // 300px
  static double get h320 => Get.height * 0.320; // 320px
  static double get h340 => Get.height * 0.340; // 340px
  static double get h360 => Get.height * 0.360; // 360px
  static double get h380 => Get.height * 0.380; // 380px
  static double get h400 => Get.height * 0.400; // 400px
  static double get h420 => Get.height * 0.420; // 420px
  static double get h440 => Get.height * 0.440; // 440px
  static double get h460 => Get.height * 0.460; // 460px
  static double get h480 => Get.height * 0.480; // 480px
  static double get h500 => Get.height * 0.500; // 500px
  static double get h550 => Get.height * 0.550; // 550px
  static double get h600 => Get.height * 0.600; // 600px
  static double get h650 => Get.height * 0.650; // 650px
  static double get h700 => Get.height * 0.700; // 700px
  static double get h750 => Get.height * 0.750; // 750px
  static double get h800 => Get.height * 0.800; // 800px
  static double get h850 => Get.height * 0.850; // 850px
  static double get h900 => Get.height * 0.900; // 900px
  static double get h950 => Get.height * 0.950; // 950px
  static double get h1000 => Get.height * 1.000; // 1000px
  static double get h1050 => Get.height * 1.050; // 1050px
  static double get h1100 => Get.height * 1.100; // 1100px
  static double get h1150 => Get.height * 1.150; // 1150px
  static double get h1200 => Get.height * 1.200; // 1200px
  static double get h1250 => Get.height * 1.250; // 1250px
  static double get h1300 => Get.height * 1.300; // 1300px
  static double get h1350 => Get.height * 1.350; // 1350px
  static double get h1400 => Get.height * 1.400; // 1400px
  static double get h1450 => Get.height * 1.450; // 1450px
  static double get h1500 => Get.height * 1.500; // 1500px

  // Widths
  static double get w2 => Get.width * 0.002; // 2px
  static double get w4 => Get.width * 0.004; // 4px
  static double get w8 => Get.width * 0.008; // 8px
  static double get w12 => Get.width * 0.012; // 12px
  static double get w16 => Get.width * 0.016; // 16px
  static double get w20 => Get.width * 0.020; // 20px
  static double get w24 => Get.width * 0.024; // 24px
  static double get w32 => Get.width * 0.032; // 32px
  static double get w40 => Get.width * 0.040; // 40px
  static double get w45 => Get.width * 0.045; // 40px
  static double get w48 => Get.width * 0.048; // 48px
  static double get w56 => Get.width * 0.056; // 56px
  static double get w64 => Get.width * 0.064; // 64px
  static double get w72 => Get.width * 0.072; // 72px
  static double get w76 => Get.width * 0.076; // 76px
  static double get w80 => Get.width * 0.080; // 80px
  static double get w88 => Get.width * 0.088; // 88px
  static double get w96 => Get.width * 0.096; // 96px
  static double get w100 => Get.width * 0.100; // 100px
  static double get w110 => Get.width * 0.110; // 110px
  static double get w120 => Get.width * 0.120; // 120px
  static double get w140 => Get.width * 0.140; // 140px
  static double get w160 => Get.width * 0.160; // 160px
  static double get w180 => Get.width * 0.180; // 180px
  static double get w200 => Get.width * 0.200; // 200px
  static double get w220 => Get.width * 0.220; // 220px
  static double get w240 => Get.width * 0.240; // 240px
  static double get w260 => Get.width * 0.260; // 260px
  static double get w280 => Get.width * 0.280; // 280px
  static double get w300 => Get.width * 0.300; // 300px
  static double get w320 => Get.width * 0.320; // 320px
  static double get w340 => Get.width * 0.340; // 340px
  static double get w360 => Get.width * 0.360; // 360px
  static double get w380 => Get.width * 0.380; // 380px
  static double get w400 => Get.width * 0.400; // 400px
  static double get w420 => Get.width * 0.420; // 420px
  static double get w440 => Get.width * 0.440; // 440px
  static double get w445 => Get.width * 0.445; // 440px
  static double get w450 => Get.width * 0.450; // 440px
  static double get w460 => Get.width * 0.460; // 460px
  static double get w480 => Get.width * 0.480; // 480px
  static double get w500 => Get.width * 0.500; // 500px
  static double get w550 => Get.width * 0.550; // 550px
  static double get w600 => Get.width * 0.600; // 600px
  static double get w650 => Get.width * 0.650; // 650px
  static double get w700 => Get.width * 0.700; // 700px
  static double get w750 => Get.width * 0.750; // 750px
  static double get w800 => Get.width * 0.800; // 800px
  static double get w850 => Get.width * 0.850; // 850px
  static double get w900 => Get.width * 0.900; // 900px
  static double get w950 => Get.width * 0.950; // 950px
  static double get w1000 => Get.width * 1.000; // 1000px
  static double get w1050 => Get.width * 1.050; // 1050px
  static double get w1100 => Get.width * 1.100; // 1100px
  static double get w1150 => Get.width * 1.150; // 1150px
  static double get w1200 => Get.width * 1.200; // 1200px
  static double get w1250 => Get.width * 1.250; // 1250px
  static double get w1300 => Get.width * 1.300; // 1300px
  static double get w1350 => Get.width * 1.350; // 1350px
  static double get w1400 => Get.width * 1.400; // 1400px
  static double get w1450 => Get.width * 1.450; // 1450px
  static double get w1500 => Get.width * 1.500; // 1500px
}

class AppPadding {
  // Horizontal Padding (using Get.width)
  static double get hp1 => Get.width * 0.002; // ~2px
  static double get hp2 => Get.width * 0.005; // ~2px
  static double get hp4 => Get.width * 0.01; // ~4px
  static double get hp8 => Get.width * 0.02; // ~8px
  static double get hp10 => Get.width * 0.025; // ~12px
  static double get hp12 => Get.width * 0.03; // ~12px
  static double get hp14 => Get.width * 0.035; // ~16px
  static double get hp16 => Get.width * 0.04; // ~16px
  static double get hp18 => Get.width * 0.045; // ~18px
  static double get hp20 => Get.width * 0.05; // ~20px
  static double get hp24 => Get.width * 0.06; // ~24px
  static double get hp32 => Get.width * 0.08; // ~32px
  static double get hp40 => Get.width * 0.10; // ~40px
  static double get hp48 => Get.width * 0.12; // ~48px
  static double get hp56 => Get.width * 0.14; // ~56px
  static double get hp64 => Get.width * 0.16; // ~64px
  static double get hp72 => Get.width * 0.18; // ~72px
  static double get hp80 => Get.width * 0.20; // ~80px

  // Vertical Padding (using Get.height)
  static double get vp2 => Get.height * 0.0025; // ~2px
  static double get vp4 => Get.height * 0.005; // ~4px
  static double get vp6 => Get.height * 0.008; // ~4px
  static double get vp8 => Get.height * 0.01; // ~8px
  static double get vp10 => Get.height * 0.0125; // ~10px
  static double get vp12 => Get.height * 0.015; // ~12px
  static double get vp14 => Get.height * 0.017;
  static double get vp16 => Get.height * 0.02; // ~16px
  static double get vp20 => Get.height * 0.025; // ~20px
  static double get vp24 => Get.height * 0.03; // ~24px
  static double get vp32 => Get.height * 0.04; // ~32px
  static double get vp40 => Get.height * 0.05; // ~40px
  static double get vp48 => Get.height * 0.06; // ~48px
  static double get vp56 => Get.height * 0.07; // ~56px
  static double get vp64 => Get.height * 0.08; // ~64px
  static double get vp72 => Get.height * 0.09; // ~72px
  static double get vp80 => Get.height * 0.10; // ~80px
}
