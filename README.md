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

  4.Scaffold代表基本的纸墨设计布局结构,基础控件包含:
  
  appBar: 显示在界面顶部的AppBar,也就是Android中的ActionBar,ToolBar;
  
  body: 当前界面显示的主要内容Widget。
  
  floatingActionButton: 纸墨设计中FAB,界面的主要功能按钮。
  
  persistentFooterButtons: 固定在下方的按钮,比如对话框下方的确定、取消按钮。
  
  drawer: 侧边栏控件。
  
  backgroundColor: 内容背景颜色。
  
  bottomNavigationBar: 显示在底部的导航栏。
  
  resizeToAvoidBottomPadding: 类似Android中的android:windowSoftInputMode=”adjustResize”,控制界面body是否重新布局来避免底部被覆盖,如键盘遮挡,   默认值为true。
  
  5.State是当Widget被渲染或者在其生命周期中状态改变时，能同步读到相关信息的对象。
  
  State生命周期:开始->构造函数->initState->didChangeDependencies->build->显示在RenderTree->移除->deactivate->dispose->结束;
  显示在RenderTree->组件状态改变->didUpdateWidget->build->显示在RenderTree。
  
  三个阶段: 
          
           ⑴ 初始化initState
  
           ⑵ 状态改变
           
           ⑶ 销毁dispose
     
  State与StatefulWidget区别: 
                           
                            ⑴ 不同的生命周期。
  
                            ⑵ Widget首次插入到渲染树中时,框架会调用createState创建一个新的State与该树中位置关联,当widget父集重建时,父集将创建一个新的Widget,但框架会重用树中的State,不会重新调用createState创建新的实例。
  
6.Container是一个容器,结合了绘制、定位和尺寸widget的widget,基础控件包含:

key: Container唯一标识符，用于查找更新。

alignment: 控制child的对齐方式,如果container或container父节点尺寸大于child的尺寸,这个属性会起作用。

padding: decoration内部的空白区域,如果有child的话,child位于padding内部。

color: 用来设置container背景色,foregroundDecoration设置的话会遮盖。

decoration: 绘制child后面的装饰,设置了decoration就不能设置color,否则会报错,此时应该在decoration中设置颜色。

foregroundDecoration: 绘制child前面的装饰。

width: 设置container宽度,设置为double.infinity可以强制在高度上撑满。

height: 设置container高度。

constraints: 添加child的额外约束。

margin: 设置container外部间距。

transform: 设置container变换矩阵,类型为Matrix4。

child: container中的内容widget。

container绘制过程: 

  ⑴ 首先绘制transform效果。
  
  ⑵ 接着绘制decoration。
  
  ⑶ 绘制child。
  
  ⑷ 最后绘制foregroundDecoration。
  
container布局顺序:

  ⑴ 对齐alignment。
  
  ⑵ 调节自身尺寸适合子节点。
  
  ⑶ 采用width、height和constraints布局。
  
  ⑷ 扩展自身去适应父节点。
  
  ⑸ 调节自身到足够小。
  
container继承关系: 

  Object->Diagnosticable->DiagnosticableTree->Widget->StatelessWidget->container

7.ListView是一个线性布局的多widget列表,四种方式可以构建:
  
  ⑴ List<Widget>,适合少量子元素列表视图,因为构造列表需要为列表每一个子元素执行工作,而不是可见子元素。
  
  ⑵ ListView.builder,利用IndexedWidgetBuilder按需构造,适合大量或无限子元素的列表视图,只对可见子元素调用。
  
  ⑶ ListView.separated,采用两个IndexedWidgetBuilder:itemBuilder根据需要构建的子项separatorBuilder类似的构建子项分隔符子项,适合固定个数子元素的列表视图。
  
  ⑷ ListView.custom的SliverChildDelegate,SliverChildDelegate可以控制实际不可见的子元素大小的算法。

8.Column是flex垂直布局控件,能够将子控件垂直排列,基础控件包含:

mainAxisAlignment:主轴布局方式,column主轴为垂直布局方式。

  ⑴ start : 沿主轴方向顶部对齐。
  
  ⑵ end: 沿主轴方向底部对齐。
  
  ⑶ center: 沿主轴方向居中对齐。
  
  ⑷ spaceBetween: 沿主轴方向平分剩余空间。
  
  ⑸ spaceAround: 把剩余空间平分成n份，n是子widget的数量，然后把其中一份空间分成2份，放在第一个child的前面，和最后一个child的后面。
  
  ⑹ spaceEvenly: 把剩余空间平分n+1份，然后平分所有的空间，请注意和spaceAround的区别。

