import 'package:flutter/material.dart';

import 'package:flutterstols/utils/extensions.dart';

import 'package:get/get.dart';

import 'models/home_tools_navigators.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 214, 228, 248),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 0.009.toResponsive(context)),
        child: Column(children: [
          SizedBox(
            height: 0.015.h(context),
          ),
          Text(
            "This is flutter tools",
            style: TextStyle(
                color: Colors.black, fontSize: 0.015.toResponsive(context)),
          ),
          SizedBox(
            height: 0.015.h(context),
          ),
          Container(
            height: 0.9.h(context),
            width: 1.0.w(context),
            child: GridView.builder(
                itemCount: toolsList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 0.01.toResponsive(context),
                    crossAxisSpacing: 0.01.toResponsive(context),
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return ToolsCards(
                    toolsName: toolsList[index].toolsName,
                    imageString: toolsList[index].imageString,
                    routesString: toolsList[index].routeString,
                  );
                }),
          )
        ]),
      )),
    );
  }
}

class ToolsCards extends StatelessWidget {
  const ToolsCards({
    super.key,
    required this.toolsName,
    required this.imageString,
    required this.routesString,
  });

  final String toolsName, imageString, routesString;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0.020.toResponsive(context)),
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 0.12,
                spreadRadius: 0.12,
                color: Colors.black,
                offset: Offset(0.0, 0.1))
          ],
          borderRadius: BorderRadius.all(Radius.circular(11)),
          color: Colors.white),
      height: 0.08.h(context),
      width: 0.001.w(context),
      child: Column(children: [
        Text(
          toolsName,
          style: TextStyle(
              color: const Color.fromARGB(197, 159, 5, 243),
              fontSize: 0.014.toResponsive(context),
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 0.02.h(context),
        ),
        InkWell(
            onTap: () {
              Get.toNamed(routesString);
            },
            child: Image.asset(imageString)),
        SizedBox(
          height: 0.01.h(context),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "Descriptions",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 0.015.toResponsive(context),
                  fontWeight: FontWeight.w400),
            )),
      ]),
    );
  }
}
