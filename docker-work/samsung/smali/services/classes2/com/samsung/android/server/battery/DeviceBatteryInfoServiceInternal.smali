.class public interface abstract Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;
.super Ljava/lang/Object;
.source "DeviceBatteryInfoServiceInternal.java"


# virtual methods
.method public abstract addBatteryInfo(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V
.end method

.method public abstract containsBatteryInfo(Ljava/lang/String;)Z
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
.end method

.method public abstract getDeviceBatteryInfos()[Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
.end method

.method public abstract registerDeviceBatteryInfoChanged(Ljava/lang/String;)V
.end method

.method public abstract removeBatteryInfo(Ljava/lang/String;)V
.end method

.method public abstract sendBroadcast(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V
.end method

.method public abstract systemServicesReady(Landroid/content/Context;)V
.end method

.method public abstract unRegisterDeviceBatteryInfoChanged(Ljava/lang/String;)V
.end method
