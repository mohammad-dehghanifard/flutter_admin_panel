import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/core/resources/theme_manager.dart';
import 'package:flutter_admin_panel/modules/main/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Admin Panel',
      theme: ThemeManager.darkTheme,
      home: const MainPage(),
    );
  }
}

