.class public Lcom/samsung/android/server/pm/scan/CacheCorruptionChecker;
.super Ljava/lang/Object;
.source "CacheCorruptionChecker.java"


# static fields
.field public static final KEY_SCAN_STARTED:Ljava/lang/String; = "key_scan_started"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deletePackageCaches(Ljava/io/File;)V
    .registers 2

    if-eqz p0, :cond_a

    const-string v0, "Delete package caches due to corruption"

    .line 31
    invoke-static {v0}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    .line 32
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    :cond_a
    return-void
.end method

.method public static isPackageCacheCorrupted(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "key_scan_started"

    const/4 v1, 0x0

    .line 22
    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/pm/PmSharedPreferences;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setPackageScanStarted(Landroid/content/Context;Z)V
    .registers 3

    const-string v0, "key_scan_started"

    .line 26
    invoke-static {p0, v0, p1}, Lcom/samsung/android/server/pm/PmSharedPreferences;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
