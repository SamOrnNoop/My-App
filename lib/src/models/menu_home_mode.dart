import 'package:my_app/src/utils/path_image.dart';

class MenuHomeModel {
  late final String _title;
  late final String _icon;
  late final String _pageName;

  set fromData(Map<String, dynamic> map) {
    _title = map['title'];
    _icon = map['icon'];
    _pageName = map['routeName'];
  }

  String get title => _title;
  String get icon => _icon;
  String get pageName => _pageName;

  static List<dynamic> get builderMenus {
    return [
      {
        "title": "QR Code",
        "routeName": "/QrCodePage",
        "icon": BasePathImag.barcode
      },
      {
        "title": "Scanner",
        "routeName": "/ScannerPage",
        "icon": BasePathImag.scanner
      },
      {
        "title": "Gallery",
        "routeName": "/GalleryPage",
        "icon": BasePathImag.gallery
      },
      {"title": "Map", "routeName": "/MapPage", "icon": BasePathImag.map},
      {
        "title": "Calendar",
        "routeName": "/CalendarPage",
        "icon": BasePathImag.calendar
      },
      {
        "title": "Setting",
        "routeName": "/SeetingPage",
        "icon": BasePathImag.setting
      },
    ];
  }
}
