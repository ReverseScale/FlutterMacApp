# FlutterMacApp

### Flutter 框架
Flutter 是 Google 开发的一套全新的跨平台、开源 UI 框架，支持 iOS、Android 系统开发，并且是未来新操作系统 Fuchsia 的默认开发套件。

Flutter 通过跨平台的 Skia 图形库来实现图形渲染，只依赖各个系统的图形绘制相关的 Api，可能是目前为止真正意义上的全平台 UI 框架。

借助 Feather 平台，我们可以在 MacOS 和 Windows 上运行我们的 Flutter 应用程序，也就是说您可以编写一个可以在所有主要桌面和移动设备上运行的应用程序。

### Feather 平台

![](https://user-gold-cdn.xitu.io/2018/12/18/167bf85173c1450f?w=2548&h=1266&f=png&s=1940322)

Feather 是一个在桌面上运行 Flutter 应用程序的平台。

* 在 Mac 和 Windows 上运行 Flutter 应用程序的编译器和库
* 一个应用商店，您可以使用它来发布和更新应用，并为用户提供最小的安装阻力
* 一组可选的扩展 Flutter UI 小部件，用于高级界面设计
* 目前处于 alpha 测试阶段
* 免费使用的商业执照

官网：https://feather-apps.com

#### 配置环境

进入官网，点击 Build an App Now 下载 Mac 端编译器。

![](https://user-gold-cdn.xitu.io/2018/12/18/167bf851ac2e150a?w=832&h=400&f=png&s=458238)

下载完成后打开 Feature Workbench，这里就有了墙的存在，非精品网可能要自行处理一下。

<img width="480" height="630" src="https://user-gold-cdn.xitu.io/2018/12/18/167bf851ab40081d?w=1034&h=1356&f=png&s=81354"/>

Google 账户登录后，可以看到工程列表，如果你第一次做，当然是空的。

<img width="480" height="630" src="https://user-gold-cdn.xitu.io/2018/12/18/167bf851754b19eb?w=1034&h=1356&f=png&s=83137"/>

#### 项目改造

我们这里新建一个项目为例，教大家怎么把 Flutter 项目运行到 MacOS 上，非常简单哦。

1.打开终端，新建一个 Flutter 项目

```
flutter create mac_app
```

2.打开 mac_app 项目中 main.dart 修改两处：

1）在代码顶部引入 `foundation` 架包

```
import 'package:flutter/foundation.dart';
```

2）改造 `void main()` 函数，增加平台覆盖

```
void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
  runApp(MyApp());
}
```

保存代码，就可以了。

### 新建 Feather 项目

点击 Feature Workbench 界面右下角的加号，进入新建页面，点击 `BROWSE` 找到 Flutter 项目工程。

<img width="480" height="630" src="https://user-gold-cdn.xitu.io/2018/12/18/167bf85175e1b385?w=1034&h=1356&f=png&s=102872"/>

设置应用名和图标就创建完成了。

<img width="480" height="630" src="https://user-gold-cdn.xitu.io/2018/12/18/167bf85175b03c6a?w=1034&h=1356&f=png&s=107681"/>

点击 `TEST` 会打开 Xcode， `command + r` 运行就会看到 Flutter 的官方示例运行在 MacOS 上了。

![](https://user-gold-cdn.xitu.io/2018/12/18/167bf851756cebda?w=517&h=678&f=png&s=29742)

> Flutter 右上角的 `DEBUG` 是环境标记，不想看见它，切换生产环境它就不见了

### 发布和使用

点击 `PUBLISH` 设置应用描述和截图，发布应用到 Feather 商店。

<img width="480" height="630" src="https://user-gold-cdn.xitu.io/2018/12/18/167bf85175d89a5d?w=1034&h=1356&f=png&s=91739"/>

发布完成后再次进入项目列表，就可以看到 `WEB` 选项，点击就会进入 Feather 应用商店的网站。

<img width="480" height="630" src="https://user-gold-cdn.xitu.io/2018/12/18/167bf851acec7b56?w=1034&h=1356&f=png&s=122337"/>

任何 Mac 电脑都可以通过这个链接(https://feather-apps.com/alpha/app.html?id=app_gqcz24d6Vw80)来访问和安装这个应用。

![](https://user-gold-cdn.xitu.io/2018/12/18/167bf851ba86160c?w=2334&h=1344&f=png&s=3074967)

### 更新

和发布流程一样，只是需要注意修改版本号、应用描述和截图，最后上传应用即可。

![](https://user-gold-cdn.xitu.io/2018/12/18/167bf851b32b519d?w=870&h=800&f=png&s=85504)

### 效果演示
上面使用的是 Flutter 官方的示例工程，有朋友表示看起来不过瘾，so 我从网上找了一个看起来很适合做跨平台服务的示例工程，经过改造后我将其运行到了 macOS 系统上。

![](https://user-gold-cdn.xitu.io/2019/1/17/16859e37bdb79657?imageView2/0/w/1280/h/960/ignore-error/1)

朋友们满意了没🤪...
