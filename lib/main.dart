import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter app ',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const HomeScreen());
  }
}
