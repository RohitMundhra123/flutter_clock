import 'dart:async';
import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

class DigitalWatch extends StatefulWidget {
  const DigitalWatch({super.key});

  @override
  State<DigitalWatch> createState() => _DigitalWatchState();
}

class _DigitalWatchState extends State<DigitalWatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        title: const Text('Digital Clock'),
      )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DigitalClock(
            digitAnimationStyle: Curves.easeInBack,
            is24HourTimeFormat: false,
            hourDigitDecoration: const BoxDecoration(
                color: Colors.black,
                border: Border(
                    top: BorderSide(color: Colors.cyan, width: 1.0),
                    left: BorderSide(color: Colors.cyan, width: 1.0),
                    right: BorderSide(color: Colors.cyan, width: 1.0),
                    bottom: BorderSide(color: Colors.cyan, width: 1.0))),
            minuteDigitDecoration: const BoxDecoration(
                color: Colors.black,
                border: Border(
                    top: BorderSide(color: Colors.cyan, width: 1.0),
                    left: BorderSide(color: Colors.cyan, width: 1.0),
                    right: BorderSide(color: Colors.cyan, width: 1.0),
                    bottom: BorderSide(color: Colors.cyan, width: 1.0))),
            secondDigitDecoration: const BoxDecoration(
                color: Colors.black,
                border: Border(
                    top: BorderSide(color: Colors.white, width: 1.0),
                    left: BorderSide(color: Colors.white, width: 1.0),
                    right: BorderSide(color: Colors.white, width: 1.0),
                    bottom: BorderSide(color: Colors.white, width: 1.0))),
            hourMinuteDigitTextStyle:
                const TextStyle(fontSize: 64, color: Colors.white),
            secondDigitTextStyle:
                const TextStyle(fontSize: 30, color: Colors.red),
            amPmDigitTextStyle:
                const TextStyle(fontSize: 20, color: Colors.amber),
            colon: Text(
              ':',
              style: TextStyle(fontSize: 40, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
