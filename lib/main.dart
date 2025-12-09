import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/api_data_show.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: ApiDataShow());
  }
}
