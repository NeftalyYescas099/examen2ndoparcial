import 'package:flutter/material.dart';
import 'package:examen2ndop/pages/home_page.dart';
import 'package:examen2ndop/controllers/zoomcontroller.dart';
import 'package:get/get.dart';

void main() {
  Get.lazyPut<ZoomController>(() => ZoomController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'zoom and opacity image',
      home: HomePage(),
    );
  }
}
