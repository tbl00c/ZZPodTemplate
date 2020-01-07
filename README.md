# 组件库模板

## 功能介绍

组件库创建。

## 安装及依赖

Ruby: 2.3.7 及以上.
CocoaPods: 1.7.0 及以上。

## 快速开始

组件库创建指令：``` pod lib create 组件名 --template-url=git@github.com:tbl00c/ZZPodTemplate.git```

## 技术原理

基于[CocoaPods模板库](https://github.com/CocoaPods/pod-template.git)修改实现。

组件初始目录结构(以名为ZZModule的组件为例)：

* Example：组件示例程序，可进行组件的独立开发
* ZZModule.podspec：配置文件
* README.md：说明文档
* LICENSE：开源协议
* ZZModule：组件源码	
	> * Resources：资源文件
	>	> Images.xcassets：图片资源
	>
	> * Sources：代码文件
	>	> * API：组件接口子库，公开的头文件
	>	> * Business: 组件业务子库，业务功能实现
	>	>	> Base: 组件基本功能定义
	>	>
	>	> * Module: 组件配置子库，包含组件协议定义、组件初始化、服务注册等

## 负责人

李伯坤, libokun@126.com。

## 修改记录

无。

## 开源协议

MIT License。