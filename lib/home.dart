/*
 * @Author: leafney
 * @Date: 2021-02-09 14:57:00
 * @LastEditTime: 2021-02-09 19:27:51
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
            Divider(),
            RaisedButton(
              onPressed: () {
                // 通过别名路由跳转页面
                // Get.toNamed('/a_page');

                // 跳转并删除前一页面
                // Get.offNamed('/a_page');

                // 跳转并移除之前所有页面
                Get.offAllNamed('/a_page');
              },
              child: Text('Go to Page A use toName()'),
            ),
            Divider(),
            RaisedButton(
              onPressed: () {
                // 通过别名路由传参
                Get.toNamed('/b_page', arguments: 'Get is the best');
              },
              child: Text('别名路由传参'),
            ),
            Divider(),
            RaisedButton(
              onPressed: () {
                // 动态url方式传参
                Get.toNamed('/b_page?device=phone&id=25');
              },
              child: Text('动态url传参'),
            ),
            Divider(),
            RaisedButton(
              onPressed: () {
                // 通过别名路由参数传参
                Get.toNamed('/b_page/wangwu');
              },
              child: Text('别名路由参数传参'),
            ),
            Divider(),
            RaisedButton(
              onPressed: () {
                // 未定义路由
                Get.toNamed('/xyz');
              },
              child: Text('未定义路由'),
            ),
          ],
        ),
      ),
    );
  }
}
