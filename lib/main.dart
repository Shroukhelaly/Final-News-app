import 'package:final_news_app/services/news_services.dart';
import 'package:final_news_app/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';




void main() {
  runApp(const MyApp());

}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
