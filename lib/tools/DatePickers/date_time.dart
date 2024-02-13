import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutterstols/utils/extensions.dart';

class DateTimePickersScreen extends StatefulWidget {
  const DateTimePickersScreen({super.key});

  @override
  State<DateTimePickersScreen> createState() => _DateTimePickersScreenState();
}

class _DateTimePickersScreenState extends State<DateTimePickersScreen> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
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
                      Text(
                        " ${selectedDate.year.toString()}-${selectedDate.month.toString()}-${selectedDate.day.toString()}",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: 0.017.toResponsive(context)),
                      ),
                      pickButtons(context, () async {
                        final DateTime? pickDate = await showDatePicker(
                            context: context,
                            initialDate: selectedDate,
                            firstDate: DateTime(2000),
                            lastDate: DateTime(3000));

                        if (pickDate != null) {
                          setState(() {
                            selectedDate = pickDate;
                            log("${selectedDate.day}");
                          });
                        }
                      }, "PickDate"),
                      SizedBox(
                        height: 0.035.h(context),
                      ),
                      Text(
                        " ${selectedTime.hour.toString()}-${selectedTime.minute.toString()}  ${selectedTime.hour < 12 ? "am" : "pm"} ",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: 0.017.toResponsive(context)),
                      ),

                      //timePickeButtons
                      pickButtons(context, () async {
                        final TimeOfDay? pickTimes = await showTimePicker(
                            context: context, initialTime: selectedTime);

                        if (pickTimes != null) {
                          setState(() {
                            selectedTime = pickTimes;
                            log("${selectedTime.hour}");
                          });
                        }
                      }, "PickTime"),
                    ]))));
  }

  InkWell pickButtons(
      BuildContext context, VoidCallback onPressed, String dateTime) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 0.065.h(context),
        width: 0.5.w(context),
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  offset: Offset(0.0, 0.5), blurRadius: 0.8, spreadRadius: 0.1)
            ],
            color: Color.fromARGB(255, 247, 239, 238),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.date_range),
            Text(
              dateTime,
              style: TextStyle(
                  color: Colors.black, fontSize: 0.015.toResponsive(context)),
            )
          ],
        ),
      ),
    );
  }
}
