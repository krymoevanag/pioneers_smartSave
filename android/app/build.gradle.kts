plugins {
    id("com.android.application")
    id("com.google.gms.google-services") // Firebase configuration
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.pioneers_smartsave" // ✅ Matches applicationId
    compileSdk = 35
    ndkVersion = "27.2.12479018"

    defaultConfig {
        applicationId = "com.example.pioneers_smartsave"
        minSdk = 23
        targetSdk = 35
        versionCode = 1
        versionName = "1.0.0"
    }

    kotlinOptions {
        jvmTarget = "17" // Set the JVM target version here
    }
}

flutter {
    source = "../.."
}
