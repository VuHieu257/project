import 'package:academy_app/bottom/bottom_navigation_bar.dart';
import 'package:academy_app/screen/course_detail.dart';
import 'package:academy_app/screen/register_course.dart';
import 'package:academy_app/screen/ui/home_page.dart';
import 'package:academy_app/screen/ui/my_information_page.dart';
import 'package:academy_app/screen/ui/my_information_security_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavigationCn(),
      debugShowCheckedModeBanner: false,
    );
  }
}