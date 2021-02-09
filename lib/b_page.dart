/*
 * @Author: leafney
 * @Date: 2021-02-09 18:31:25
 * @LastEditTime: 2021-02-09 19:24:59
 * @FilePath: /flutter_getx/lib/b_page.dart
 * @Description: 
 */

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page B')),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('back')),
            Divider(),
            Text('接收别名路由数据 ${Get.arguments}'),
            Divider(),
            // 接收动态url方式的参数
            Text(
              "接收动态url参数 Device name is ${Get.parameters['device']} and id is ${Get.parameters['id']}",
              style: TextStyle(color: Colors.red),
            ),
            Divider(),
            // 接收别名路由参数
            Text('接收别名路由参数 get url params ${Get.parameters['user']}'),
          ],
        ),
      ),
    );
  }
}
