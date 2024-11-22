import 'package:flutter/material.dart';

import 'splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EverGreen Farm',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(1, 33, 187, 204)),
        useMaterial3: true,
      ),
      //home: SplashPage(),
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
