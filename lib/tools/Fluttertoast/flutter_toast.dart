import 'package:flutter/material.dart';
import 'package:flutterstols/utils/extensions.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../widgets/custome_buttons.dart';

class FlutterToastScreen extends StatelessWidget {
  const FlutterToastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(236, 255, 255, 255),
        elevation: 0,
        title: const Text("Flutter toast notifactions"),
      ),
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 0.015.h(context),
            ),
            CustomeButtons(
              height: 0.06.h(context),
              width: 0.8.w(context),
              btnColor: Colors.green,
              btnTitle: "Sucess flutter toastNotifactons",
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "!!!sucess sucess!!!!!",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.green,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
            ),
            SizedBox(
              height: 0.015.h(context),
            ),
            CustomeButtons(
              height: 0.06.h(context),
              width: 0.8.w(context),
              btnColor: Colors.red,
              btnTitle: "Error flutter toastNotifactons",
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "Give unnecessary error messages",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
            ),
          ],
        ),
      )),
    );
  }
}
