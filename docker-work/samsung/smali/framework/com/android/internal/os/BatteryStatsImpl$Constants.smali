.class public final Lcom/android/internal/os/BatteryStatsImpl$Constants;
.super Landroid/database/ContentObserver;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Constants"
.end annotation


# static fields
.field private static final blacklist DEFAULT_BATTERY_CHARGED_DELAY_MS:I = 0xdbba0

.field private static final greylist-max-o DEFAULT_BATTERY_LEVEL_COLLECTION_DELAY_MS:J = 0x493e0L

.field private static final greylist-max-o DEFAULT_EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J = 0x927c0L

.field private static final greylist-max-o DEFAULT_KERNEL_UID_READERS_THROTTLE_TIME:J = 0x3e8L

.field private static final blacklist DEFAULT_MAX_HISTORY_BUFFER_KB:I = 0x80

.field private static final blacklist DEFAULT_MAX_HISTORY_BUFFER_LOW_RAM_DEVICE_KB:I = 0x40

.field private static final blacklist DEFAULT_MAX_HISTORY_FILES:I = 0x20

.field private static final blacklist DEFAULT_MAX_HISTORY_FILES_LOW_RAM_DEVICE:I = 0x40

.field private static final blacklist DEFAULT_PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J = 0xea60L

.field private static final greylist-max-o DEFAULT_TRACK_CPU_ACTIVE_CLUSTER_TIME:Z = true

.field private static final greylist-max-o DEFAULT_UID_REMOVE_DELAY_MS:J = 0x493e0L

.field public static final blacklist KEY_BATTERY_CHARGED_DELAY_MS:Ljava/lang/String; = "battery_charged_delay_ms"

.field public static final greylist-max-o KEY_BATTERY_LEVEL_COLLECTION_DELAY_MS:Ljava/lang/String; = "battery_level_collection_delay_ms"

.field public static final greylist-max-o KEY_EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:Ljava/lang/String; = "external_stats_collection_rate_limit_ms"

.field public static final greylist-max-o KEY_KERNEL_UID_READERS_THROTTLE_TIME:Ljava/lang/String; = "kernel_uid_readers_throttle_time"

.field public static final blacklist KEY_MAX_HISTORY_BUFFER_KB:Ljava/lang/String; = "max_history_buffer_kb"

.field public static final blacklist KEY_MAX_HISTORY_FILES:Ljava/lang/String; = "max_history_files"

.field public static final blacklist KEY_PROC_STATE_CHANGE_COLLECTION_DELAY_MS:Ljava/lang/String; = "procstate_change_collection_delay_ms"

.field public static final greylist-max-o KEY_PROC_STATE_CPU_TIMES_READ_DELAY_MS:Ljava/lang/String; = "proc_state_cpu_times_read_delay_ms"

.field public static final greylist-max-o KEY_TRACK_CPU_ACTIVE_CLUSTER_TIME:Ljava/lang/String; = "track_cpu_active_cluster_time"

.field public static final greylist-max-o KEY_UID_REMOVE_DELAY_MS:Ljava/lang/String; = "uid_remove_delay_ms"


# instance fields
.field public blacklist BATTERY_CHARGED_DELAY_MS:I

.field public greylist-max-o BATTERY_LEVEL_COLLECTION_DELAY_MS:J

.field public greylist-max-o EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

.field public greylist-max-o KERNEL_UID_READERS_THROTTLE_TIME:J

.field public blacklist MAX_HISTORY_BUFFER:I

.field public blacklist MAX_HISTORY_FILES:I

.field public blacklist PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

.field public greylist-max-o TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

.field public greylist-max-o UID_REMOVE_DELAY_MS:J

.field private final greylist-max-o mParser:Landroid/util/KeyValueListParser;

.field private greylist-max-o mResolver:Landroid/content/ContentResolver;

