import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controler/controler.dart';

class shloka_screen extends StatefulWidget {
  const shloka_screen({super.key});

  @override
  State<shloka_screen> createState() => _shloka_screenState();
}

class _shloka_screenState extends State<shloka_screen> {
  HomeController homeController = Get.put(
    HomeController(),
  );
  @override
  Widget build(BuildContext context) {
    int index = Get.arguments;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "Shloka",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.black,
        body: FutureBuilder(
          future: homeController.callApi(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text(
                  "${snapshot.error}",
                ),
              );
            } else if (snapshot.hasData) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: double.infinity,
                    width: 250,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Center(
                        child: Text(
                          "${homeController.dataList[index].chapterSummary}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            );
          },
        ),
      ),
    );
  }
}