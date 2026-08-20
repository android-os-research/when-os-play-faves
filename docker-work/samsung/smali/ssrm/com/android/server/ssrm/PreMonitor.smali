.class public final Lcom/android/server/ssrm/PreMonitor;
.super Ljava/lang/Object;
.source "PreMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/PreMonitor$SIOPTable;,
        Lcom/android/server/ssrm/PreMonitor$BrightnessController;
    }
.end annotation


# static fields
.field static AP_TEMP_1ST_STEP:I = 0x0

.field static AP_TEMP_2ND_STEP:I = 0x0

.field static AP_TEMP_3RD_STEP:I = 0x0

.field static AP_TEMP_4TH_STEP:I = 0x0

.field static AP_TEMP_5TH_STEP:I = 0x0

.field static BRIGHTNESS_LIMIT:I = 0x0

.field static BRIGHTNESS_PATH:Ljava/lang/String; = null

.field static CPU_LITTLE_MAXLIMIT:I = 0x0

.field static CPU_MAXLIMIT_1ST:I = 0x0

.field static CPU_MAXLIMIT_2ND:I = 0x0

.field static CPU_MAXLIMIT_3RD:I = 0x0

.field static CPU_MAXLIMIT_4TH:I = 0x0

.field static CPU_MAXLIMIT_5TH:I = 0x0

.field static CPU_OVERHEAT_LIMIT:I = 0x0

.field private static LOCAL_TEST:Z = false

.field static final PROPERTY_PDA:Ljava/lang/String; = "ro.build.PDA"

.field private static PreMonitorlog:Lcom/android/server/ssrm/CircularBuffer; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/ssrm/CircularBuffer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RUT_DATABASE_PATH:Ljava/lang/String; = "/data/system/rut.db"

.field private static final SYSFS_CHARGING_CURRENT:Ljava/lang/String; = "/sys/class/power_supply/battery/siop_level"

.field private static final TAG:Ljava/lang/String;

.field static db:Lcom/android/server/ssrm/BinaryVersionDatabase;

.field static final mDisableCoolDownFile:Ljava/io/File;

.field static mIsPreMonitoringEnabled:Z

.field static mLastCpuMaxLimit:I

.field static mOverLimitPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

.field static mSysfs:Lcom/samsung/android/os/SemDvfsManager;

.field static sApTemperature:I

.field static sArmDVFSHelper:Lcom/samsung/android/os/SemDvfsManager;

.field static sArmDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

.field static sArmLittleDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

.field static sBatteryTemperature:I

.field static sBootComplete:Z

.field static sContext:Landroid/content/Context;

.field static sGpuDVFSHelper:Lcom/samsung/android/os/SemDvfsManager;

.field static sSiopEnabled:Z

