import 'package:flutter/material.dart';
import 'package:flutterstols/tools/QrGenerates/widgets/qr_images.dart';
import 'package:get/get.dart';

class QrCodeGenerate extends StatefulWidget {
  const QrCodeGenerate({super.key});

  @override
  State<QrCodeGenerate> createState() => _QrCodeGenerateState();
}

class _QrCodeGenerateState extends State<QrCodeGenerate> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter + QR code'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  child: TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter your URL'),
                  ),
                ),
                //This button when pressed navigates to QR code generation
                ElevatedButton(
                    onPressed: () async {
                      Get.to(() => QRImage(controller));
                    },
                    child: const Text('GENERATE QR CODE')),
              ],
            ),
          ),
        ));
  }
}