.field final synthetic blacklist this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Handler;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 19496
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    .line 19497
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 19478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

    .line 19482
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->UID_REMOVE_DELAY_MS:J

    .line 19483
    const-wide/32 v2, 0x927c0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

    .line 19485
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->BATTERY_LEVEL_COLLECTION_DELAY_MS:J

    .line 19487
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

    .line 19491
    const v0, 0xdbba0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->BATTERY_CHARGED_DELAY_MS:I

    .line 19494
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 19498
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 19499
    const/16 v0, 0x40

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->MAX_HISTORY_FILES:I

    .line 19500
    const/high16 v0, 0x10000

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    goto :goto_3e

    .line 19502
    :cond_36
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->MAX_HISTORY_FILES:I

    .line 19503
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    .line 19505
    :goto_3e
    return-void
.end method

.method private blacklist updateBatteryChargedDelayMsLocked()V
    .registers 6

    .line 19606
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "battery_charging_state_update_delay"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 19610
    .local v0, "delay":I
    if-ltz v0, :cond_d

    move v1, v0

    goto :goto_18

    :cond_d
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const v2, 0xdbba0

    const-string v3, "battery_charged_delay_ms"

    invoke-virtual {v1, v3, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_18
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->BATTERY_CHARGED_DELAY_MS:I

    .line 19614
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$fgetmDeferSetCharging(Lcom/android/internal/os/BatteryStatsImpl;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 19615
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$fgetmDeferSetCharging(Lcom/android/internal/os/BatteryStatsImpl;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19616
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$fgetmDeferSetCharging(Lcom/android/internal/os/BatteryStatsImpl;)Ljava/lang/Runnable;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->BATTERY_CHARGED_DELAY_MS:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19618
    :cond_47
    return-void
.end method

.method private greylist-max-o updateConstants()V
    .registers 8

    .line 19564
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 19566
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "battery_stats_constants"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_10} :catch_14
    .catchall {:try_start_3 .. :try_end_10} :catchall_11

    .line 19572
    goto :goto_1c

    .line 19601
    :catchall_11
    move-exception v1

    goto/16 :goto_9a

    .line 19568
    :catch_14
    move-exception v1

    .line 19571
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_15
    const-string v2, "BatteryStatsImpl"

    const-string v3, "Bad batterystats settings"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19574
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1c
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "track_cpu_active_cluster_time"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

    .line 19576
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "kernel_uid_readers_throttle_time"

    const-wide/16 v5, 0x3e8

    .line 19577
    invoke-virtual {v3, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 19576
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateKernelUidReadersThrottleTime(JJ)V

    .line 19579
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "uid_remove_delay_ms"

    .line 19580
    const-wide/32 v3, 0x493e0

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 19579
    invoke-direct {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateUidRemoveDelay(J)V

    .line 19581
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "external_stats_collection_rate_limit_ms"

    const-wide/32 v5, 0x927c0

    invoke-virtual {v1, v2, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

    .line 19584
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "battery_level_collection_delay_ms"

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->BATTERY_LEVEL_COLLECTION_DELAY_MS:J

    .line 19587
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "procstate_change_collection_delay_ms"

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

    .line 19591
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "max_history_files"

    .line 19592
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    const/16 v4, 0x40

    if-eqz v3, :cond_78

    .line 19593
    move v3, v4

    goto :goto_7a

    .line 19594
    :cond_78
    const/16 v3, 0x20

    .line 19591
    :goto_7a
    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->MAX_HISTORY_FILES:I

    .line 19595
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "max_history_buffer_kb"

    .line 19596
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 19597
    goto :goto_8d

    .line 19598
    :cond_8b
    const/16 v4, 0x80

    .line 19595
    :goto_8d
    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    .line 19600
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateBatteryChargedDelayMsLocked()V

    .line 19601
    monitor-exit v0

    .line 19602
    return-void

    .line 19601
    :goto_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_15 .. :try_end_9b} :catchall_11

    throw v1
.end method

.method private blacklist updateDisplayHighRefreshRateLocked()V
    .registers 4

    .line 19636
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "refresh_rate_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 19639
    .local v0, "hrrMode":I
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mSubScreenState:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteSubDisplayHighRefreshRateLocked(II)V

    .line 19640
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteDisplayHighRefreshRateLocked(I)V
    :try_end_14
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_14} :catch_15

    .line 19643
    .end local v0    # "hrrMode":I
    goto :goto_19

    .line 19641
    :catch_15
    move-exception v0

    .line 19642
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 19644
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_19
    return-void
.end method

.method private greylist-max-o updateKernelUidReadersThrottleTime(JJ)V
    .registers 8
    .param p1, "oldTimeMs"    # J
    .param p3, "newTimeMs"    # J

    .line 19649
    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    .line 19650
    cmp-long v0, p1, p3

    if-eqz v0, :cond_2a

    .line 19651
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->setThrottle(J)V

    .line 19652
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->setThrottle(J)V

    .line 19653
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->setThrottle(J)V

    .line 19654
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    .line 19655
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->setThrottle(J)V

    .line 19657
    :cond_2a
    return-void
.end method

.method private blacklist updateScreenAutoBrightnessModeLocked()V
    .registers 3

    .line 19624
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 19627
    .local v0, "brightnessMode":I
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenAutoBrightnessLocked(I)V
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    .line 19630
    .end local v0    # "brightnessMode":I
    goto :goto_12

    .line 19628
    :catch_e
    move-exception v0

    .line 19629
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 19631
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_12
    return-void
.end method

.method private greylist-max-o updateUidRemoveDelay(J)V
    .registers 4
    .param p1, "newTimeMs"    # J

    .line 19661
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->UID_REMOVE_DELAY_MS:J

    .line 19662
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->clearPendingRemovedUidsLocked()V

    .line 19663
    return-void
.end method


# virtual methods
.method public greylist-max-o dumpLocked(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 19666
    const-string/jumbo v0, "track_cpu_active_cluster_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19667
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 19668
    const-string v1, "kernel_uid_readers_throttle_time"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19669
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 19670
    const-string v1, "external_stats_collection_rate_limit_ms"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19671
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 19672
    const-string v1, "battery_level_collection_delay_ms"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19673
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->BATTERY_LEVEL_COLLECTION_DELAY_MS:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 19674
    const-string v1, "procstate_change_collection_delay_ms"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19675
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 19676
    const-string v1, "max_history_files"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19677
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->MAX_HISTORY_FILES:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 19678
    const-string v1, "max_history_buffer_kb"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19679
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 19680
    const-string v1, "battery_charged_delay_ms"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19681
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->BATTERY_CHARGED_DELAY_MS:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 19682
    return-void
.end method

.method public whitelist onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 19532
    const-string v0, "battery_charging_state_update_delay"

    .line 19533
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 19532
    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 19535
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 19536
    :try_start_f
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateBatteryChargedDelayMsLocked()V

    .line 19537
    monitor-exit v0

    .line 19538
    return-void

    .line 19537
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_14

    throw v1

    .line 19542
    :cond_17
    const-string v0, "screen_brightness_mode"

    .line 19543
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 19542
    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 19545
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 19546
    :try_start_26
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateScreenAutoBrightnessModeLocked()V

    .line 19547
    monitor-exit v0

    .line 19548
    return-void

    .line 19547
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2b

    throw v1

    .line 19551
    :cond_2e
    const-string v0, "refresh_rate_mode"

    .line 19552
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 19551
    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 19554
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 19555
    :try_start_3d
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateDisplayHighRefreshRateLocked()V

    .line 19556
    monitor-exit v0

    .line 19557
    return-void

    .line 19556
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_42

    throw v1

    .line 19560
    :cond_45
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateConstants()V

    .line 19561
    return-void
.end method

.method public greylist-max-o startObserving(Landroid/content/ContentResolver;)V
    .registers 5
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 19508
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 19509
    nop

    .line 19510
    const-string v0, "battery_stats_constants"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 19509
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 19512
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 19513
    const-string v2, "battery_charging_state_update_delay"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 19512
    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 19517
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 19518
    const-string v2, "screen_brightness_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 19517
    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 19521
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 19522
    const-string v2, "refresh_rate_mode"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 19521
    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 19525
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateConstants()V

    .line 19526
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateScreenAutoBrightnessModeLocked()V

    .line 19527
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateDisplayHighRefreshRateLocked()V

    .line 19528
    return-void
.end method
