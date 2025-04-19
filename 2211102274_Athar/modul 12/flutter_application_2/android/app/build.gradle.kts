plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.flutter_application_2"
    compileSdk = 33  // Sesuaikan dengan versi terbaru yang didukung
    ndkVersion = "25.1.8937393"  // Sesuaikan jika perlu

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.example.flutter_application_2"
        minSdk = 13  // Ubah ini dari flutter.minSdkVersion ke angka langsung
        targetSdkVersion 33  // Sesuaikan dengan versi terbaru yang didukung
        versionCode 1
        versionName "1.0"
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}
