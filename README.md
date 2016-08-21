> 文件夹MVPActivity和MVPFragment存放了AndroidStudio的模板文件，放置到/Applications/Android\ Studio.app/Contents/plugins/android/lib/templates/activities/

# 弱网加载框架介绍

弱网加载框架目标是为了提升在弱网环境的用户体验以及提高开发效率。

将优化后的东西封装到基类里，提供抽象函数，后面的业务开发只要实现对应的抽象函数即可，不用考虑整体流程，将更多精力用于考虑业务逻辑。

## 一、总体架构

#### 1 整体基于MVP架构进行了针对弱网加载的优化，总体结构图如下：

![结构图](https://raw.githubusercontent.com/or0fun/AndroidMVPFramework/master/%E5%BC%B1%E7%BD%91%E6%A1%86%E6%9E%B6%E7%BB%93%E6%9E%84%E5%9B%BE.png)


### Activity

将生命周期传递给ViewModel

### ViewModel

管理UI的显示，并提供界面更新接口给Presenter和Activity调用

### Presenter

调用Request请求数据，并处理数据，然后调用viewModel的更新界面接口


#### 2 流程图


![流程结构图](http://git.showjoy.net/showjoywireless/showjoywireless_doc/raw/master/android/image/%E5%BC%B1%E7%BD%91%E5%8A%A0%E8%BD%BD%E6%A1%86%E6%9E%B6%E6%B5%81%E7%A8%8B.png)

## 二、优化点

#### 1 界面渲染之前，就先请求数据

最基本的优化在于：在界面渲染之前，就先请求数据。由于数据请求是异步的，所以会存在两种情况。

1） 当请求返回的时候，界面渲染还没结束(isViewCreated == false)，就先保存数据，等界面渲染完成再调用presenter的updateView将数据传给viewModel进行显示

2） 当请求返回时候，界面已渲染完毕(isViewCreated == true), 调用updateView将数据传给ViewModel更新界面

这整个过程都封装在BaseViewModel和BasePresenter里，实现时只要实现相应的抽象函数即可。

#### 2 首次进入某个页面，灵活配置是否加载数据

BasePresenter 提供抽象函数 public boolean requestOnStart()，实现类只要实现这个函数即可

#### 3 重新回到某个页面或者网络从断开到连接时，灵活配置是否重新加载数据

BasePresenter 提供抽象函数 public boolean requestOnResume()，实现类只要实现这个函数即可

#### 4 缓存

进入一个页面时，非实时性信息，首先显示缓存，再用请求回来的数据进行刷新

BasePresenter 提供函数 public void showCache()，实现类只要实现这个函数即可
函数里从存储池里取出缓存，然后调用viewmodel的接口

用户无需关心调用顺序，父类已安排好顺序。

#### 5 复用整个应用的数据

比如商品的信息可以直接复用，从搜索或者首页等页面跳到详情页面可以直接把商品信息带过去进行显示；
比如用户信息全局通用，避免重复复用

### 6 请求错误的处理

BaseViewModel 提供接口public void responseError(int error)， 实现类只要重写这个函数，就可以对不同的错误采取不一样的界面变化
