import 'dart:async';

import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';

class Analog extends StatefulWidget {
  const Analog({super.key});

  @override
  State<Analog> createState() => _AnalogState();
}

class _AnalogState extends State<Analog> {
  late DateTime _dateTime;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _dateTime = DateTime.now();

    _timer = Timer.periodic(Duration(seconds: 1), (timer) => _getTime());
  }

  void _getTime() {
    setState(() {
      _dateTime = DateTime.now();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        title: const Text('Analog Clock'),
      )),
      body: Center(
        child: AnalogClock(
          decoration: BoxDecoration(
              border: Border.all(width: 3.0, color: Colors.black),
              color: Colors.black,
              shape: BoxShape.circle), // decoration
          width: 200.0,
          isLive: true,
          hourHandColor: Colors.white,
          minuteHandColor: Colors.white,
          showSecondHand: true,
          numberColor: Colors.white,
          showNumbers: true,
          textScaleFactor: 1.5,
          showTicks: true,
          showDigitalClock: true,
          digitalClockColor: Colors.white,
          datetime: _dateTime,
        ),
      ),
    );
  }
}
