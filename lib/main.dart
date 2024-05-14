import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/core/resources/theme_manager.dart';
import 'package:flutter_admin_panel/modules/main/pages/main_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: const Locale('fa'),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      theme: ThemeManager.darkTheme(context),
      home: const MainPage(),
    );
  }
}

