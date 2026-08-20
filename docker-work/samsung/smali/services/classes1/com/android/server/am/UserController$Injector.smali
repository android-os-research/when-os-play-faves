.class Lcom/android/server/am/UserController$Injector;
.super Ljava/lang/Object;
.source "UserController.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UserController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mUserManager:Lcom/android/server/pm/UserManagerService;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$KWbZgLeBCFNybHqaJHtisAV9bto(Landroid/appwidget/AppWidgetManagerInternal;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/UserController$Injector;->lambda$startUserWidgets$0(Landroid/appwidget/AppWidgetManagerInternal;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/am/UserController$Injector;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/am/UserController$Injector;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .line 3647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3648
    iput-object p1, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method public static synthetic lambda$startUserWidgets$0(Landroid/appwidget/AppWidgetManagerInternal;I)V
    .registers 2

    .line 3792
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManagerInternal;->unlockUser(I)V

    return-void
.end method


# virtual methods
.method public activityManagerForceStopPackage(ILjava/lang/String;)V
    .registers 14

    .line 3765
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3766
    iget-object v1, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, p1

    move-object v10, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 3768
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_19
    move-exception p0

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public activityManagerOnUserStopped(I)V
    .registers 2

    .line 3696
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUserStopped(I)V

    return-void
.end method

.method public batteryStatsServiceNoteEvent(ILjava/lang/String;I)V
    .registers 4

    .line 3733
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    return-void
.end method

.method public broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I
    .registers 42

    move-object/from16 v0, p0

    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    move-object/from16 v7, p1

    .line 3673
    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_10

    move/from16 v1, p16

    :cond_10
    const/16 v2, 0x7581

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 3677
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3680
    iget-object v1, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_29
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3681
    iget-object v3, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move/from16 v16, p8

    move-object/from16 v17, p9

    move/from16 v18, p10

    move/from16 v19, p11

    move/from16 v20, p12

    move/from16 v21, p13

    move/from16 v22, p14

    move/from16 v23, p15

    move/from16 v24, p16

    invoke-virtual/range {v3 .. v24}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    move-result v0

    monitor-exit v1
    :try_end_58
    .catchall {:try_start_29 .. :try_end_58} :catchall_5c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_5c
    move-exception v0

    .line 3685
    :try_start_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public checkCallingPermission(Ljava/lang/String;)I
    .registers 2

    .line 3689
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public checkComponentPermission(Ljava/lang/String;IIIZ)I
    .registers 6

    .line 3773
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result p0

    return p0
.end method

.method public checkPermissionForPreflight(Ljava/lang/String;IILjava/lang/String;)Z
    .registers 5

    .line 3779
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 3778
    invoke-static {p0, p1, p2, p3, p4}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public clearAllLockedTasks(Ljava/lang/String;)V
    .registers 2

    .line 3864
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearLockedTasks(Ljava/lang/String;)V

    return-void
.end method

