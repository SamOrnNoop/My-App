import 'package:flutter/material.dart';
import 'package:my_app/src/pages/qr_code_generator.dart';

class AppRouters {
  static const String routPage = '/';
  static const String home = '/HomePage';
  static const String qrCode = "/QrCodePage";
  static const String qrScanner = "/ScannerPage";
  static const String galler = "/GalleryPage";
  static const String mapPage = "/MapPage";
  static const String settingPage = "/SeetingPage";
  static const String canlendarPage = "/CalendarPage";
}

class AppRoutors {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouters.qrCode:
        return router(const QRcodeGeneratorPage());
    }
    return null;
  }

  static Route router(Widget page) =>
      MaterialPageRoute(builder: (context) => page);
}