crossAxisAlignment: 交叉布局方式,对于column相当于水平布局方式。

  ⑴ start : 垂直主轴方向左侧对齐。
  
  ⑵ end: 垂直主轴方向右侧对齐。
  
  ⑶ center: 垂直主轴方向居中对齐。
  
  ⑷ stretch: 垂直主轴方向(水平方向)拉伸子child。
  
  ⑸ baseline: 与textBaseline一起使用。

textBaseline: 字体的基线。

  ⑴ alphabetic: 用于对齐字母字符底部的水平线。
  
  ⑵ ideographic: 用于对齐表意字符的水平线。

textDirection: 文字布局的方式。

  ⑴TextDirection.ltr: 从左到右。
  
  ⑵TextDirection.rtl: 从右到左布局。

verticalDirection: 垂直布局方向,上或下。

  ⑴down: 从上向下布局。
  
  ⑵up: 从下向上布局。
  
其它参数参考Row控件,方向由水平变为垂直。
  
9.Row是flex水平布局控件,能够将子控件水平排列,基础控件包含:

MainAxisSize: 在主轴方向占有空间的值，默认是max。

  ⑴max: 根据传入的布局约束条件，最大化主轴方向的可用空间。
  
  ⑵min: 与max相反，是最小化主轴方向的可用空间。
  
其它参数参考Column控件,方向由垂直变为水平。

继承关系: Object -> Diagnosticable -> DiagnosticableTree -> Widget -> RenderObjectWidget -> MultiChildRenderObjectWidget -> Flex -> Row
  
10.ListTile一个固定高度包括文字和图标的控件,基础控件包含:

leading: 最左侧的头部控件widget。

title: 标题title,文本widget。

subtitle: 富文本标题,文本widget。

trailing: 展示在title后面最末尾的后缀组件widget。

onTap: 点击事件。

其它参数参考其它widget参数使用。
  
四、项目实现基础界面展示功能:

  1. 实现tab切换界面: 功能类似于Android的ViewPager。
  
    (1) 编写MyHomePage,继承StatefulWidget。
    
    (2) 编写MyHomePageState,继承State,泛型为MyHomePage。
    
    (3) MyHomePage类中重写createState方法,createState方法中创建MyHomePageState对象并返回。
    
    (4) MyHomePageState类中重写initState方法,方法中创建全局变量TabController对象,TabController构造器中length表示滑动页面总数。
    
    (5) MyHomePageState类中重写dispose方法,方法中对TabController对象dispose。
    
    (6) MyHomePageState类中重写build方法,创建Scaffold对象;
    body参数为TabBarView对象,TabBarView对象参数controller为TabController对象,参数children为<Widget>包含FirstPage,SecondPage,ThirdPage;
    bottomNavigationBar参数为Material对象,参数child为TabBar对象,TabBar对象参数controller为TabBarView对象,参数tabs为<Tab>包含Tab对象并设置相关名称和图标。
    
  2.实现上下滑动列表: 功能类似于Android的ListView。
  
    ⑴ 编写List,继承StatefulWidget。
    
    ⑵ 编写ListState,继承State,泛型为List。
    
    ⑶ List类中重写createState方法,createState方法中创建ListState对象并返回。
    
    ⑷ ListState类中重写build方法,通过ListView.builder生成列表;
    
    itemCount参数为列表item个数,itemBuilder参数为item的widget;
    
    创建Card对象,child参数赋值为Container对象;
    
    创建Container对象,padding参数为EdgeInsets对象,可设置不同方向内间距;child参数为ListTile对象。
    
    创建ListTile对象,subtitle参数为Container对象;trailing参数为Icon对象。
    
    创建Container对象,child参数为Column对象。
    
    创建Column对象,mainAxisAlignment参数为MainAxisAlignment.spaceBetween;children参数为<Widget>数组,数组内元素为Row对象。
    
    创建Row对象,mainAxisAlignment参数为MainAxisAlignment.spaceBetween;children参数可为Text对象也可为Row或Column对象搭建更复杂的widget。
    
  
  
  
