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

```dart
  // 跳转到指定页面并取消之前的所有路由
  // Get.offAll(APage());
```

#### 页面传值

通过 `arguments` 参数传值，参数可以是 `字符串`、`Map`、`List`、或 `类的实例`

```dart
  // 传值
  Get.to(APage(), arguments: "Data from home");
```

在另一页面中通过 `Get.arguments` 接收：

```dart
  Text(
    '${Get.arguments}',
    style: TextStyle(color: Colors.green),
  ),
```

#### 接收页面返回值

接收另一页面的返回值：

```dart
  onPressed: () async {
    // 跳转到指定页面，并接收页面的返回值
    var data = await Get.to(APage());
    print('The received data is $data');
  },
```

在另一页面中设置返回值：

```dart
  // 返回前一页面并携带返回数据
  Get.back(result: 'this is from home page');
```

----

### 别名路由导航

#### 配置别名

```dart
  return GetMaterialApp(
    ...
    ...
    getPages: [
      GetPage(name: '/home', page: () => HomePage()),
      GetPage(name: '/a_page', page: () => APage()),
      GetPage(name: '/b_page', page: () => BPage()),
    ],
  );
```


#### Get.toNamed

使用别名跳转页面

相当于 `Navigation.pushNamed()`

```dart
  // 通过别名路由跳转页面
  Get.toNamed('/a_page');
```

#### Get.offNamed

跳转并删除前一页面

相当于 `Navigation.pushReplacementNamed()`

```dart
  // 跳转并删除前一页面
  Get.offNamed('/a_page');
```

#### Get.offAllNamed

跳转并删除之前所有的页面

相当于 `Navigation.pushNamedAndRemoveUntil()`

```dart
  // 跳转并移除之前所有页面
  Get.offAllNamed('/a_page');
```

#### 命名路由传参

通过 `arguments` 属性传参，参数可以是 `字符串`、`Map`、`List`、或 `类的实例`

发送数据：

```dart
  // 通过别名路由传参
  Get.toNamed('/b_page', arguments: 'Get is the best');
```

通过 `Get.arguments` 接收数据：

```dart
  Text('接收别名路由数据 ${Get.arguments}'),
```

#### 动态url传参

通过动态url方式传参：

```dart
  // 动态url方式传参
  Get.toNamed('/b_page?device=phone&id=25');
```

通过 `Get.parameters` 来接收参数：

```dart
  // 接收动态url方式的参数
  Text(
    "接收动态url参数 Device name is ${Get.parameters['device']} and id is ${Get.parameters['id']}",
    style: TextStyle(color: Colors.red),
  ),
```

#### 路由参数传参

定义路由参数：

```dart
  getPages: [
    GetPage(name: '/b_page', page: () => BPage()),
    GetPage(name: '/b_page/:user', page: () => BPage()),
  ],
```

发送路由参数：

```dart
  // 通过别名路由参数传参
  Get.toNamed('/b_page/wangwu');
```

通过 `Get.parameters` 接收路由参数：

```dart
  // 接收别名路由参数
  Text('接收别名路由参数 get url params ${Get.parameters['user']}'),
```

#### 未定义路由导航

未定义路由导航，类似于404错误页面

设置：

```dart
  return GetMaterialApp(
    ...
    unknownRoute: GetPage(name: '/notfound', page: () => UnknowPage()),
  );
```

测试：

```dart
  // 未定义路由
  Get.toNamed('/xyz');
```

-----

#### 中间件

监听Get路由事件来触发动作，可以使用 `routingCallback` 实现：

设置：

```dart
  return GetMaterialApp(
    routingCallback: (routing) {
      if (routing.current == '/a_page') {
        print('${routing.current}');
      }
    },
  );
```

----