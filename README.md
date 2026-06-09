# 🆔 身份证泄露查询 & 随机生成器

一个结合身份证泄露查询和随机生成功能的移动端Web应用和Android APP。

## ✨ 功能特性

- 🔍 **泄露查询**: 从72,749条身份证数据库中查询号码是否泄露
- ✨ **随机生成**: 支持自定义各段位数生成合规身份证号
- 📱 **PWA支持**: 可添加到手机主屏幕离线使用
- 🤖 **Android APP**: 支持Android 16和64位系统

## 📱 快速使用

### Web版本（推荐）

1. 访问 GitHub Pages: `https://xin-sx.github.io/id-checker/`
2. 或将 `www/` 目录部署到任意Web服务器

### Android APP

1. 下载 APK: [点击下载](./releases)
2. 安装到Android手机

## 🔧 自定义生成规则

身份证号各段位均可自定义：

| 段位 | 说明 | 示例 |
|------|------|------|
| ① 省份码 | 1-2位，11-65 | 11(北京), 31(上海) |
| ② 城市码 | 3-4位，01-90 | 01, 02... |
| ③ 区县码 | 5-6位，01-99 | 01, 02... |
| ④ 出生年 | 7-10位 | 1990, 2000 |
| ⑤ 出生月 | 11-12位，01-12 | 01-12 |
| ⑥ 出生日 | 13-14位，根据月份 | 01-31 |
| ⑦ 顺序码 | 15-16位，00-99 | 00-99 |
| ⑧ 性别码 | 17位，0-9 | 奇数男，偶数女 |
| ⑨ 校验位 | 自动计算 | 0-9 或 X |

## 🛠️ 构建APP

```bash
# 克隆项目
git clone https://github.com/xin-sx/id-checker.git
cd id-checker

# 构建Android APK
cd android
./gradlew assembleDebug

# APK位置: app/build/outputs/apk/debug/app-debug.apk
```

## 📁 项目结构

```
id-checker/
├── www/                    # Web版本文件
│   ├── index.html
│   ├── id_database.txt     # 身份证数据库
│   ├── manifest.json       # PWA配置
│   └── sw-pwa.js          # Service Worker
├── android/                # Android项目
│   └── app/src/main/
│       └── assets/        # Android静态资源
├── releases/              # 预编译APK
└── README.md
```

## ⚠️ 免责声明

随机生成的身份证号均为虚构，如有雷同纯属巧合。本工具仅供学习和研究使用，请勿用于非法用途。

## 📄 License

MIT License
