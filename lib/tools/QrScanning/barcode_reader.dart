import 'package:flutter/material.dart';

import 'package:flutterstols/utils/extensions.dart';

import 'package:mobile_scanner/mobile_scanner.dart';

class BarCodeReaderScreen extends StatefulWidget {
  const BarCodeReaderScreen({super.key});

  @override
  State<BarCodeReaderScreen> createState() => _BarCodeReaderScreenState();
}

class _BarCodeReaderScreenState extends State<BarCodeReaderScreen> {
  String result = "Hey there !";

  Future<void> _scanQRCode() async {
    // try {
    //   final result = await MobileScanner();
    //   if (result != null && result.isNotEmpty) {
    //     setState(() {
    //       this.result = "QR Code Result: $result";
    //     });
    //   } else {
    //     setState(() {
    //       this.result = "Scan canceled";
    //     });
    //   }
    // } on Exception catch (e) {
    //   setState(() {
    //     this.result = "Error: $e";
    //   });
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "This is DateTime Pickers",
            style: TextStyle(
                color: Colors.black, fontSize: 0.015.toResponsive(context)),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 214, 228, 248),
        body: SafeArea(
            child: Container(
                height: double.infinity,
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                    horizontal: 0.009.toResponsive(context)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 0.015.h(context),
                      ),
                      IconButton(
                          onPressed: () {
                            _scanQRCode();
                          },
                          icon: const Icon(Icons.qr_code)),
                    ]))));
  }
}
