# Flutter-sWayOfLearning
Flutter的学习之路

Flutter技术交流qq:165132359

Flutter技术交流qq群:669463368

一、搭建开发环境:

  1.https://flutter.dev/docs/get-started/install 下载flutter下载sdk。
  
  2.配置flutter开发环境,flutter文件夹下bin文件夹配置在系统环境变量里。
  
  3.cmd输入flutter doctor检查开发环境是否搭建成功。
  
  4.Android Studio->File -> Settings -> Plugins 搜索flutter并安装,关联安装Dart语言。
  
二、创建一个新项目:

  1.new Flutter Project。
  
  2.lib下main.dart文件内main()为应用程序入口。
  
三、基本常用类学习:

  1.StatelessWidget: 无变化状态小部件,创建后直接显示,不会有色值、大小或其它属性的变化;
  
  StatelessWidget生命周期: InputData-> Widget-> Rendders UI;
  
  Widget: Constructor Function-> build()。
  
  2.StatefulWidget:可变化状态小部件;
  
  StatefulWidget生命周期: InputData-> Widget-> Rendders UI;
  
  widget: Constructor Function-> initState()-> build()--> setState();
  
  发生变化时: didUpdateWidget()-> build()。
  
  3.MaterialApp代表Material Design风格的应用,基本控件包含:
  
  title: 任务管理器窗口显示的名字;
  
  theme: 主题颜色;
  
  color: 任务管理器窗口显示的颜色;
  
  home: 应用默认显示的界面;
  
  routes: 应用顶级导航表格;
  
  initialRoute: 第一个显示路由的名字;
  
  onGenerateRoute: 生成路由的回调函数;
  
  onLocaleChanged: 系统修改语言触发的回调;
  
  navigatorObservers: 应用Navigator的监视器;
  
  debugShowMaterialGrid: 是否显示基础布局网格,调试UI的工具;
  
  showPerformanceOverlay: 显示性能标签;
  
  
  
  
