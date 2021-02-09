/*
 * @Author: leafney
 * @Date: 2021-02-09 16:10:40
 * @LastEditTime: 2021-02-09 18:31:42
 * @FilePath: /flutter_getx/lib/a_page.dart
 * @Description: 
 */

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class APage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page A')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                // 返回页面
                Get.back();
              },
              child: Text('Back to Home'),
            ),
            Text(
              '${Get.arguments}',
              style: TextStyle(color: Colors.green),
            ),
            RaisedButton(
              onPressed: () {
                // 返回页面并携带返回数据
                Get.back(result: 'this is from home page');
              },
              child: Text('Send Data back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
