import 'package:flutter/material.dart';
import 'package:voxaura/home_page.dart';
import 'package:voxaura/pallete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VoxAura',
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: Pallete.blackColor,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
