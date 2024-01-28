import 'dart:async';
import 'package:flutter/material.dart';

class OtpTimer extends StatefulWidget {
  const OtpTimer({
    this.onResend,
    super.key,
  });

  final VoidCallback? onResend;

  @override
  OtpTimerState createState() => OtpTimerState();
}

class OtpTimerState extends State<OtpTimer> {
  final int timerMaxSeconds = 60;
  late int currentSeconds;
  late Timer timer;

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  void initState() {
    currentSeconds = timerMaxSeconds;
    _startTimeout();
    super.initState();
  }

  void _startTimeout() {
    const duration = Duration(seconds: 1);
    timer = Timer.periodic(duration, (timer) {
      if (currentSeconds == 0) {
        timer.cancel();
      } else {
        setState(() {
          currentSeconds--;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return currentSeconds == 0
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.amber),
                child: const Text(
                  'Отправить код еще раз',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                onPressed: () {
                  widget.onResend?.call();
                  setState(() {
                    currentSeconds = timerMaxSeconds;
                    _startTimeout();
                  });
                },
              ),
            ],
          )
        : Center(
            child: Text(
              '$currentSeconds сек до повтора отправки кода',
            ),
          );
  }
}
