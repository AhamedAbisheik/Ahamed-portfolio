import 'package:flutter/material.dart';

import 'ui/home.dart';
import 'config/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ahamed Abisheik',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        hintColor: AppColors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}
