---
title: "Flutter Versions Manager"
tags: ["Flutter", "Dart", "Front End"]
date: 2019-10-31
draft: false
---

<img src="https://dashixiong91.gitee.io/assets/fvm/title.png">

# fvm
> Flutter SDK 多版本管理工具

## 安装

1. 首先，添加homebrew的tap源：
```shell
brew tap dashixiong91/fvm
```

2. 添加完tap之后，你可以安装`fvm`
```shell
brew install fvm
```

3. 拷贝以下内容到你的 `.bashrc|.zshrc ...` 文件中

```shell
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export FVM_DIR="$HOME/.fvm"
source "/usr/local/opt/fvm/init.sh"
```
## 用例

### 打印 fvm 帮助信息
```shell
fvm
# or `fvm --help`
```

### 安装 Flutter某个版本，以1.9.1为例
```shell
fvm install 1.9.1
```

### 使用上面安装的版本
```shell
fvm use 1.9.1
```

### 设置别名
```shell
fvm alias latest 1.9.1
```

### 列出已安装的所有版本
```shell
fvm list
```

### 列出已发布的版本
```shell
fvm list-remote all
```

## 预览图

 <img src="https://dashixiong91.gitee.io/assets/fvm/terminal_v3.png" alt="terminal">

## 链接

[Github Repo](https://github.com/dashixiong91/fvm)
