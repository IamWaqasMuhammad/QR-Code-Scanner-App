# Proguard rules for your application
# Add project specific ProGuard rules here.

# Keep GetX classes if necessary (though usually not needed with R8)
-keep class com.google.zxing.** { *; }

# Flutter Wrapper
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }

# Fix for Play Core missing classes (R8 error)
-dontwarn com.google.android.play.core.**
