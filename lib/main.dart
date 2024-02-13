import 'package:flutter/material.dart';
import 'package:flutterstols/tools/QrGenerates/qr_code_generate.dart';
import 'package:flutterstols/widgets/routes.dart';
import 'package:get/get.dart';

import 'home_screens.dart';
import 'tools/DatePickers/date_time.dart';
import 'tools/Fluttertoast/flutter_toast.dart';
import 'tools/QrScanning/barcode_reader.dart';

void main() {
  runApp(const MyAppp());
}

class MyAppp extends StatelessWidget {
  const MyAppp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        Routes.homeRoute: (context) => const HomeScreen(),
        Routes.qrGenetators: (context) => const QrCodeGenerate(),
        Routes.flutterToast: (context) => const FlutterToastScreen(),
        Routes.dateAndTime: (context) => const DateTimePickersScreen(),
        Routes.qrbarCodeReader: (context) => const BarCodeReaderScreen(),
      },
    );
  }
}
