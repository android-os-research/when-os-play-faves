.class public Lcom/android/server/am/AppRestrictionController$NotificationHelper;
.super Ljava/lang/Object;
.source "AppRestrictionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRestrictionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppRestrictionController$NotificationHelper$NotificationType;
    }
.end annotation


# static fields
.field public static final ACTION_FGS_MANAGER_TRAMPOLINE:Ljava/lang/String; = "com.android.server.am.ACTION_FGS_MANAGER_TRAMPOLINE"

.field public static final ATTR_LAST_BATTERY_NOTIFICATION_TIME:Ljava/lang/String; = "last_batt_noti_ts"

.field public static final ATTR_LAST_LONG_FGS_NOTIFICATION_TIME:Ljava/lang/String; = "last_long_fgs_noti_ts"

.field public static final GROUP_KEY:Ljava/lang/String; = "com.android.app.abusive_bg_apps"

.field public static final NOTIFICATION_TIME_ATTRS:[Ljava/lang/String;

.field public static final NOTIFICATION_TYPE_ABUSIVE_CURRENT_DRAIN:I = 0x0

.field public static final NOTIFICATION_TYPE_LAST:I = 0x2

.field public static final NOTIFICATION_TYPE_LONG_RUNNING_FGS:I = 0x1

.field public static final NOTIFICATION_TYPE_STRINGS:[Ljava/lang/String;

.field public static final PACKAGE_SCHEME:Ljava/lang/String; = "package"

.field public static final SUMMARY_NOTIFICATION_ID:I = 0xc1b2508


# instance fields
.field public final mActionButtonReceiver:Landroid/content/BroadcastReceiver;

.field public final mBgController:Lcom/android/server/am/AppRestrictionController;

.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

.field public final mLock:Ljava/lang/Object;

.field public mNotificationIDStepper:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation
.end field

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mSettingsLock:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/am/AppRestrictionController$NotificationHelper;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "Abusive current drain"

    const-string v1, "Long-running FGS"

    .line 2395
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->NOTIFICATION_TYPE_STRINGS:[Ljava/lang/String;

    const-string/jumbo v0, "last_batt_noti_ts"

    const-string/jumbo v1, "last_long_fgs_noti_ts"

    .line 2400
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->NOTIFICATION_TIME_ATTRS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/AppRestrictionController;)V
    .registers 4

    .line 2454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2433
    new-instance v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$NotificationHelper$1;-><init>(Lcom/android/server/am/AppRestrictionController$NotificationHelper;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mActionButtonReceiver:Landroid/content/BroadcastReceiver;

    const v0, 0xc1b2509

    .line 2451
    iput v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationIDStepper:I

    .line 2455
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 2456
    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 2457
    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 2458
    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mLock:Ljava/lang/Object;

    .line 2459
    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mSettingsLock:Ljava/lang/Object;

    .line 2460
    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static notificationTimeAttrToType(Ljava/lang/String;)I
    .registers 2

    .line 2406
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v0, "last_long_fgs_noti_ts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "last_batt_noti_ts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x0

    return p0

    .line 2412
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method public static notificationTypeToString(I)Ljava/lang/String;
    .registers 2

    .line 2423
    sget-object v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->NOTIFICATION_TYPE_STRINGS:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static notificationTypeToTimeAttr(I)Ljava/lang/String;
    .registers 2

    .line 2416
    sget-object v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->NOTIFICATION_TIME_ATTRS:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method


# virtual methods
.method public cancelLongRunningFGSNotificationIfNecessary(Ljava/lang/String;I)V
    .registers 5

    .line 2708
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2709
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 2710
    invoke-virtual {v1, p2, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    move-result-object p1

    if-eqz p1, :cond_19

    const/4 p2, 0x1

    .line 2713
    invoke-virtual {p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getNotificationId(I)I

    move-result p1

    if-lez p1, :cond_19

    .line 2715
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2718
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public cancelRequestBgRestrictedIfNecessary(Ljava/lang/String;I)V
    .registers 5

    .line 2694
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2695
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 2696
    invoke-virtual {v1, p2, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    move-result-object p1

    if-eqz p1, :cond_19

    const/4 p2, 0x0

    .line 2699
    invoke-virtual {p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getNotificationId(I)I

    move-result p1

    if-lez p1, :cond_19

    .line 2701
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2704
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public getNotificationIdIfNecessary(ILjava/lang/String;I)I
    .registers 11

    .line 2590
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2591
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 2592
    invoke-virtual {v1, p3, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_10

    .line 2594
    monitor-exit v0

    return p3

    .line 2597
    :cond_10
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->currentTimeMillis()J

    move-result-wide v1

    .line 2599
    invoke-virtual {p2, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getLastNotificationTime(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2b

    .line 2601
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->getNotificationMinInterval(I)J

    move-result-wide v5

    add-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-lez v3, :cond_2b

    .line 2607
    monitor-exit v0

    return p3

    .line 2609
    :cond_2b
    invoke-virtual {p2, p1, v1, v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->setLastNotificationTime(IJ)V

    .line 2610
    invoke-virtual {p2, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getNotificationId(I)I

    move-result p3

    if-gtz p3, :cond_3d

    .line 2612
    iget p3, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationIDStepper:I

    add-int/lit8 v1, p3, 0x1

    iput v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationIDStepper:I

    .line 2613
    invoke-virtual {p2, p1, p3}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->setNotificationId(II)V

    .line 2622
    :cond_3d
    monitor-exit v0

    return p3

    :catchall_3f
    move-exception p0

    .line 2623
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public getNotificationMinInterval(I)J
    .registers 3

    if-eqz p1, :cond_11

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const-wide/16 p0, 0x0

    return-wide p0

    .line 2582
    :cond_8
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmConstantsObserver(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    move-result-object p0

    iget-wide p0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgLongFgsNotificationMinIntervalMs:J

    return-wide p0

    .line 2580
    :cond_11
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmConstantsObserver(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    move-result-object p0

    iget-wide p0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAbusiveNotificationMinIntervalMs:J

    return-wide p0
.end method

.method public onSystemReady()V
    .registers 7

    .line 2464
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mActionButtonReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.am.ACTION_FGS_MANAGER_TRAMPOLINE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;

    move-result-object v4

    const-string v3, "android.permission.MANAGE_ACTIVITY_TASKS"

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method public postLongRunningFgsIfNecessary(Ljava/lang/String;I)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v15, p2

    .line 2526
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 2528
    invoke-virtual {v1, v15}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevel(I)I

    move-result v3

    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 2531
    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/android/server/am/AppFGSTracker;->getTrackerInfoForStatsd(I)[B

    move-result-object v6

    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 2536
    invoke-virtual {v1, v15}, Lcom/android/server/am/AppRestrictionController;->getBackgroundRestrictionExemptionReason(I)I

    move-result v1

    .line 2535
    invoke-static {v1}, Landroid/os/PowerExemptionManager;->getExemptionReasonForStatsd(I)I

    move-result v10

    .line 2539
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v13

    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 2540
    invoke-virtual {v1, v15}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevel(I)I

    move-result v14

    const/16 v1, 0x1b9

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v2, p2

    .line 2526
    invoke-static/range {v1 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIII[B[B[B[BIIIZI)V

    .line 2542
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmConstantsObserver(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsOnLongRunning:Z

    if-nez v1, :cond_41

    return-void

    .line 2548
    :cond_41
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmConstantsObserver(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiOnLongRunning:Z

    if-nez v1, :cond_56

    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    move-object/from16 v5, p1

    .line 2549
    invoke-virtual {v1, v5, v15}, Lcom/android/server/am/AppRestrictionController;->hasForegroundServiceNotifications(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_58

    return-void

    :cond_56
    move-object/from16 v5, p1

    .line 2556
    :cond_58
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SHOW_FOREGROUND_SERVICE_MANAGER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    .line 2557
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2559
    iget-object v2, v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0xc000000

    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v2, v3, v1, v4, v6}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v1, 0x1

    const v2, 0x1040888

    const v3, 0x1040876

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    .line 2571
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->postNotificationIfNecessary(IIILandroid/app/PendingIntent;Ljava/lang/String;I[Landroid/app/Notification$Action;)V

    return-void
.end method

.method public postNotification(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Icon;Landroid/app/PendingIntent;[Landroid/app/Notification$Action;)V
    .registers 12

    .line 2650
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    .line 2651
    invoke-virtual {p0, p3}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->postSummaryNotification(Landroid/os/UserHandle;)V

    .line 2653
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->ABUSIVE_BACKGROUND_APPS:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 2655
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "com.android.app.abusive_bg_apps"

    .line 2656
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 2657
    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x108008a

    .line 2658
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    const v2, 0x106001c

    .line 2659
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2661
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p4

    .line 2662
    invoke-virtual {p4, p5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p4

    .line 2663
    invoke-virtual {p4, p7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p4

    if-eqz p6, :cond_4e

    .line 2665
    invoke-virtual {p4, p6}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    :cond_4e
    if-eqz p8, :cond_5c

    .line 2668
    array-length p5, p8

    const/4 p6, 0x0

    :goto_52
    if-ge p6, p5, :cond_5c

    aget-object p7, p8, p6

    .line 2669
    invoke-virtual {p4, p7}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    add-int/lit8 p6, p6, 0x1

    goto :goto_52

    .line 2673
    :cond_5c
    invoke-virtual {p4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p4

    .line 2675
    iget-object p5, p4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p6, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p5, p6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2677
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, p4, p3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public postNotificationIfNecessary(IIILandroid/app/PendingIntent;Ljava/lang/String;I[Landroid/app/Notification$Action;)V
    .registers 19

    move-object v0, p0

    move-object/from16 v7, p5

    move v1, p1

    move/from16 v8, p6

    .line 2629
    invoke-virtual {p0, p1, v7, v8}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->getNotificationIdIfNecessary(ILjava/lang/String;I)I

    move-result v9

    if-gtz v9, :cond_d

    return-void

    .line 2634
    :cond_d
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    .line 2635
    iget-object v2, v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-wide/32 v3, 0xc8000

    const/16 v5, 0x3e8

    .line 2637
    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move-object/from16 v2, p5

    .line 2636
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2638
    iget-object v2, v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    move v3, p2

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2639
    iget-object v2, v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz v1, :cond_3c

    .line 2640
    invoke-virtual {v1, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_3d

    :cond_3c
    move-object v6, v7

    :goto_3d
    aput-object v6, v3, v5

    move v5, p3

    .line 2639
    invoke-virtual {v2, p3, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_4d

    .line 2641
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v7, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    goto :goto_4e

    :cond_4d
    const/4 v1, 0x0

    :goto_4e
    move-object v6, v1

    move-object v0, p0

    move v1, v9

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-object v7, p4

    move-object/from16 v8, p7

    .line 2643
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->postNotification(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Icon;Landroid/app/PendingIntent;[Landroid/app/Notification$Action;)V

    return-void
.end method

.method public postRequestBgRestrictedIfNecessary(Ljava/lang/String;I)V
    .registers 16

    .line 2470
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmConstantsObserver(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptAbusiveAppsToBgRestricted:Z

    if-nez v1, :cond_b

    return-void

    .line 2477
    :cond_b
    new-instance v9, Landroid/content/Intent;

    const-string v1, "android.settings.VIEW_ADVANCED_POWER_USAGE_DETAIL"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string/jumbo v2, "package"

    .line 2478
    invoke-static {v2, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 2479
    invoke-virtual {v9, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2481
    iget-object v7, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v10, 0xc000000

    const/4 v11, 0x0

    .line 2483
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v12

    .line 2481
    invoke-static/range {v7 .. v12}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v7, 0x0

    .line 2485
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 2486
    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/AppRestrictionController;->hasForegroundServices(Ljava/lang/String;I)Z

    move-result v1

    .line 2487
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 2488
    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/AppRestrictionController;->hasForegroundServiceNotifications(Ljava/lang/String;I)Z

    move-result v2

    .line 2489
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v3}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmConstantsObserver(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiToBgRestricted:Z

    if-nez v3, :cond_50

    if-eqz v1, :cond_50

    if-eqz v2, :cond_50

    return-void

    :cond_50
    const/4 v1, 0x0

    const v2, 0x1040887

    const v3, 0x1040875

    move-object v0, p0

    move-object v5, p1

    move v6, p2

    .line 2518
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->postNotificationIfNecessary(IIILandroid/app/PendingIntent;Ljava/lang/String;I[Landroid/app/Notification$Action;)V

    return-void
.end method

.method public final postSummaryNotification(Landroid/os/UserHandle;)V
    .registers 5

    .line 2681
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->ABUSIVE_BACKGROUND_APPS:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "com.android.app.abusive_bg_apps"

    .line 2683
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 2684
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 2685
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x108008a

    .line 2686
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    const v2, 0x106001c

    .line 2687
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2689
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 2690
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const v2, 0xc1b2508

    invoke-virtual {p0, v1, v2, v0, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method
