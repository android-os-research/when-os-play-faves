.class public Lcom/android/server/usage/AppStandbyController$Injector;
.super Ljava/lang/Object;
.source "AppStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field public mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

.field public mAutoRestrictedBucketDelayMs:J

.field public mBatteryManager:Landroid/os/BatteryManager;

.field public mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mBootPhase:I

.field public final mContext:Landroid/content/Context;

.field public mCrossProfileAppsInternal:Landroid/content/pm/CrossProfileAppsInternal;

.field public mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mLooper:Landroid/os/Looper;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPowerManager:Landroid/os/PowerManager;

.field public final mPowerWhitelistedApps:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPowerWhitelistedApps"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mWellbeingApp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 5

    .line 2527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x5265c00

    .line 2518
    iput-wide v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mAutoRestrictedBucketDelayMs:J

    .line 2523
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    const/4 v0, 0x0

    .line 2525
    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mWellbeingApp:Ljava/lang/String;

    .line 2528
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    .line 2529
    iput-object p2, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mLooper:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .registers 3

    .line 2583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    const-string v0, "mPowerWhitelistedApps=["

    .line 2731
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2732
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    monitor-enter v0

    .line 2733
    :try_start_8
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_2a

    const-string v2, "  "

    .line 2734
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2735
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ","

    .line 2736
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 2738
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_34

    const-string p0, "]"

    .line 2739
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2740
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :catchall_34
    move-exception p0

    .line 2738
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public elapsedRealtime()J
    .registers 3

    .line 2579
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getActiveNetworkScorer()Ljava/lang/String;
    .registers 2

    .line 2688
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    const-string v0, "network_score"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkScoreManager;

    .line 2690
    invoke-virtual {p0}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAutoRestrictedBucketDelayMs()J
    .registers 3

    .line 2655
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mAutoRestrictedBucketDelayMs:J

    return-wide v0
.end method

.method public getBootPhase()I
    .registers 1

    .line 2570
    iget p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBootPhase:I

    return p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 2533
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDataSystemDirectory()Ljava/io/File;
    .registers 1

    .line 2646
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public varargs getDeviceConfigProperties([Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;
    .registers 2

    const-string p0, "app_standby"

    .line 2700
    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object p0

    return-object p0
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 1

    .line 2537
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .registers 1

    .line 2663
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public getRunningUserIds()[I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2675
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object p0

    return-object p0
.end method

.method public getValidCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 2709
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 2710
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-ltz v0, :cond_28

    if-eqz v1, :cond_28

    .line 2713
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isCrossProfile()Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mCrossProfileAppsInternal:Landroid/content/pm/CrossProfileAppsInternal;

    .line 2715
    invoke-virtual {v2, p1, v0}, Landroid/content/pm/CrossProfileAppsInternal;->verifyUidHasInteractAcrossProfilePermission(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_28

    .line 2721
    :cond_21
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mCrossProfileAppsInternal:Landroid/content/pm/CrossProfileAppsInternal;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/CrossProfileAppsInternal;->getTargetUserProfiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_28
    :goto_28
    if-ltz v0, :cond_42

    if-nez v1, :cond_42

    .line 2717
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Null package retrieved for UID "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppStandbyController"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    :cond_42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hasExactAlarmPermission(Ljava/lang/String;I)Z
    .registers 3

    .line 2618
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/AlarmManagerInternal;->hasExactAlarmPermission(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isAppIdleEnabled()Z
    .registers 5

    .line 2587
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2589
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "app_standby_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v3, :cond_2d

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    .line 2591
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "adaptive_battery_management_enabled"

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_2d

    move p0, v3

    goto :goto_2e

    :cond_2d
    move p0, v2

    :goto_2e
    if-eqz v0, :cond_33

    if-eqz p0, :cond_33

    goto :goto_34

    :cond_33
    move v3, v2

    :goto_34
    return v3
.end method

.method public isBoundWidgetPackage(Landroid/appwidget/AppWidgetManager;Ljava/lang/String;I)Z
    .registers 4

    .line 2695
    invoke-virtual {p1, p2, p3}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isCharging()Z
    .registers 1

    .line 2597
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBatteryManager:Landroid/os/BatteryManager;

    invoke-virtual {p0}, Landroid/os/BatteryManager;->isCharging()Z

    move-result p0

    return p0
.end method

.method public isDefaultDisplayOn()Z
    .registers 3

    .line 2679
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    .line 2680
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method public isDeviceIdleMode()Z
    .registers 1

    .line 2705
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p0

    return p0
.end method

.method public isNonIdleWhitelisted(Ljava/lang/String;)Z
    .registers 4

    .line 2601
    iget v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBootPhase:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 2604
    :cond_8
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    monitor-enter v0

    .line 2605
    :try_start_b
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    .line 2606
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw p0
.end method

.method public isPackageEphemeral(ILjava/lang/String;)Z
    .registers 3

    .line 2667
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isPackageInstalled(Ljava/lang/String;II)Z
    .registers 6

    .line 2671
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    if-ltz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public isRestrictedBucketEnabled()Z
    .registers 3

    .line 2640
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enable_restricted_bucket"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public isWellbeingPackage(Ljava/lang/String;)Z
    .registers 2

    .line 2614
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mWellbeingApp:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public noteEvent(ILjava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2659
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_7a

    const-string v0, "deviceidle"

    .line 2543
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2542
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    const-string v0, "batterystats"

    .line 2545
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2544
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 2546
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2547
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2549
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerManager:Landroid/os/PowerManager;

    .line 2550
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/BatteryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBatteryManager:Landroid/os/BatteryManager;

    .line 2551
    const-class v0, Landroid/content/pm/CrossProfileAppsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/CrossProfileAppsInternal;

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mCrossProfileAppsInternal:Landroid/content/pm/CrossProfileAppsInternal;

    .line 2553
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerInternal;

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    .line 2555
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    .line 2556
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2557
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-nez v0, :cond_74

    invoke-static {}, Landroid/app/ActivityManager;->isSmallBatteryDevice()Z

    move-result v0

    if-eqz v0, :cond_8a

    :cond_74
    const-wide/32 v0, 0x2932e00

    .line 2558
    iput-wide v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mAutoRestrictedBucketDelayMs:J

    goto :goto_8a

    :cond_7a
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_8a

    .line 2563
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2564
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getWellbeingPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mWellbeingApp:Ljava/lang/String;

    .line 2566
    :cond_8a
    :goto_8a
    iput p1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBootPhase:I

    return-void
.end method

.method public registerDeviceConfigPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .registers 3

    .line 2727
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    const-string v0, "app_standby"

    .line 2726
    invoke-static {v0, p0, p1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .registers 3

    .line 2684
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public updatePowerWhitelistCache()V
    .registers 7

    .line 2624
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 2625
    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getFullPowerWhitelistExceptIdle()[Ljava/lang/String;

    move-result-object v0

    .line 2626
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    monitor-enter v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_21

    .line 2627
    :try_start_9
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 2628
    array-length v2, v0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1c

    .line 2630
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2632
    :cond_1c
    monitor-exit v1

    goto :goto_29

    :catchall_1e
    move-exception p0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_1e

    :try_start_20
    throw p0
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_21} :catch_21

    :catch_21
    move-exception p0

    const-string v0, "AppStandbyController"

    const-string v1, "Failed to get power whitelist"

    .line 2635
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_29
    return-void
.end method
