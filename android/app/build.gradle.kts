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
        multiDexEnabled = true // ✅ Required if app has many methods
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = "17" // Ensure Kotlin is compiled with JDK 17
    }
}

dependencies {
    implementation(platform("com.google.firebase:firebase-bom:33.0.0")) // Use latest BOM version
    implementation("com.google.firebase:firebase-analytics-ktx") // No need for explicit version
    implementation("com.google.firebase:firebase-messaging-ktx") // No need for explicit version

    implementation("com.google.android.gms:play-services-auth:20.7.0")
    implementation("androidx.security:security-crypto:1.1.0-alpha03")
    implementation("androidx.core:core-ktx:1.12.0")
    implementation("androidx.appcompat:appcompat:1.7.0")
    implementation("androidx.lifecycle:lifecycle-runtime-ktx:2.6.2")
}

repositories {
    google()
    mavenCentral()
}

flutter {
    source = "../.."
}