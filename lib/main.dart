import 'package:flutter/material.dart';
import 'package:timer_cheers/pages/home_page.dart';
void main() {
  runApp(TimerApp());
}

class TimerApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home:HomePage(),
    );
  }
}
