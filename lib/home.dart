/*
 * @Author: leafney
 * @Date: 2021-02-09 14:57:00
 * @LastEditTime: 2021-02-09 17:48:44
 * @FilePath: /flutter_getx/lib/home.dart
 * @Description: 
 */

import 'package:flutter/material.dart';
import 'package:flutter_getx/a_page.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter GetX Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                // // 跳转到指定页面
                // Get.to(
                //   APage(),
                //   // 充满屏幕的对话框形式
                //   fullscreenDialog: true,

                //   // 页面切换时的动画效果
                //   transition: Transition.zoom,

                //   // 页面切换时长
                //   duration: Duration(milliseconds: 3000),

                //   // 曲线动画效果
                //   curve: Curves.bounceInOut,
                // );

                // 跳转到指定页面，不返回
                // Get.off(APage());

                // 跳转到指定页面并取消之前的所有路由
                // Get.offAll(APage());

                // 传值
                Get.to(APage(), arguments: "Data from home");
              },
              child: Text('Go to Page A'),
            ),
            RaisedButton(
              onPressed: () async {
                // 跳转到指定页面，并接收页面的返回值
                var data = await Get.to(APage());
                print('The received data is $data');
              },
              child: Text('Go to Page A and get received data'),
            ),
          ],
        ),
      ),
    );
  }
}
