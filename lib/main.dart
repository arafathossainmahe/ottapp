import 'package:flutter/material.dart';
import 'package:ottapp/views/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        canvasColor: Colors.grey.shade900,
        useMaterial3: true
      ),
      home: HomePage(),
    );
  }
}
