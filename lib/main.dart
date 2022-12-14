import 'package:flutter/material.dart';

import 'get_start/presentation/screens/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
          bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.white)
      ),
      home: const StartScreen(),
    );
  }
}

