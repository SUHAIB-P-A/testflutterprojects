import 'package:flutter/material.dart';
import 'package:testdemoflutterapps/animatedicon/aminatedicon.dart';
import 'package:testdemoflutterapps/custom_scroll_view_learn/custom_scroll_view_simple.dart';
import 'package:testdemoflutterapps/ecommerce_app_ui.dart/banner2/banner_page.dart';
import 'package:testdemoflutterapps/ecommerce_app_ui.dart/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      darkTheme: ThemeData.dark(),
      // theme: ThemeData(

      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      // ),
      home:  CustomScrollViewSimple(),
    );
  }
}
