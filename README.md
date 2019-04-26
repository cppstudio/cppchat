# CppChat
<<<<<<< HEAD
C++团队专用聊天吹水工具，开始了，别急
=======
C++团队专用聊天吹水工具，开始了，别急

## 开发规范
### git提交规范
请创建自己的分支

- 分支名称：`develop-你的名字`

### 代码位置
所有`dart`文件放在`\lib`文件夹中

目录结构参考：
- `\lib`
    - `\lib\network`:网络请求相关
    - `\lib\page`:所有App界面
    - `\lib\utils\[开发者名称]`:通用工具
    - `\lib\widgets\[开发者名称]`:自定义组件
    - `routes.dart`:全局路由
    - `config.dart`:全局配置
    
### 全局路由设计参考
`routes.dart`定义：
```dart
abstract class UIRoute {
  static const String choose_labels = 'choose_labels';
  static const String choose_peoples = 'choose_peoples';
  static const String chat = 'chat';
  static const String circle = 'circle';
  static const String circle_content = 'circle_content';
  static const String focus_time = 'focus_time';
  static const String login = 'login';
  static const String login_page = 'login_page';
  static const String sign_up_page = 'sign_up_page';
  static const String user_home = 'user_home';
  static const String edit_profile = 'edit_profile';
}
```

`main.dart`路由注册：
```dart
routes: {
    UIRoute.choose_labels: (context) => ChooseLabels(),
    UIRoute.choose_peoples: (context) => ChoosePeoples(),
    UIRoute.chat: (context) => Chat(),
    UIRoute.circle: (context) => SmartCircle(),
    UIRoute.focus_time: (context) => FocusTime(),
    UIRoute.login: (context) => LoginPage(),
    UIRoute.login_page: (ctx) => ExtendsLogin.LoginPage(),
    UIRoute.sign_up_page: (ctx) => ExtendsSignUp.SignUpPage(),
    UIRoute.user_home: (ctx) => UserHomePage(),
    UIRoute.edit_profile: (ctx) => EditProfilePage(),
},
```

页面跳转方式：
```dart
Navigator.pushNamed(context, UIRoute.user_home);
```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
>>>>>>> develop-da
