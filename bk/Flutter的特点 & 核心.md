# Flutter的特点 & 核心

## Flutter的特点

> **跨平台**:Flutter至少可以跨5个平台，甚至支持嵌入式开发。常见的有MacOS,Windows,Linux,Android，IOS,甚至可以在谷歌最新的操作系统Fuchsia上运行。良好的跨平台特性，可以大大减少开发成本，将是未来大趋势。  
> 
> **UI风格多样**:Flutter内置了Material Design和Cupertino风格组件。
> 
> **响应式框架:**使用Flutter，响应式框架和一系列基础组件，可以轻松构建用户界面。强大的API都是吸取Android,前端等宝贵API经验封装出来的。让复杂的UI简单化。
> 
> **支持插件：**通过Flutter的插件可以访问本地API，如：相机，蓝牙，WIFI等，借助现有的Java,Swift,Objective C,C++代码实现对原生系统的调用。 
> 
> **60fps超高性能**：Flutter采用GPU渲染技术，因此性能极高。Flutter编写的应用是可以达到60fps(每秒传输帧数)，这也就是说它可以完全胜任游戏的制作。官方更是宣称用Flutter开发的应用甚至会超过原生应用性能。


## Flutter的核心

&emsp;&emsp;先来看看Flutter的框架图:  

![](https://oscimg.oschina.net/oscnet/up-a4b248a9849336e04eb772f259826944f67.png)

核心精华如下: 
 
- Flutter一切皆为Widget,不像Android那样Activity里包含各种View,他所有的都是Widget。
- Flutter的Widget分为有状态和无状态的，什么是状态呢，这里的状态是一种UI数据模型，什么意思呢，简单的理解就是UI组件和数据相结合，传统的Android更新数据是这样的：先更新数据，然后在获取控件对象进行数据的更换，而有状态的Widget通过setState方法可以进行整个Widget的更新，仅仅是一个方法，你会产生疑问和好奇，为了解开这个答案读者可以继续往后阅读。


# 谢谢阅读ClAndEllen的Flutter学习博客，您的点赞是对我写作最大动力!