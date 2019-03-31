[中文](https://github.com/ReverseScale/FlutterMacApp) | [EN](https://github.com/ReverseScale/FlutterMacApp/blob/master/README_zh.md)

### Flutter 
Flutter is a new cross-platform, open source UI framework developed by Google that supports iOS, Android system development, and is the default development kit for the new operating system Fuchsia.

Flutter implements graphics rendering through the cross-platform Skia graphics library, relying solely on the graphics of the various systems to draw the relevant Api, which may be the true full-platform UI framework so far.

With the Feather platform, we can run our Flutter app on MacOS and Windows, which means you can write an app that runs on all major desktops and mobile devices.

### Feather Platform

![](https://user-gold-cdn.xitu.io/2018/12/18/167bf85173c1450f?w=2548&h=1266&f=png&s=1940322)

Feather is a platform for running Flutter applications on the desktop.

* Compilers and libraries for running Flutter applications on Mac and Windows
* An app store that you can use to publish and update apps and provide users with minimal installation resistance
* An optional set of extended Flutter UI widgets for advanced interface design
* Currently in the alpha test phase
* Free use of business license

See more: https://feather-apps.com

#### Configuration

Go to the official website and click Build an App Now to download the Mac compiler.

![](https://user-gold-cdn.xitu.io/2018/12/18/167bf851ac2e150a?w=832&h=400&f=png&s=458238)

After the download is complete, open the Feature Workbench, there is a wall here, non-excellent network may have to deal with it.

<img width="480" height="630" src="https://user-gold-cdn.xitu.io/2018/12/18/167bf851ab40081d?w=1034&h=1356&f=png&s=81354"/>

Once you've signed in to your Google Account, you'll see a list of projects. If you do it for the first time, it's of course empty.

<img width="480" height="630" src="https://user-gold-cdn.xitu.io/2018/12/18/167bf851754b19eb?w=1034&h=1356&f=png&s=83137"/>

#### Project transformation

Let's create a new project here, and teach you how to run the Flutter project on MacOS. It's very simple.

1. Open the terminal and create a new Flutter project

```
flutter create mac_app
```

2. Open main.dart in the mac_app project to modify two places:

1) Introduce the `foundation` package at the top of the code

```
import 'package:flutter/foundation.dart';
```

2) Modify the `void main()` function to increase platform coverage

```
void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
  runApp(MyApp());
}
```

Save the code and you're done.

### New Feather Project

Click the plus sign in the lower right corner of the Feature Workbench interface to enter the new page and click `BROWSE` to find the Flutter project.

<img width="480" height="630" src="https://user-gold-cdn.xitu.io/2018/12/18/167bf85175e1b385?w=1034&h=1356&f=png&s=102872"/>

Setting the app name and icon is complete.

<img width="480" height="630" src="https://user-gold-cdn.xitu.io/2018/12/18/167bf85175b03c6a?w=1034&h=1356&f=png&s=107681"/>

Clicking on `TEST` will open Xcode, and `command + r` will run and you will see Flutter's official example running on MacOS.

![](https://user-gold-cdn.xitu.io/2018/12/18/167bf851756cebda?w=517&h=678&f=png&s=29742)

> The `DEBUG` in the upper right corner of Flutter is the environment tag. I don't want to see it. I switch the production environment and it disappears.

### Publishing and using

Click on `PUBLISH` to set the app description and screenshots and publish the app to the Feather store.

<img width="480" height="630" src="https://user-gold-cdn.xitu.io/2018/12/18/167bf85175d89a5d?w=1034&h=1356&f=png&s=91739"/>

Once the release is complete, go back to the project list and you will see the `WEB` option, which will take you to the Feather App Store website.

<img width="480" height="630" src="https://user-gold-cdn.xitu.io/2018/12/18/167bf851acec7b56?w=1034&h=1356&f=png&s=122337"/>

Any Mac computer can access and install this app via this link (https://feather-apps.com/alpha/app.html?id=app_gqcz24d6Vw80).

![](https://user-gold-cdn.xitu.io/2018/12/18/167bf851ba86160c?w=2334&h=1344&f=png&s=3074967)

### Update

Just like the release process, just pay attention to modify the version number, application description and screenshots, and finally upload the application.

![](https://user-gold-cdn.xitu.io/2018/12/18/167bf851b32b519d?w=870&h=800&f=png&s=85504)

### Demonstration
The above is Flutter's official example project, a friend said it seems to be not addictive, so I found a sample project on the Internet that seems to be suitable for cross-platform services, I modified it to run on the macOS system.
![](https://api.superbed.cn/pic/5c40013a9dc6d6264b5e2e0c)

Friends are satisfied with nothing🤪...

> Flutter installation, use, commissioning tips and more demonstration projects, see [Flutter Practice archive](https://github.com/ReverseScale/FlutterDemo)