.field static sSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smSetPreMonitorLog()V
    .registers 0

    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->SetPreMonitorLog()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 32
    const-class v0, Lcom/android/server/ssrm/PreMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/PreMonitor;->TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/PreMonitor;->sSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    .line 38
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/ssrm/PreMonitor;->sSiopEnabled:Z

    .line 40
    sput-boolean v1, Lcom/android/server/ssrm/PreMonitor;->LOCAL_TEST:Z

    .line 42
    const/4 v2, -0x1

    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 44
    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 46
    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 48
    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_4TH:I

    .line 50
    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_5TH:I

    .line 52
    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_LITTLE_MAXLIMIT:I

    .line 54
    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    .line 56
    const/16 v3, 0x1ae

    sput v3, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    .line 58
    const/16 v3, 0x1c2

    sput v3, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_2ND_STEP:I

    .line 60
    const/16 v3, 0x1d6

    sput v3, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_3RD_STEP:I

    .line 62
    const/16 v3, 0x1ea

    sput v3, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_4TH_STEP:I

    .line 64
    const/16 v3, 0x1fe

    sput v3, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_5TH_STEP:I

    .line 66
    sput v2, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    .line 68
    new-instance v3, Lcom/android/server/ssrm/CircularBuffer;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Lcom/android/server/ssrm/CircularBuffer;-><init>(I)V

    sput-object v3, Lcom/android/server/ssrm/PreMonitor;->PreMonitorlog:Lcom/android/server/ssrm/CircularBuffer;

    .line 72
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/ssrm_v2.cooldown_disable"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/android/server/ssrm/PreMonitor;->mDisableCoolDownFile:Ljava/io/File;

    .line 269
    sput-object v0, Lcom/android/server/ssrm/PreMonitor;->sArmDVFSHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 271
    sput-object v0, Lcom/android/server/ssrm/PreMonitor;->sGpuDVFSHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 273
    sput-object v0, Lcom/android/server/ssrm/PreMonitor;->mSysfs:Lcom/samsung/android/os/SemDvfsManager;

    .line 343
    sput v1, Lcom/android/server/ssrm/PreMonitor;->sBatteryTemperature:I

    .line 357
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getBrightnessPath()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_PATH:Ljava/lang/String;

    .line 392
    sput-object v0, Lcom/android/server/ssrm/PreMonitor;->sArmDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 394
    sput-object v0, Lcom/android/server/ssrm/PreMonitor;->sArmLittleDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 396
    sput-object v0, Lcom/android/server/ssrm/PreMonitor;->mOverLimitPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 398
    sput-boolean v1, Lcom/android/server/ssrm/PreMonitor;->mIsPreMonitoringEnabled:Z

    .line 400
    sput v2, Lcom/android/server/ssrm/PreMonitor;->mLastCpuMaxLimit:I

    .line 475
    sput v1, Lcom/android/server/ssrm/PreMonitor;->sApTemperature:I

    .line 505
    sput-boolean v1, Lcom/android/server/ssrm/PreMonitor;->sBootComplete:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static SetPreMonitorLog()V
    .registers 15

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 82
    .local v0, "time":J
    const-string v2, "yyyy-MM-dd kk:mm:ss "

    invoke-static {v2, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    .local v2, "strTime":Ljava/lang/String;
    sget-object v3, Lcom/android/server/ssrm/PreMonitor;->TAG:Ljava/lang/String;

    const-string v4, "/sys/class/power_supply/battery/siop_level"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "strCharging":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getBatteryTemperature()I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    .line 85
    .local v4, "strBat":I
    sget v5, Lcom/android/server/ssrm/PreMonitor;->sApTemperature:I

    div-int/lit8 v5, v5, 0xa

    .line 86
    .local v5, "strAP":I
    sget-object v6, Lcom/android/server/ssrm/PreMonitor;->mSysfs:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v6, :cond_2e

    .line 87
    sget-object v6, Lcom/android/server/ssrm/PreMonitor;->sContext:Landroid/content/Context;

    const/16 v7, -0x3e7

    const-string v8, "SSRM_SYSFS_CHECK"

    invoke-static {v6, v8, v7}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v6

    sput-object v6, Lcom/android/server/ssrm/PreMonitor;->mSysfs:Lcom/samsung/android/os/SemDvfsManager;

    .line 90
    :cond_2e
    sget-object v6, Lcom/android/server/ssrm/PreMonitor;->mSysfs:Lcom/samsung/android/os/SemDvfsManager;

    const v7, 0x12001002

    invoke-virtual {v6, v7}, Lcom/samsung/android/os/SemDvfsManager;->sysfsRead(I)Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, "strCpuMax":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getBrightness()Ljava/lang/String;

    move-result-object v7

    .line 93
    .local v7, "strBrightness":Ljava/lang/String;
    sget-object v8, Lcom/android/server/ssrm/PreMonitor;->PreMonitorlog:Lcom/android/server/ssrm/CircularBuffer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "[PRE] [AP :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string v12, "%4d"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "][BAT :"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-array v11, v10, [Ljava/lang/Object;

    .line 94
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v11, v13

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "][CHG : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v3, v11, v13

    .line 95
    const-string v12, "%4s"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "][CF :"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v6, v11, v13

    .line 96
    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "][LB :"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v13

    .line 97
    invoke-static {v12, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 93
    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/CircularBuffer;->put(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method static bootComplete()V
    .registers 2

    .line 508
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ssrm/PreMonitor;->sBootComplete:Z

    .line 510
    sget-boolean v0, Lcom/android/server/ssrm/PreMonitor;->mIsPreMonitoringEnabled:Z

    if-eqz v0, :cond_31

    .line 511
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ssrm/PreMonitor$3;

    invoke-direct {v1}, Lcom/android/server/ssrm/PreMonitor$3;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 550
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 552
    sget v0, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_31

    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_31

    .line 553
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 556
    .local v0, "brightness":I
    invoke-static {v0}, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->limitMaxBrightness(I)V

    .line 560
    .end local v0    # "brightness":I
    :cond_31
    sget-boolean v0, Lcom/android/server/ssrm/PreMonitor;->sSiopEnabled:Z

    if-nez v0, :cond_36

    .line 561
    return-void

    .line 564
    :cond_36
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->notifyMaxBrightnessToSettings()V

    .line 566
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ssrm/PreMonitor$4;

    invoke-direct {v1}, Lcom/android/server/ssrm/PreMonitor$4;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 596
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 597
    return-void
.end method

.method private static getApThermistorPath()Ljava/lang/String;
    .registers 6

    .line 485
    const-string v0, "/sys/class/sec/sec-ap-thermistor/temperature"

    const-string v1, "/sys/class/sec/sec-thermistor/temperature"

    const-string v2, "/sys/devices/platform/sec-thermistor/temperature"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "candidates":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_29

    aget-object v3, v0, v2

    .line 492
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 493
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 494
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 491
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "f":Ljava/io/File;
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 498
    :cond_29
    const/4 v1, 0x0

    return-object v1
.end method

.method static getBatteryTemperature()I
    .registers 1

    .line 502
    sget v0, Lcom/android/server/ssrm/PreMonitor;->sBatteryTemperature:I

    return v0
.end method

.method static getBrightness()Ljava/lang/String;
    .registers 4

    .line 360
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_PATH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "raw":Ljava/lang/String;
    if-eqz v0, :cond_25

    .line 362
    const-string v1, "4"

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 364
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_25

    .line 365
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 368
    :cond_25
    return-object v0
.end method

.method static getBrightnessPath()Ljava/lang/String;
    .registers 6

    .line 372
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_PATH:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 373
    return-object v0

    .line 375
    :cond_5
    const-string v0, "/sys/class/leds/lcd-backlight/brightness"

    const-string v1, "/sys/class/backlight/panel0-backlight/brightness"

    const-string v2, "/sys/class/backlight/panel/brightness"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "candidates":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_30

    aget-object v3, v0, v2

    .line 382
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 384
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_PATH:Ljava/lang/String;

    .line 385
    return-object v1

    .line 381
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "f":Ljava/io/File;
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 389
    :cond_30
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getDuration()I
    .registers 1

    .line 113
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->sSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    if-nez v0, :cond_7

    .line 114
    const/16 v0, 0x7d0

    return v0

    .line 116
    :cond_7
    iget v0, v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->duration:I

    return v0
.end method

.method public static getLastBatteryTemperature()I
    .registers 1

    .line 109
    sget v0, Lcom/android/server/ssrm/PreMonitor;->sBatteryTemperature:I

    return v0
.end method

.method public static getPreMonitorLog()Lcom/android/server/ssrm/CircularBuffer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/ssrm/CircularBuffer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->PreMonitorlog:Lcom/android/server/ssrm/CircularBuffer;

    return-object v0
.end method

.method static improveOverheatingInFota()V
    .registers 2

    .line 403
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ssrm/PreMonitor;->mIsPreMonitoringEnabled:Z

    .line 404
    sget v0, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 405
    invoke-static {v0}, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->limitMaxBrightness(I)V

    .line 407
    :cond_b
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ssrm/PreMonitor$2;

    invoke-direct {v1}, Lcom/android/server/ssrm/PreMonitor$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 472
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 473
    return-void
.end method

.method static initialize(Landroid/content/Context;)V
    .registers 17
    .param p0, "context"    # Landroid/content/Context;

    .line 120
    sput-object p0, Lcom/android/server/ssrm/PreMonitor;->sContext:Landroid/content/Context;

    .line 121
    invoke-static/range {p0 .. p0}, Lcom/android/server/ssrm/BinaryVersionDatabase;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/BinaryVersionDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/PreMonitor;->db:Lcom/android/server/ssrm/BinaryVersionDatabase;

    .line 123
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_DAVINCIL:Z

    if-eqz v0, :cond_1f

    .line 124
    new-instance v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    const/16 v2, -0x46

    const v3, 0x1e26c0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v7, 0x3c

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/ssrm/PreMonitor$SIOPTable;-><init>(IIIIZI)V

    sput-object v0, Lcom/android/server/ssrm/PreMonitor;->sSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    goto :goto_35

    .line 125
    :cond_1f
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYONDL:Z

    if-eqz v0, :cond_35

    .line 126
    new-instance v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    const/16 v2, -0x46

    const v3, 0x1bc560

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v7, 0x3c

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/ssrm/PreMonitor$SIOPTable;-><init>(IIIIZI)V

    sput-object v0, Lcom/android/server/ssrm/PreMonitor;->sSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    .line 129
    :cond_35
    :goto_35
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->CHIP_EXYNOS2200:Z

    const/16 v1, 0x7e

    if-eqz v0, :cond_55

    .line 130
    const v0, 0x148200

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 131
    const v2, 0x119400

    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 132
    const v2, 0xea600

    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 133
    sput v1, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    .line 134
    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_LITTLE_MAXLIMIT:I

    .line 135
    const v0, 0x203a00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    goto/16 :goto_29a

    .line 136
    :cond_55
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->CHIP_SDM8450:Z

    const v2, 0x101d00

    if-eqz v0, :cond_71

    .line 137
    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 138
    const v0, 0xe5b00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 139
    const v0, 0xd9f80

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 140
    sput v1, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    .line 141
    const v0, 0x211b00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    goto/16 :goto_29a

    .line 142
    :cond_71
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->CHIP_EXYNOS2100:Z

    const/16 v1, 0xa9

    const v3, 0x1174c0

    const v4, 0x130b00

    if-eqz v0, :cond_8f

    .line 143
    sput v4, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 144
    sput v3, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 145
    const v0, 0xfde80

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 146
    sput v1, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    .line 147
    const v0, 0x215340

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    goto/16 :goto_29a

    .line 148
    :cond_8f
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->CHIP_SDM8350:Z

    const v5, 0x106800

    const v6, 0x122a00

    const/16 v7, 0x1c2

    const/16 v8, 0x1ae

    const/16 v9, 0x19a

    if-eqz v0, :cond_dc

    .line 149
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_B2Q:Z

    const v2, 0x20d000

    const v3, 0x189c00

    if-nez v0, :cond_c3

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_Q2Q:Z

    if-nez v0, :cond_c3

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_R9Q:Z

    if-eqz v0, :cond_b2

    goto :goto_c3

    .line 160
    :cond_b2
    const v0, 0x13ec00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 161
    sput v6, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 162
    sput v5, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 163
    sput v1, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    .line 164
    sput v3, Lcom/android/server/ssrm/PreMonitor;->CPU_LITTLE_MAXLIMIT:I

    .line 165
    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    goto/16 :goto_29a

    .line 150
    :cond_c3
    :goto_c3
    sput v9, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    .line 151
    sput v8, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_2ND_STEP:I

    .line 152
    sput v7, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_3RD_STEP:I

    .line 153
    sput v6, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 154
    sput v5, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 155
    const v0, 0xd0980

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 156
    const/16 v0, 0x6d

    sput v0, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    .line 157
    sput v3, Lcom/android/server/ssrm/PreMonitor;->CPU_LITTLE_MAXLIMIT:I

    .line 158
    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_OVERHEAT_LIMIT:I

    goto/16 :goto_29a

    .line 167
    :cond_dc
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_C1S:Z

    if-nez v0, :cond_28b

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_C2S:Z

    if-nez v0, :cond_28b

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_X1S:Z

    if-nez v0, :cond_28b

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_Y2S:Z

    if-nez v0, :cond_28b

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_Z3S:Z

    if-eqz v0, :cond_f2

    goto/16 :goto_28b

    .line 172
    :cond_f2
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_C1Q:Z

    const v1, 0x156300

    if-nez v0, :cond_284

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_C2Q:Z

    if-nez v0, :cond_284

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_X1Q:Z

    if-nez v0, :cond_284

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_Y2Q:Z

    if-nez v0, :cond_284

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_Z3Q:Z

    if-nez v0, :cond_284

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_R8q:Z

    if-eqz v0, :cond_10f

    goto/16 :goto_284

    .line 177
    :cond_10f
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYONDL:Z

    const v10, 0x163780

    if-nez v0, :cond_277

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_DAVINCIL:Z

    if-eqz v0, :cond_11c

    goto/16 :goto_277

    .line 181
    :cond_11c
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_F62:Z

    if-eqz v0, :cond_135

    .line 182
    sput v9, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    .line 183
    sput v8, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_2ND_STEP:I

    .line 184
    sput v7, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_3RD_STEP:I

    .line 185
    sput v10, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 186
    const v0, 0x1506d0

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 187
    sput v4, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 188
    const/16 v0, 0x8e

    sput v0, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    goto/16 :goto_29a

    .line 189
    :cond_135
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYONDQ:Z

    const v11, 0x1a1300

    const v12, 0x1d4c00

    if-nez v0, :cond_26d

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_WINNERQ:Z

    if-nez v0, :cond_26d

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_DAVINCIQ:Z

    if-nez v0, :cond_26d

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A82:Z

    if-eqz v0, :cond_14d

    goto/16 :goto_26d

    .line 194
    :cond_14d
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BLOOMQ:Z

    const/16 v13, 0x8a

    const/16 v14, 0x1f4

    const/16 v15, 0x1e0

    if-eqz v0, :cond_175

    .line 195
    sput v9, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    .line 196
    sput v8, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_2ND_STEP:I

    .line 197
    sput v7, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_3RD_STEP:I

    .line 198
    sput v15, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_4TH_STEP:I

    .line 199
    sput v14, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_5TH_STEP:I

    .line 200
    sput v12, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 201
    sput v11, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 202
    const v0, 0x16da00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 203
    const v0, 0x13a100

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_4TH:I

    .line 204
    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_5TH:I

    .line 205
    sput v13, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    goto/16 :goto_29a

    .line 206
    :cond_175
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_TOP:Z

    if-nez v0, :cond_250

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BLOOMxq:Z

    if-eqz v0, :cond_17f

    goto/16 :goto_250

    .line 218
    :cond_17f
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A60q:Z

    const v2, 0x14cd00

    if-eqz v0, :cond_194

    .line 219
    const v0, 0x172500

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 220
    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 221
    const v0, 0x127500

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    goto/16 :goto_29a

    .line 222
    :cond_194
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A52xq:Z

    const/16 v5, 0x95

    if-eqz v0, :cond_1a7

    .line 223
    const v0, 0x17bb00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 224
    sput v1, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 225
    sput v4, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 226
    sput v5, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    goto/16 :goto_29a

    .line 227
    :cond_1a7
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A8s:Z

    if-eqz v0, :cond_1c5

    .line 228
    const/16 v0, 0x168

    sput v0, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    .line 229
    const/16 v0, 0x17c

    sput v0, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_2ND_STEP:I

    .line 230
    const/16 v0, 0x190

    sput v0, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_3RD_STEP:I

    .line 231
    sput v2, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 232
    const v0, 0x114900

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 233
    const v0, 0xef100

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    goto/16 :goto_29a

    .line 234
    :cond_1c5
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_M31s:Z

    if-eqz v0, :cond_1e7

    .line 235
    const/16 v0, 0x15e

    sput v0, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    .line 236
    const/16 v0, 0x172

    sput v0, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_2ND_STEP:I

    .line 237
    const/16 v0, 0x186

    sput v0, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_3RD_STEP:I

    .line 238
    const v0, 0x17cdc0

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 239
    sput v10, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 240
    const v0, 0x14a140

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 241
    const/16 v0, 0xc7

    sput v0, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    goto/16 :goto_29a

    .line 242
    :cond_1e7
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_M33X:Z

    if-eqz v0, :cond_1fc

    .line 243
    const v0, 0x18e700

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 244
    const v0, 0x177000

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 245
    const v0, 0x15f900

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    goto/16 :goto_29a

    .line 246
    :cond_1fc
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A32XJPN:Z

    if-eqz v0, :cond_213

    .line 247
    const v0, 0x176830

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 248
    const v0, 0x15a310

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 249
    const v0, 0x137090

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 250
    sput v5, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    goto/16 :goto_29a

    .line 251
    :cond_213
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A32:Z

    if-eqz v0, :cond_228

    .line 252
    const v0, 0x176060

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 253
    const v0, 0x1604b8

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 254
    const v0, 0x13c298

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    goto/16 :goto_29a

    .line 255
    :cond_228
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_R8s:Z

    if-eqz v0, :cond_23c

    .line 256
    const v0, 0x16d252

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 257
    const v0, 0x158512

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 258
    const v0, 0x142d67

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    goto :goto_29a

    .line 259
    :cond_23c
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A10eu:Z

    if-eqz v0, :cond_29a

    .line 260
    sput v9, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    .line 261
    sput v8, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_2ND_STEP:I

    .line 262
    sput v7, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_3RD_STEP:I

    .line 263
    const v0, 0x14a140

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 264
    sput v3, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 265
    sput v3, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    goto :goto_29a

    .line 207
    :cond_250
    :goto_250
    sput v9, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    .line 208
    sput v8, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_2ND_STEP:I

    .line 209
    sput v7, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_3RD_STEP:I

    .line 210
    sput v15, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_4TH_STEP:I

    .line 211
    sput v14, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_5TH_STEP:I

    .line 212
    const v0, 0x1e2d00

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 213
    const v0, 0x1aa900

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 214
    sput v1, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 215
    sput v6, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_4TH:I

    .line 216
    sput v5, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_5TH:I

    .line 217
    sput v13, Lcom/android/server/ssrm/PreMonitor;->BRIGHTNESS_LIMIT:I

    goto :goto_29a

    .line 191
    :cond_26d
    :goto_26d
    const v0, 0x208500

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 192
    sput v12, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 193
    sput v11, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    goto :goto_29a

    .line 178
    :cond_277
    :goto_277
    const v0, 0x1bc560

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 179
    const v0, 0x196400

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 180
    sput v10, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    goto :goto_29a

    .line 174
    :cond_284
    :goto_284
    sput v1, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 175
    sput v6, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 176
    sput v5, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    goto :goto_29a

    .line 169
    :cond_28b
    :goto_28b
    const v0, 0x1acee8

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    .line 170
    const v0, 0x186879

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    .line 171
    const v0, 0x1693d6

    sput v0, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    .line 267
    :cond_29a
    :goto_29a
    return-void
.end method

.method public static isSiopEnabled()Z
    .registers 1

    .line 105
    sget-boolean v0, Lcom/android/server/ssrm/PreMonitor;->sSiopEnabled:Z

    return v0
.end method

.method public static run()V
    .registers 7

    .line 280
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/rut.db"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, "rutFile":Ljava/io/File;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->updateBatteryTemperature()V

    .line 282
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getBatteryTemperature()I

    move-result v1

    .line 283
    .local v1, "batTemp":I
    sget-object v2, Lcom/android/server/ssrm/PreMonitor;->db:Lcom/android/server/ssrm/BinaryVersionDatabase;

    if-eqz v2, :cond_45

    if-lez v1, :cond_45

    .line 284
    invoke-virtual {v2}, Lcom/android/server/ssrm/BinaryVersionDatabase;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "version":Ljava/lang/String;
    const-string v3, "ro.build.PDA"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 286
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_31

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 287
    :cond_31
    sget-object v4, Lcom/android/server/ssrm/PreMonitor;->TAG:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "/sys/class/power_supply/battery/siop_level"

    invoke-static {v4, v6, v5}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;I)V

    .line 288
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->improveOverheatingInFota()V

    .line 290
    :cond_3c
    sget-object v4, Lcom/android/server/ssrm/PreMonitor;->db:Lcom/android/server/ssrm/BinaryVersionDatabase;

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/server/ssrm/BinaryVersionDatabase;->setVersion(Ljava/lang/String;)V

    .line 294
    .end local v2    # "version":Ljava/lang/String;
    :cond_45
    sget-object v2, Lcom/android/server/ssrm/PreMonitor;->sSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    if-nez v2, :cond_4a

    .line 295
    return-void

    .line 297
    :cond_4a
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/ssrm/PreMonitor$1;

    invoke-direct {v3}, Lcom/android/server/ssrm/PreMonitor$1;-><init>()V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 340
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 341
    return-void
.end method

.method static updateApTemperature()V
    .registers 2

    .line 478
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getApThermistorPath()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 480
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/ssrm/PreMonitor;->sApTemperature:I

    .line 482
    :cond_12
    return-void
.end method

.method static updateBatteryTemperature()V
    .registers 2

    .line 346
    sget-boolean v0, Lcom/android/server/ssrm/PreMonitor;->LOCAL_TEST:Z

    if-eqz v0, :cond_9

    .line 347
    const/16 v0, -0xc8

    sput v0, Lcom/android/server/ssrm/PreMonitor;->sBatteryTemperature:I

    goto :goto_19

    .line 350
    :cond_9
    :try_start_9
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->TAG:Ljava/lang/String;

    const-string v1, "/sys/class/power_supply/battery/temp"

    .line 351
    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/ssrm/PreMonitor;->sBatteryTemperature:I
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_17} :catch_18

    .line 353
    goto :goto_19

    .line 352
    :catch_18
    move-exception v0

    .line 355
    :goto_19
    return-void
.end method
