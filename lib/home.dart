/*
 * @Author: leafney
 * @Date: 2021-02-09 13:47:03
 * @LastEditTime: 2021-02-09 14:38:15
 * @FilePath: /flutter_getx/lib/home.dart
 * @Description: 
 */

import 'package:flutter/material.dart';
import 'package:flutter_getx/bottomsheet_page.dart';
import 'package:flutter_getx/dialog_page.dart';
import 'package:flutter_getx/snackbar_page.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  Get.to(SnackBarPage());
                },
                child: Text('SnackBar的使用'),
              ),
              RaisedButton(
                onPressed: () {
                  Get.to(DialogPage());
                },
                child: Text('Dialog的使用'),
              ),
              RaisedButton(
                onPressed: () {
                  Get.to(BottomSheetPage());
                },
                child: Text('BottomSheets的使用'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
