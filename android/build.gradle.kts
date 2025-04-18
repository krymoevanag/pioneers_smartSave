allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

val newBuildDir: Directory = rootProject.layout.buildDirectory.dir("../../build").get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}
subprojects {
    project.evaluationDependsOn(":app")
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
plugins {
    // Other existing plugins...

    // Add the Google services Gradle plugin
    id("com.google.gms.google-services") version "4.4.2" apply false
}
// android/build.gradle.kts

// android/build.gradle.kts or build.gradle
buildscript {
    dependencies {
        classpath("com.android.tools.build:gradle:8.1.2") // or newer
    }
}
