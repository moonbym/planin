import 'package:flutter/material.dart';
import 'package:planin/view/pages/initpage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromRGBO(146, 224, 228, 1))),
      debugShowCheckedModeBanner: false,
      home: const InitPage(),
    );
  }
}
