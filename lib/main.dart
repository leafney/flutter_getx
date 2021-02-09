import 'package:flutter/material.dart';
import 'package:flutter_getx/a_page.dart';
import 'package:flutter_getx/b_page.dart';
import 'package:flutter_getx/home.dart';
import 'package:flutter_getx/unknow_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Use Getx
    return GetMaterialApp(
      title: 'GetX Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      getPages: [
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(name: '/a_page', page: () => APage()),
        GetPage(name: '/b_page', page: () => BPage()),
        GetPage(name: '/b_page/:user', page: () => BPage()),
      ],
      unknownRoute: GetPage(name: '/notfound', page: () => UnknowPage()),
      routingCallback: (routing) {
        if (routing.current == '/a_page') {
          print('${routing.current}');
        }
      },
    );
  }
}
