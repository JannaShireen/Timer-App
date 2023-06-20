import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer/home_page.dart';
import 'package:timer/model/timer_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: ChangeNotifierProvider(
          create: (context) => TimerInfo(), child: const HomePage()),
    );
  }
}