.method public clearBroadcastQueueForUser(I)V
    .registers 3

    .line 3802
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3803
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->clearBroadcastQueueForUserLocked(I)Z

    .line 3804
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception p0

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public dismissKeyguard(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 5

    .line 3876
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/UserController$Injector$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/UserController$Injector$2;-><init>(Lcom/android/server/am/UserController$Injector;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 3660
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDarManagerService()Lcom/android/server/knox/dar/DarManagerService;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .registers 4

    .line 3652
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/am/UserController$Injector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getKeyguardManager()Landroid/app/KeyguardManager;
    .registers 2

    .line 3729
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    return-object p0
.end method

.method public getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .registers 2

    .line 3664
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSdpManager()Lcom/android/server/knox/dar/sdp/SdpManagerImpl;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStorageManager()Landroid/os/storage/IStorageManager;
    .registers 1

    const-string/jumbo p0, "mount"

    .line 3872
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object p0

    return-object p0
.end method

.method public getSystemServiceManager()Lcom/android/server/SystemServiceManager;
    .registers 1

    .line 3741
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object p0
.end method

.method public getUiHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .registers 3

    .line 3656
    new-instance v0, Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object v0
.end method

.method public getUserManager()Lcom/android/server/pm/UserManagerService;
    .registers 2

    .line 3714
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManager:Lcom/android/server/pm/UserManagerService;

    if-nez v0, :cond_13

    const-string/jumbo v0, "user"

    .line 3715
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3716
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService;

    iput-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 3718
    :cond_13
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object p0
.end method

.method public getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .registers 2

    .line 3722
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_e

    .line 3723
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 3725
    :cond_e
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method public getWindowManager()Lcom/android/server/wm/WindowManagerService;
    .registers 1

    .line 3693
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public installEncryptionUnawareProviders(I)V
    .registers 2

    .line 3816
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ContentProviderHelper;->installEncryptionUnawareProviders(I)V

    return-void
.end method

.method public isCallerRecents(I)Z
    .registers 2

    .line 3868
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result p0

    return p0
.end method

.method public isFirstBootOrUpgrade()Z
    .registers 2

    .line 3745
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    .line 3747
    :try_start_4
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->isDeviceUpgrading()Z

    move-result p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_15

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0

    :catch_15
    move-exception p0

    .line 3749
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public isRuntimeRestarted()Z
    .registers 1

    .line 3737
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result p0

    return p0
.end method

.method public loadUserRecents(I)V
    .registers 2

    .line 3808
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->loadRecentTasksForUser(I)V

    return-void
.end method

.method public reportCurWakefulnessUsageEvent()V
    .registers 1

    .line 3848
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->reportCurWakefulnessUsageEvent()V

    return-void
.end method

.method public reportGlobalUsageEvent(I)V
    .registers 2

    .line 3844
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->reportGlobalUsageEvent(I)V

    return-void
.end method

.method public sendPreBootBroadcast(IZLjava/lang/Runnable;)V
    .registers 13

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 3755
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "android.intent.action.PRE_BOOT_COMPLETED"

    aput-object v2, v0, v1

    const/16 v1, 0x7581

    .line 3754
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3756
    new-instance v0, Lcom/android/server/am/UserController$Injector$1;

    iget-object v4, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, p0

    move v5, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/UserController$Injector$1;-><init>(Lcom/android/server/am/UserController$Injector;Lcom/android/server/am/ActivityManagerService;ILcom/android/internal/util/ProgressReporter;ZLjava/lang/Runnable;)V

    .line 3761
    invoke-virtual {v0}, Lcom/android/server/am/PreBootBroadcaster;->sendNext()V

    return-void
.end method

.method public showUserSwitchingDialog(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 3821
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    .line 3822
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "ActivityManager"

    const-string v1, "Showing user switch dialog on UserController, it could cause a race condition if it\'s shown by CarSystemUI as well"

    .line 3826
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3829
    :cond_17
    new-instance v0, Lcom/android/server/am/UserSwitchingDialog;

    iget-object v3, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    move-object v2, v0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/UserSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;ZLjava/lang/String;Ljava/lang/String;)V

    .line 3834
    invoke-static {}, Lcom/android/server/am/UserController;->-$$Nest$sfgetmUserSwitchingDialogArray()Landroid/util/SparseArray;

    move-result-object p0

    if-nez p0, :cond_34

    .line 3835
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    invoke-static {p0}, Lcom/android/server/am/UserController;->-$$Nest$sfputmUserSwitchingDialogArray(Landroid/util/SparseArray;)V

    .line 3837
    :cond_34
    invoke-static {}, Lcom/android/server/am/UserController;->-$$Nest$sfgetmUserSwitchingDialogArray()Landroid/util/SparseArray;

    move-result-object p0

    iget p1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3840
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public startHomeActivity(ILjava/lang/String;)V
    .registers 3

    .line 3783
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startHomeActivity(ILjava/lang/String;)Z

    return-void
.end method

.method public startPersistentApps(I)V
    .registers 2

    .line 3812
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->startPersistentApps(I)V

    return-void
.end method

.method public startUserWidgets(I)V
    .registers 4

    .line 3787
    const-class p0, Landroid/appwidget/AppWidgetManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/appwidget/AppWidgetManagerInternal;

    if-eqz p0, :cond_16

    .line 3791
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/UserController$Injector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/UserController$Injector$$ExternalSyntheticLambda0;-><init>(Landroid/appwidget/AppWidgetManagerInternal;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    return-void
.end method

.method public systemServiceManagerOnUserCompletedEvent(II)V
    .registers 3

    .line 3710
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/SystemServiceManager;->onUserCompletedEvent(II)V

    return-void
.end method

.method public systemServiceManagerOnUserStopped(I)V
    .registers 3

    .line 3700
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/SystemServiceManager;->onUserStopped(I)V

    .line 3703
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getSdpManager()Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 3704
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getSdpManager()Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onCleanupUser(I)V

    :cond_14
    return-void
.end method

.method public taskSupervisorRemoveUser(I)V
    .registers 2

    .line 3852
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->removeUser(I)V

    return-void
.end method

.method public taskSupervisorResumeFocusedStackTopActivity()V
    .registers 2

    .line 3860
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    return-void
.end method

.method public taskSupervisorSwitchUser(ILcom/android/server/am/UserState;)Z
    .registers 3

    .line 3856
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->switchUser(ILcom/android/server/am/UserState;)Z

    move-result p0

    return p0
.end method

.method public updateUserConfiguration()V
    .registers 1

    .line 3798
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->updateUserConfiguration()V

    return-void
.end method
