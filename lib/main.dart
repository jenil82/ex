import 'package:ex/screen/view/shloka_screen.dart';
import 'package:ex/screen/view/screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => const home(),
        ),
        GetPage(
          name: '/shloka',
          page: () => const shloka_screen(),
        ),
      ],
    ),
  );
}