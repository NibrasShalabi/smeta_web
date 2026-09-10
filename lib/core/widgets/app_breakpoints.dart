// core/constants/app_breakpoints.dart
class AppBreakpoints {
  AppBreakpoints._();
  static const double mobile = 600;   // < 600  → موبايل
  static const double tablet = 1024;  // 600–1024 → تابلت
  // > 1024 → ديسكتوب

  static bool isMobile(double width) => width < mobile;
  static bool isTablet(double width) => width >= mobile && width < tablet;
  static bool isDesktop(double width) => width >= tablet;
}