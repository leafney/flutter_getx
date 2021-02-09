# flutter_getx

Flutter getx demo.

## Introduction


### 普通路由导航

#### Get.to

导航到新页面。


```dart
Get.to(NextScreen());
```


`Get.to()` 相当于 `Navigator.of(context).push()`


```dart
  // 跳转到指定页面
  Get.to(
    APage(),
    // 充满屏幕的对话框形式
    fullscreenDialog: true,

    // 页面切换时的动画效果
    transition: Transition.zoom,

    // 页面切换时长
    duration: Duration(milliseconds: 3000),

    // 曲线动画效果
    curve: Curves.bounceInOut,
  );
```

#### Get.back

返回上一页或关闭 `SnackBars`、`Dialogs`、`BottomSheets`

相当于 `Navigator.pop(context)`

```dart
  Get.back();
```

#### Get.off

进入下一个页面，不能返回。（用于SplashScreens，登录页面等）

相当于 `Navigator.of(context).pushReplacement()`

```dart
  // 跳转到指定页面，不返回
  Get.off(APage());
```

#### Get.offAll

进入下一个页面并取消之前的所有路由。

相当于 `Navigator.of(context).pushAndRemoveUntil`


#### 页面传值

通过 `arguments` 参数传值。

```dart
  // 传值
  Get.to(APage(), arguments: "Data from home");
```

通过 `Get.arguments` 接收

```dart
  Text(
    '${Get.arguments}',
    style: TextStyle(color: Colors.green),
  ),
```

#### 接收页面返回值

接收返回值：

```dart
  onPressed: () async {
    // 跳转到指定页面，并接收页面的返回值
    var data = await Get.to(APage());
    print('The received data is $data');
  },
```

返回值：

```dart
  // 返回页面并携带返回数据
  Get.back(result: 'this is from home page');
```


----

