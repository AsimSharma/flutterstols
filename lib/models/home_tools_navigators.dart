import 'package:flutter/material.dart';
import 'package:flutterstols/widgets/routes.dart';

class ToolsList {
  final String toolsName;
  final String packagesName;
  final String descriptions;
  final Color color;
  final String linkText;
  final String imageString;
  final String routeString;

  ToolsList({
    required this.toolsName,
    required this.packagesName,
    required this.descriptions,
    required this.color,
    required this.linkText,
    required this.imageString,
    required this.routeString,
  });
}

final toolsList = [
  ToolsList(
      toolsName: "QrCode Generates",
      packagesName: "qr_flutter 4.1.0",
      color: Colors.blue,
      imageString: "assets/images/qrcode.png",
      routeString: Routes.qrGenetators,
      descriptions:
          "QR.Flutter is a Flutter library for simple and fast QR code rendering via a Widget or custom painter.",
      linkText: "https://pub.dev/packages/qr_flutter"),
  ToolsList(
      toolsName: "fluttertoast",
      packagesName: "fluttertoast: ^8.2.4",
      color: Colors.green,
      imageString: "assets/images/qrcode.png",
      routeString: Routes.flutterToast,
      descriptions:
          "Now this toast library supports two kinds of toast messages one which requires BuildContext other with No BuildContext",
      linkText: "https://pub.dev/packages/fluttertoast"),
  ToolsList(
      toolsName: "DateTime",
      packagesName: "Nopackages",
      color: const Color.fromARGB(255, 243, 5, 100),
      imageString: "assets/images/qrcode.png",
      routeString: Routes.dateAndTime,
      descriptions: "date time pickers from flutter",
      linkText: ""),
  ToolsList(
      toolsName: "Qr/Bar_code",
      packagesName: "mobile_scanner: ^3.5.6",
      color: Colors.green,
      imageString: "assets/images/qrcode.png",
      routeString: Routes.qrbarCodeReader,
      descriptions:
          "A universal scanner for Flutter based on MLKit. Uses CameraX on Android and AVFoundation on iOS.",
      linkText: "https://pub.dev/packages/mobile_scanner"),
  ToolsList(
      toolsName: "fluttertoast",
      packagesName: "fluttertoast: ^8.2.4",
      color: const Color.fromARGB(255, 247, 166, 4),
      imageString: "assets/images/qrcode.png",
      routeString: Routes.flutterToast,
      descriptions:
          "Now this toast library supports two kinds of toast messages one which requires BuildContext other with No BuildContext",
      linkText: "https://pub.dev/packages/fluttertoast"),
  ToolsList(
      toolsName: "fluttertoast",
      packagesName: "fluttertoast: ^8.2.4",
      color: const Color.fromARGB(255, 6, 195, 202),
      imageString: "assets/images/qrcode.png",
      routeString: Routes.flutterToast,
      descriptions:
          "Now this toast library supports two kinds of toast messages one which requires BuildContext other with No BuildContext",
      linkText: "https://pub.dev/packages/fluttertoast"),
  ToolsList(
      toolsName: "fluttertoast",
      packagesName: "fluttertoast: ^8.2.4",
      color: const Color.fromARGB(255, 255, 74, 147),
      imageString: "assets/images/qrcode.png",
      routeString: Routes.flutterToast,
      descriptions:
          "Now this toast library supports two kinds of toast messages one which requires BuildContext other with No BuildContext",
      linkText: "https://pub.dev/packages/fluttertoast"),
];
