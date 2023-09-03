import 'dart:async';

import 'package:flutter/material.dart';

class TimeSaleTimer extends StatefulWidget {
  final String discountDate;
  const TimeSaleTimer({
    super.key,
    required this.discountDate,
  });

  @override
  State<TimeSaleTimer> createState() => _TimeSaleTimerState();
}

class _TimeSaleTimerState extends State<TimeSaleTimer> {
  late DateTime timeUS = DateTime.now();
  late DateTime timeKR = DateTime(
    timeUS.year,
    timeUS.month,
    timeUS.day,
    timeUS.hour + 9,
    timeUS.minute,
    timeUS.second,
    timeUS.millisecond,
    timeUS.microsecond,
  );

  Timer? timer;
  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          timeUS = DateTime.now();
          timeKR = DateTime(
            timeUS.year,
            timeUS.month,
            timeUS.day,
            timeUS.hour + 9,
            timeUS.minute,
            timeUS.second,
            timeUS.millisecond,
            timeUS.microsecond,
          );
        });
      }
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    DateTime discountPeriod = DateTime.parse(widget.discountDate);

    Duration restOfDuration = discountPeriod.difference(timeKR);
    int days = restOfDuration.inDays;
    int hours = (restOfDuration - Duration(days: days)).inHours;
    int minutes =
        (restOfDuration - Duration(days: days, hours: hours)).inMinutes;

    int seconds =
        (restOfDuration - Duration(days: days, hours: hours, minutes: minutes))
            .inSeconds;

    String twoDigits(int value) => value.toString().padLeft(2, '0');
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.timer,
            size: 24,
            color: Colors.white,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            '$days일  /  ${twoDigits(hours)} : ${twoDigits(minutes)} : ${twoDigits(seconds)}',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
