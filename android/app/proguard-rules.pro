# Add project specific ProGuard rules here.
-keepattributes *Annotation*
-keepattributes SourceFile,LineNumberTable
-keep public class * extends java.lang.Exception

# WebView
-keep class * extends android.webkit.WebChromeClient { *; }
-keep class * extends android.webkit.WebViewClient { *; }
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}
