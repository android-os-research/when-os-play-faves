.class Lcom/samsung/android/game/SystemInfoCollector$KeyName;
.super Ljava/lang/Object;
.source "SystemInfoCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/SystemInfoCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyName"
.end annotation


# static fields
.field static final AUDIO_OUTPUT_DEVICE:Ljava/lang/String; = "audioOutputDevice"

.field static final AUDIO_VOLUME:Ljava/lang/String; = "audioVolume"

.field static final BATTERY_PERCENT:Ljava/lang/String; = "batteryPercent"

.field static final BATTERY_PLUGGED_TYPE:Ljava/lang/String; = "batteryPluggedType"

.field static final BRIGHTNESS:Ljava/lang/String; = "brightness"

.field static final BRIGHTNESS_MODE:Ljava/lang/String; = "brightnessMode"

.field static final VERSION_CODE:Ljava/lang/String; = "versionCode"

.field static final VERSION_NAME:Ljava/lang/String; = "versionName"

.field static final WIFI_CONNECTED:Ljava/lang/String; = "wifiConnected"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
