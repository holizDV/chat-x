import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' as su;

import 'app_color.dart';

/// Enumeration to represent different device types (phone and tablet).
enum DeviceType { phone, tablet }

/// Extension on num to provide convenience methods for setting dimensions
/// and radius using the flutter_screenutil package.
extension DoubleValue on num {
  double get w => su.ScreenUtil().setWidth(this);
  double get h => su.ScreenUtil().setHeight(this);
  double get sp => su.ScreenUtil().setSp(this);
  double get r => su.ScreenUtil().radius(this);
}

/// Functions to retrieve screen dimensions using the flutter_screenutil package.
double get screenHeight => su.ScreenUtil().screenHeight;
double get screenWidth => su.ScreenUtil().screenWidth;
double get statusBarHeight => su.ScreenUtil().statusBarHeight;
double get bottomBarHeight => su.ScreenUtil().bottomBarHeight;

/// Function to create a SizedBox with a specified width based on screen width.
SizedBox horizontalSpace(num val) => SizedBox(
      width: su.ScreenUtil().setWidth(val),
    );

/// Function to create a SizedBox with a specified height based on screen height.
SizedBox verticalSpace(num value) => SizedBox(
      height: su.ScreenUtil().setHeight(value),
    );

class AppResponsive {
  static AppResponsive? _instance;
  late DeviceType _deviceType;
  late bool _isSmallPhone;

  static AppResponsive get instance {
    _instance ??= AppResponsive._();
    return _instance!;
  }

  AppResponsive._();

  /// Initialize the AppResponsive instance by calculating the device type.
  void initResponsive(BuildContext context) {
    _calculateDeviceType(context);
  }

  /// Calculate the device type based on the smallest dimension of the screen.
  void _calculateDeviceType(BuildContext context) {
    final smallestDimension = MediaQuery.of(context).size.shortestSide;
    _isSmallPhone = smallestDimension < 344.0;

    if (smallestDimension < 600) {
      _deviceType = DeviceType.phone;
    } else {
      _deviceType = DeviceType.tablet;
    }
  }

  /// Getter to check if the device type is a phone.
  bool get isPhone => _deviceType == DeviceType.phone;

  /// Getter to check if the device type is a tablet.
  bool get isTablet => _deviceType == DeviceType.tablet;

  /// Getter to check if the device is a small phone.
  bool get isSmallPhone => _isSmallPhone;

  /// Getter to retrieve the current device type.
  DeviceType get deviceType => _deviceType;
}

/// Widget to handle responsiveness by displaying different content for mobile and tablet layouts.
class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;

  const Responsive({
    super.key,
    required this.mobile,
    required this.tablet,
  });

  /// Build method for the Responsive widget, displaying the appropriate content based on screen width.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= kTabletBreakpoint) {
          return tablet;
        } else {
          return mobile;
        }
      },
    );
  }
}

/// Widget to add responsive padding based on the screen width.
class ResponsivePadding extends StatelessWidget {
  final Widget child;

  /// Constructor for the ResponsivePadding widget.
  const ResponsivePadding({
    super.key,
    required this.child,
    this.useScaffold = false,
  });

  final bool useScaffold;

  /// Build method for the ResponsivePadding widget, applying padding based on screen width.
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (useScaffold) {
      return Scaffold(
        backgroundColor: AppColor.backgroundPage,
        body: Padding(
          padding: screenWidth > kTabletBreakpoint
              ? EdgeInsets.symmetric(
                  horizontal: (screenWidth - kMobileScreenWidth) /
                      kResponsivePaddingFactor,
                )
              : EdgeInsets.zero,
          child: child,
        ),
      );
    } else {
      return Padding(
        padding: screenWidth > kTabletBreakpoint
            ? EdgeInsets.symmetric(
                horizontal: (screenWidth - kMobileScreenWidth) /
                    kResponsivePaddingFactor,
              )
            : EdgeInsets.zero,
        child: child,
      );
    }
  }
}

/// Breakpoint value for tablet layout determination.
const double kTabletBreakpoint = 650;

/// Screen width value for mobile layout determination.
const double kMobileScreenWidth = 360;

/// Factor to adjust responsive padding for tablet layout.
const double kResponsivePaddingFactor = 2.7;
