#!/bin/bash
# Android Build Script
# This script builds the APK locally if you have Android SDK installed

set -e

# Check for required tools
if ! command -v java &> /dev/null; then
    echo "Error: Java is not installed. Please install JDK 17+"
    exit 1
fi

# Check for Android SDK
if [ -z "$ANDROID_HOME" ]; then
    if [ -d "$HOME/Android/Sdk" ]; then
        export ANDROID_HOME="$HOME/Android/Sdk"
    elif [ -d "/opt/android-sdk" ]; then
        export ANDROID_HOME="/opt/android-sdk"
    else
        echo "Error: ANDROID_HOME is not set and Android SDK not found"
        echo "Please install Android SDK and set ANDROID_HOME"
        exit 1
    fi
fi

# Download Gradle if not present
if [ ! -d "$HOME/gradle" ]; then
    echo "Downloading Gradle..."
    cd /tmp
    curl -L -o gradle.zip "https://services.gradle.org/distributions/gradle-8.4-bin.zip"
    unzip -q gradle.zip
    mv gradle-8.4 ~/gradle
    rm gradle.zip
fi

export PATH="$HOME/gradle/gradle-8.4/bin:$PATH"

cd /workspace/id-app/android

echo "Building Android APK..."
./gradlew assembleDebug

echo "Build complete!"
echo "APK location: app/build/outputs/apk/debug/app-debug.apk"
