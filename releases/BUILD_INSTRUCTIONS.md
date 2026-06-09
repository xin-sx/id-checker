# Android APK 构建指南

## 快速构建

在本地安装了 Android SDK 和 Gradle 后，执行以下命令：

```bash
# 克隆项目
git clone https://github.com/xin-sx/id-checker.git
cd id-checker

# 给脚本添加执行权限
chmod +x build-apk.sh

# 运行构建脚本
./build-apk.sh
```

## 手动构建

```bash
cd android

# 确保已安装 JDK 17+
java -version

# 确保已安装 Android SDK
echo $ANDROID_HOME

# 构建 Debug APK
./gradlew assembleDebug

# 构建 Release APK
./gradlew assembleRelease
```

## APK 输出位置

- Debug APK: `android/app/build/outputs/apk/debug/app-debug.apk`
- Release APK: `android/app/build/outputs/apk/release/app-release.apk`

## 安装到手机

```bash
# 通过 ADB 安装
adb install app/build/outputs/apk/debug/app-debug.apk

# 或者直接将 APK 文件复制到手机，通过文件管理器安装
```

## Android 配置

- **compileSdk**: 35 (Android 15)
- **targetSdk**: 35 (Android 15)
- **minSdk**: 24 (Android 7.0)
- **支持架构**: arm64-v8a (64位), armeabi-v7a (32位), x86, x86_64

## 所需工具

1. JDK 17 或更高版本
2. Android SDK (API Level 35)
3. Gradle 8.4 或更高版本

## 下载已构建的 APK

请访问 [Releases](https://github.com/xin-sx/id-checker/releases) 页面下载预编译的 APK。
