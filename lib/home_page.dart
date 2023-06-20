import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer/model/timer_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (t) {
      var timer = Provider.of<TimerInfo>(context, listen: false);
      timer.updateRemainingTime();
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('========started from scratch==========');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/images.png'),
            const SizedBox(
              height: 20,
            ),
            Consumer<TimerInfo>(
              builder: (context, value, child) {
                return Text(value.getRemainingTime().toString(),
                    style: const TextStyle(fontSize: 72));
              },
            )
          ],
        ),
      ),
    );
  }
}
