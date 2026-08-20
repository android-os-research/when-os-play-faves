.class public final Lcom/android/server/am/ActivityManagerService$LocalService;
.super Landroid/app/ActivityManagerInternal;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/android/server/am/ActivityManagerLocal;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public static synthetic $r8$lambda$SVp8Jq0p3a-OzYFbzOiHcEee_oQ(IILcom/android/server/am/ProcessRecord;)Ljava/lang/Boolean;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$LocalService;->lambda$hasRunningForegroundService$2(IILcom/android/server/am/ProcessRecord;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fGr7DXTc9ReC0X93vZJCB7rCz2A(Lcom/android/server/am/ActivityManagerService$LocalService;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$LocalService;->lambda$disconnectActivityFromServices$1(Lcom/android/server/wm/ActivityServiceConnectionsHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l-B49lRNKelel53ZHKc5F6j6zxw(ILjava/lang/String;Lcom/android/server/am/ProcessRecord;)Ljava/lang/Boolean;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$LocalService;->lambda$hasRunningActivity$0(ILjava/lang/String;Lcom/android/server/am/ProcessRecord;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .line 19207
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/app/ActivityManagerInternal;-><init>()V

    return-void
.end method

.method private synthetic lambda$disconnectActivityFromServices$1(Lcom/android/server/wm/ActivityServiceConnectionsHolder;Ljava/lang/Object;)V
    .registers 5

    .line 19952
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    check-cast p2, Lcom/android/server/am/ConnectionRecord;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, p1, v1}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Z)V

    return-void
.end method

.method public static synthetic lambda$hasRunningActivity$0(ILjava/lang/String;Lcom/android/server/am/ProcessRecord;)Ljava/lang/Boolean;
    .registers 4

    .line 19697
    iget v0, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, p0, :cond_11

    .line 19698
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->hasRunningActivity(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 19699
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$hasRunningForegroundService$2(IILcom/android/server/am/ProcessRecord;)Ljava/lang/Boolean;
    .registers 5

    .line 20256
    iget v0, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    const/4 v1, 0x0

    if-eq v0, p0, :cond_6

    return-object v1

    .line 20260
    :cond_6
    iget-object p0, p2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->getForegroundServiceTypes()I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_12

    .line 20261
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_12
    return-object v1
.end method


# virtual methods
.method public addAppBackgroundRestrictionListener(Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V
    .registers 2

    .line 20599
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->addAppBackgroundRestrictionListener(Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V

    return-void
.end method

.method public addBindServiceEventListener(Landroid/app/ActivityManagerInternal$BindServiceEventListener;)V
    .registers 2

    .line 20619
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mBindServiceEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addBroadcastEventListener(Landroid/app/ActivityManagerInternal$BroadcastEventListener;)V
    .registers 2

    .line 20613
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mBroadcastEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addForegroundServiceStateListener(Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;)V
    .registers 3

    .line 20605
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20606
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mForegroundServiceStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20607
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public addPendingTopUid(IILandroid/app/IApplicationThread;)V
    .registers 12

    .line 20375
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmPendingStartActivityUids(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/PendingStartActivityUids;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/PendingStartActivityUids;->add(II)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 20383
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    if-eqz v1, :cond_17

    .line 20384
    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v1, p2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeProcess(I)V

    :cond_17
    if-eqz v0, :cond_4b

    .line 20391
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p2}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmNetworkPolicyUidObserver(Lcom/android/server/am/ActivityManagerService;)Landroid/app/IUidObserver;

    move-result-object p2

    if-eqz p2, :cond_4b

    .line 20393
    :try_start_21
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessList;->getNextProcStateSeq()J

    move-result-wide v6

    .line 20394
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p2}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmNetworkPolicyUidObserver(Lcom/android/server/am/ActivityManagerService;)Landroid/app/IUidObserver;

    move-result-object v0

    const/4 v2, 0x2

    const/16 v5, 0xf

    move v1, p1

    move-wide v3, v6

    invoke-interface/range {v0 .. v5}, Landroid/app/IUidObserver;->onUidStateChanged(IIJI)V

    if-eqz p3, :cond_4b

    .line 20396
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$LocalService;->shouldWaitForNetworkRulesUpdate(I)Z

    move-result p0

    if-eqz p0, :cond_4b

    .line 20397
    invoke-interface {p3, v6, v7}, Landroid/app/IApplicationThread;->setNetworkBlockSeq(J)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_42} :catch_43

    goto :goto_4b

    :catch_43
    move-exception p0

    const-string p1, "ActivityManager"

    const-string p2, "Error calling setNetworkBlockSeq"

    .line 20400
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4b
    :goto_4b
    return-void
.end method

.method public addToLocaleChangedHistoryLocked(Landroid/os/LocaleList;Landroid/os/LocaleList;Z)V
    .registers 4

    .line 20648
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerServiceExt;->addToLocaleChangedHistoryLocked(Landroid/os/LocaleList;Landroid/os/LocaleList;Z)V

    return-void
.end method

.method public applyForegroundServiceNotification(Landroid/app/Notification;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
    .registers 13

    .line 20279
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20280
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->applyForegroundServiceNotificationLocked(Landroid/app/Notification;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    move-result-object p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_18
    move-exception p0

    .line 20282
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public bindSdkSandboxService(Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/lang/String;Ljava/lang/String;I)Z
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move-object v3, p1

    move-object v1, p2

    move-object/from16 v10, p4

    if-eqz v3, :cond_b0

    if-eqz v1, :cond_a8

    if-eqz v10, :cond_a0

    if-eqz p5, :cond_97

    .line 19259
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_8e

    .line 19262
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 19265
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    move/from16 v9, p3

    invoke-virtual {v2, v9, v10}, Lcom/android/server/appop/AppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7c

    .line 19269
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    .line 19271
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move/from16 v6, p6

    invoke-virtual {v4, p2, v2, v6}, Landroid/content/Context;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/os/Handler;I)Landroid/app/IServiceConnection;

    move-result-object v5

    .line 19272
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 19273
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 19274
    invoke-virtual {v2}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 19275
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 19277
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v3, p1

    move-object v4, v7

    move-object/from16 v7, p5

    move/from16 v9, p3

    move-object/from16 v10, p4

    .line 19273
    invoke-static/range {v0 .. v12}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mbindServiceInstance(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7a

    const/4 v0, 0x1

    goto :goto_7b

    :cond_7a
    const/4 v0, 0x0

    :goto_7b
    return v0

    .line 19266
    :cond_7c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uid does not belong to provided package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19263
    :cond_85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uid is not within application range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19260
    :cond_8e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "service must specify explicit component"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19257
    :cond_97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "processName is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19254
    :cond_a0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "clientAppPackage is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19251
    :cond_a8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connection is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19248
    :cond_b0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "intent is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public broadcastCloseSystemDialogs(Ljava/lang/String;)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 20094
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20095
    new-instance v7, Landroid/content/Intent;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x50000000

    .line 20096
    invoke-virtual {v7, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz v1, :cond_1e

    const-string/jumbo v3, "reason"

    .line 20099
    invoke-virtual {v7, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20102
    :cond_1e
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x3e8

    .line 20104
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v23

    const/16 v24, -0x1

    .line 20102
    invoke-virtual/range {v3 .. v24}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 20105
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_49

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_49
    move-exception v0

    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public broadcastCloseSystemDialogs(Ljava/lang/String;I)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 20114
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20115
    new-instance v8, Landroid/content/Intent;

    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x50000000

    .line 20116
    invoke-virtual {v8, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz v1, :cond_20

    const-string/jumbo v4, "reason"

    .line 20119
    invoke-virtual {v8, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_20
    const/4 v1, -0x1

    if-eq v2, v1, :cond_28

    const-string v1, "displayId"

    .line 20123
    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20126
    :cond_28
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x3e8

    .line 20128
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v24

    const/16 v25, -0x1

    .line 20126
    invoke-virtual/range {v4 .. v25}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 20129
    monitor-exit v3
    :try_end_50
    .catchall {:try_start_9 .. :try_end_50} :catchall_54

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit v3
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public broadcastGlobalConfigurationChanged(IZ)V
    .registers 45

    move-object/from16 v0, p0

    .line 20039
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20040
    new-instance v6, Landroid/content/Intent;

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x70200000

    .line 20041
    invoke-virtual {v6, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20045
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    sget v41, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v20, 0x3e8

    .line 20047
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    const/16 v23, -0x1

    move/from16 v19, v41

    .line 20045
    invoke-virtual/range {v2 .. v23}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_a5

    .line 20049
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v3, 0x1200800

    .line 20050
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-nez p2, :cond_54

    .line 20053
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v3, :cond_59

    :cond_54
    const/high16 v3, 0x40000000    # 2.0f

    .line 20054
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20056
    :cond_59
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v3

    .line 20057
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v4}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v5

    const/4 v7, 0x0

    const/16 v8, 0xce

    const-string v9, ""

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 20060
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, -0x1

    .line 20061
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v33

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x3e8

    .line 20062
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v38

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v39

    const/16 v40, -0x1

    move-object/from16 v19, v4

    move-object/from16 v23, v2

    move/from16 v36, v41

    .line 20060
    invoke-virtual/range {v19 .. v40}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    :cond_a5
    if-nez p2, :cond_f2

    .line 20068
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityManagerService$LocalService;->isSplitConfigurationChange(I)Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 20069
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SPLIT_CONFIGURATION_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x21000000

    .line 20070
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.permission.INSTALL_PACKAGES"

    .line 20074
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v29

    .line 20076
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, -0x1

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x3e8

    .line 20078
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v38

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v39

    const/16 v40, -0x1

    move-object/from16 v19, v0

    move-object/from16 v23, v2

    move/from16 v36, v41

    .line 20076
    invoke-virtual/range {v19 .. v40}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 20081
    :cond_f2
    monitor-exit v1
    :try_end_f3
    .catchall {:try_start_5 .. :try_end_f3} :catchall_f7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_f7
    move-exception v0

    :try_start_f8
    monitor-exit v1
    :try_end_f9
    .catchall {:try_start_f8 .. :try_end_f9} :catchall_f7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;ZI[ILandroid/os/Bundle;)I
    .registers 39

    move-object/from16 v0, p0

    .line 19894
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19895
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->verifyBroadcastLocked(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v7

    .line 19897
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v23

    .line 19898
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    .line 19899
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v29
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_52

    .line 19901
    :try_start_1c
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v19, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v9, p2

    move-object/from16 v13, p3

    move-object/from16 v17, p7

    move/from16 v18, p4

    move/from16 v20, v23

    move/from16 v21, v22

    move/from16 v24, p5

    move-object/from16 v27, p6

    invoke-virtual/range {v3 .. v28}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIIIZLandroid/os/IBinder;[IZ)I

    move-result v0
    :try_end_45
    .catchall {:try_start_1c .. :try_end_45} :catchall_4d

    .line 19911
    :try_start_45
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_52

    .line 19901
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_4d
    move-exception v0

    .line 19911
    :try_start_4e
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19912
    throw v0

    :catchall_52
    move-exception v0

    .line 19913
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_52

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public broadcastIntentInPackage(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZLandroid/os/IBinder;[I)I
    .registers 44

    move-object/from16 v0, p0

    .line 19877
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19878
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    move/from16 v19, p17

    move/from16 v20, p18

    move-object/from16 v21, p19

    move-object/from16 v22, p20

    invoke-virtual/range {v2 .. v22}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZLandroid/os/IBinder;[I)I

    move-result v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_3b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_3b
    move-exception v0

    .line 19883
    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public canAllowWhileInUsePermissionInFgs(IILjava/lang/String;)Z
    .registers 5

    .line 20512
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20513
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->canAllowWhileInUsePermissionInFgsLocked(IILjava/lang/String;)Z

    move-result p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_13
    move-exception p0

    .line 20514
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public canStartForegroundService(IILjava/lang/String;)Z
    .registers 5

    .line 20494
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20495
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->canStartForegroundServiceLocked(IILjava/lang/String;)Z

    move-result p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_13
    move-exception p0

    .line 20496
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public canStartMoreUsers()Z
    .registers 1

    .line 19533
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->canStartMoreUsers()Z

    move-result p0

    return p0
.end method

.method public cancelDisablePolicy(Ljava/lang/String;II)Z
    .registers 4

    .line 20808
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz p0, :cond_d

    .line 20809
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    move-result p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public cancelKillProcessWhenDexExit()V
    .registers 1

    .line 20752
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->cancelKillProcessWhenDexExit()V

    return-void
.end method

.method public checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 19222
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ContentProviderHelper;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public checkContentProviderUriPermission(Landroid/net/Uri;III)I
    .registers 5

    .line 19228
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ContentProviderHelper;->checkContentProviderUriPermission(Landroid/net/Uri;III)I

    move-result p0

    return p0
.end method

.method public cleanUpServices(ILandroid/content/ComponentName;Landroid/content/Intent;)V
    .registers 5

    .line 19960
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19961
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->cleanUpServices(ILandroid/content/ComponentName;Landroid/content/Intent;)V

    .line 19962
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public clearPendingBackup(I)V
    .registers 2

    .line 20240
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mclearPendingBackup(Lcom/android/server/am/ActivityManagerService;I)V

    return-void
.end method

.method public clearPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;)V
    .registers 4

    .line 19365
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_1b

    const-string p0, "ActivityManager"

    .line 19366
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearPendingIntentAllowBgActivityStarts(): not a PendingIntentRecord: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 19370
    :cond_1b
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p0

    :try_start_1e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19371
    check-cast p1, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {p1, p2}, Lcom/android/server/am/PendingIntentRecord;->clearAllowBgActivityStarts(Landroid/os/IBinder;)V

    .line 19372
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public deletePendingTopUid(IJ)V
    .registers 4

    .line 20422
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmPendingStartActivityUids(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/PendingStartActivityUids;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/PendingStartActivityUids;->delete(IJ)V

    return-void
.end method

.method public disconnectActivityFromServices(Ljava/lang/Object;)V
    .registers 5

    .line 19948
    check-cast p1, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 19950
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19951
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_27

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 19952
    new-instance v2, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ActivityManagerService$LocalService;Lcom/android/server/wm/ActivityServiceConnectionsHolder;)V

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->forEachConnection(Ljava/util/function/Consumer;)V

    .line 19955
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_21

    :try_start_19
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 19956
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_27

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_21
    move-exception p0

    .line 19955
    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :catchall_27
    move-exception p0

    .line 19956
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 19581
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ensureBootCompleted()V
    .registers 1

    .line 19972
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    return-void
.end method

.method public ensureNotSpecialUser(I)V
    .registers 2

    .line 19794
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->ensureNotSpecialUser(I)V

    return-void
.end method

.method public finishBooting()V
    .registers 1

    .line 19854
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    return-void
.end method

.method public finishUserSwitch(Ljava/lang/Object;)V
    .registers 2

    .line 19809
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    check-cast p1, Lcom/android/server/am/UserState;

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->finishUserSwitch(Lcom/android/server/am/UserState;)V

    return-void
.end method

.method public getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    .registers 3

    .line 19967
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public getActivityPresentationInfo(Landroid/os/IBinder;)Landroid/content/pm/ActivityPresentationInfo;
    .registers 5

    .line 19826
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    .line 19827
    new-instance v1, Landroid/content/pm/ActivityPresentationInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/app/ActivityClient;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v2

    .line 19828
    invoke-virtual {v0, p1}, Landroid/app/ActivityClient;->getDisplayId(Landroid/os/IBinder;)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 19829
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getActivityName(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-direct {v1, v2, v0, p0}, Landroid/content/pm/ActivityPresentationInfo;-><init>(IILandroid/content/ComponentName;)V

    return-object v1
.end method

.method public getAppProfileStatsForDebugging(JI)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 19217
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/AppProfiler;->getAppProfileStatsForDebugging(JI)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getBootTimeTempAllowListDuration()J
    .registers 3

    .line 20479
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mBootTimeTempAllowlistDuration:J

    return-wide v0
.end method

.method public getCurrentProfileIds()[I
    .registers 1

    .line 19784
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object p0

    return-object p0
.end method

.method public getCurrentUser()Landroid/content/pm/UserInfo;
    .registers 1

    .line 19789
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentUserId()I
    .registers 1

    .line 19586
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result p0

    return p0
.end method

.method public getInstrumentationSourceUid(I)I
    .registers 6

    .line 20319
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 20320
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_12
    if-ltz v1, :cond_34

    .line 20321
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActiveInstrumentation;

    .line 20322
    iget-boolean v3, v2, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    if-nez v3, :cond_31

    iget-object v3, v2, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_31

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, p1, :cond_31

    .line 20324
    iget p0, v2, Lcom/android/server/am/ActiveInstrumentation;->mSourceUid:I

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_3a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return p0

    :cond_31
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 20327
    :cond_34
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_3a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    const/4 p0, -0x1

    return p0

    :catchall_3a
    move-exception p0

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;
    .registers 2

    .line 20432
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getIsDataClearedInAms(Ljava/lang/String;I)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public getIsolatedProcesses(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 20545
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20546
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->getIsolatedProcessesLocked(I)Ljava/util/List;

    move-result-object p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_13
    move-exception p0

    .line 20547
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMaxRunningUsers()I
    .registers 1

    .line 19548
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getMaxRunningUsers()I

    move-result p0

    return p0
.end method

.method public getMemoryStateForProcesses()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ProcessMemoryState;",
            ">;"
        }
    .end annotation

    .line 19560
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19561
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    const/4 v2, 0x0

    .line 19562
    :try_start_b
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->size()I

    move-result v3

    :goto_13
    if-ge v2, v3, :cond_3d

    .line 19563
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    .line 19564
    new-instance v11, Landroid/app/ProcessMemoryState;

    iget v6, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 19565
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v9

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 19566
    invoke-virtual {v4}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v10

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Landroid/app/ProcessMemoryState;-><init>(IILjava/lang/String;IZ)V

    .line 19564
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 19568
    :cond_3d
    monitor-exit v1

    return-object v0

    :catchall_3f
    move-exception p0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_b .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public getPackageFromAppProcesses(I)Ljava/lang/String;
    .registers 2

    .line 20768
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPackageNameByPid(I)Ljava/lang/String;
    .registers 3

    .line 19433
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 19434
    :try_start_5
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 19436
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_19

    .line 19437
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :cond_19
    const/4 p0, 0x0

    .line 19440
    monitor-exit v0

    return-object p0

    :catchall_1c
    move-exception p0

    .line 19441
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public getPendingIntentActivityAsApp(ILandroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .registers 15

    const/4 v0, 0x1

    new-array v3, v0, [Landroid/content/Intent;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    move-object v1, p0

    move v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .line 20439
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityManagerService$LocalService;->getPendingIntentActivityAsApp(I[Landroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getPendingIntentActivityAsApp(I[Landroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .registers 20

    move-object v0, p0

    move-object v7, p2

    const/high16 v1, 0x4000000

    and-int v1, p3, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_c

    move v1, v2

    goto :goto_d

    :cond_c
    move v1, v3

    :goto_d
    const/high16 v4, 0x2000000

    and-int v4, p3, v4

    if-eqz v4, :cond_14

    goto :goto_15

    :cond_14
    move v2, v3

    :goto_15
    if-eq v1, v2, :cond_5b

    .line 20455
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 20456
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 20457
    array-length v4, v7

    .line 20458
    new-array v8, v4, [Ljava/lang/String;

    :goto_22
    if-ge v3, v4, :cond_35

    .line 20460
    aget-object v5, v7, v3

    .line 20461
    invoke-virtual {v5, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v3

    .line 20462
    invoke-virtual {v5, v1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 20463
    invoke-virtual {v5, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 20465
    :cond_35
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x2

    .line 20468
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 20471
    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    move v1, v2

    move-object/from16 v2, p5

    move v6, p1

    move-object v7, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v12, p6

    .line 20466
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderWithFeatureAsApp(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;II)Landroid/content/IIntentSender;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 20472
    new-instance v1, Landroid/app/PendingIntent;

    invoke-direct {v1, v0}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V

    goto :goto_5a

    :cond_59
    const/4 v1, 0x0

    :goto_5a
    return-object v1

    .line 20451
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set exactly one of FLAG_IMMUTABLE or FLAG_MUTABLE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPendingIntentFlags(Landroid/content/IIntentSender;)I
    .registers 2

    .line 19341
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {p0, p1}, Lcom/android/server/am/PendingIntentController;->getPendingIntentFlags(Landroid/content/IIntentSender;)I

    move-result p0

    return p0
.end method

.method public getPendingIntentStats()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/PendingIntentStats;",
            ">;"
        }
    .end annotation

    .line 19212
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {p0}, Lcom/android/server/am/PendingIntentController;->dumpPendingIntentStatsForStatsd()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getProcessesWithPendingBindMounts(I)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 19418
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->getProcessesWithPendingBindMounts(I)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPushMessagingOverQuotaBehavior()I
    .registers 2

    .line 20519
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20520
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_11
    move-exception p0

    .line 20521
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getRestrictionLevel(I)I
    .registers 2

    .line 20583
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevel(I)I

    move-result p0

    return p0
.end method

.method public getRestrictionLevel(Ljava/lang/String;I)I
    .registers 3

    .line 20588
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevel(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getServiceStartForegroundTimeout()I
    .registers 1

    .line 20526
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundTimeoutMs:I

    return p0
.end method

.method public getStartedUserIds()[I
    .registers 1

    .line 19346
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getStartedUserArray()[I

    move-result-object p0

    return-object p0
.end method

.method public getStorageMountMode(II)I
    .registers 4

    const/16 v0, 0x7d0

    if-eq p2, v0, :cond_21

    if-nez p2, :cond_7

    goto :goto_21

    .line 20222
    :cond_7
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter p2

    .line 20223
    :try_start_c
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    if-nez p0, :cond_18

    const/4 p0, 0x0

    goto :goto_1c

    .line 20224
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getMountMode()I

    move-result p0

    :goto_1c
    monitor-exit p2

    return p0

    :catchall_1e
    move-exception p0

    .line 20225
    monitor-exit p2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_1e

    throw p0

    :cond_21
    :goto_21
    const/4 p0, 0x1

    return p0
.end method

.method public getTaskIdForActivity(Landroid/os/IBinder;Z)I
    .registers 3

    .line 19821
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result p0

    return p0
.end method

.method public getUidCapability(I)I
    .registers 5

    .line 20531
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20532
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 20536
    invoke-virtual {p0}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_36

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return p0

    .line 20534
    :cond_19
    :try_start_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid record for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_36
    move-exception p0

    .line 20537
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_19 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getUidProcessState(I)I
    .registers 2

    .line 19413
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->getUidState(I)I

    move-result p0

    return p0
.end method

.method public handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I
    .registers 16

    .line 19575
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public hasForegroundServiceNotification(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 5

    .line 20271
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20272
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->hasForegroundServiceNotificationLocked(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_13
    move-exception p0

    .line 20273
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public hasMetaData(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 20676
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceExt;->hasMetaData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hasRunningActivity(ILjava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    .line 19695
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 19696
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v2, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ProcessList;->searchEachLruProcessesLOSP(ZLjava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1d

    move v0, p1

    :cond_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_22

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return v0

    :catchall_22
    move-exception p0

    .line 19703
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public hasRunningForegroundService(II)Z
    .registers 5

    .line 20254
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20255
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v1, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda2;-><init>(II)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ProcessList;->searchEachLruProcessesLOSP(ZLjava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_17

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return p1

    :catchall_1d
    move-exception p0

    .line 20265
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public hasStartedUserState(I)Z
    .registers 2

    .line 19804
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result p0

    return p0
.end method

.method public inputDispatchingResumed(I)V
    .registers 4

    .line 20020
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 20021
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    .line 20022
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_18

    if-eqz p1, :cond_17

    .line 20024
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrors;->handleDismissAnrDialogs(Lcom/android/server/am/ProcessRecord;)V

    :cond_17
    return-void

    :catchall_18
    move-exception p0

    .line 20022
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public inputDispatchingTimedOut(IZLjava/lang/String;)J
    .registers 4

    .line 20004
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public inputDispatchingTimedOut(Ljava/lang/Object;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;)Z
    .registers 16

    .line 20011
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    move-object v5, p5

    check-cast v5, Lcom/android/server/wm/WindowProcessController;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isActivityStartsLoggingEnabled()Z
    .registers 1

    .line 19984
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagActivityStartsLoggingEnabled:Z

    return p0
.end method

.method public isAppBad(Ljava/lang/String;I)Z
    .registers 3

    .line 20235
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$misAppBad(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isAppForeground(I)Z
    .registers 2

    .line 20230
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$misAppForeground(Lcom/android/server/am/ActivityManagerService;I)Z

    move-result p0

    return p0
.end method

.method public isAppStartModeDisabled(ILjava/lang/String;)Z
    .registers 3

    .line 19779
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isAssociatedCompanionApp(II)Z
    .registers 3

    .line 20366
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmCompanionAppUidsMap(Lcom/android/server/am/ActivityManagerService;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-nez p0, :cond_14

    const/4 p0, 0x0

    return p0

    .line 20370
    :cond_14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isAutoRunBlockedApp(Ljava/lang/String;I)Z
    .registers 3

    .line 20799
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz p0, :cond_d

    .line 20800
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunBlockedApp(Ljava/lang/String;I)Z

    move-result p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public isBackgroundActivityStartsEnabled()Z
    .registers 1

    .line 19988
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundActivityStartsEnabled:Z

    return p0
.end method

.method public isBgAutoRestrictedBucketFeatureFlagEnabled()Z
    .registers 1

    .line 20593
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->isBgAutoRestrictedBucketFeatureFlagEnabled()Z

    move-result p0

    return p0
.end method

.method public isBooted()Z
    .registers 1

    .line 19849
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    return p0
.end method

.method public isBooting()Z
    .registers 1

    .line 19839
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    return p0
.end method

.method public isCleanerApp(Ljava/lang/String;IILandroid/content/Intent;)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public isCurrentProfile(I)Z
    .registers 2

    .line 19799
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->isCurrentProfile(I)Z

    move-result p0

    return p0
.end method

.method public isDeviceOwner(I)Z
    .registers 2

    .line 20338
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmDeviceOwnerUid(Lcom/android/server/am/ActivityManagerService;)I

    move-result p0

    if-ltz p1, :cond_c

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isPendingTopUid(I)Z
    .registers 2

    .line 20427
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmPendingStartActivityUids(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/PendingStartActivityUids;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/PendingStartActivityUids;->isPendingTopUid(I)Z

    move-result p0

    return p0
.end method

.method public isProfileOwner(I)Z
    .registers 4

    .line 20352
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20353
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmProfileOwnerUids(Lcom/android/server/am/ActivityManagerService;)Landroid/util/ArraySet;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmProfileOwnerUids(Lcom/android/server/am/ActivityManagerService;)Landroid/util/ArraySet;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_26

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_26
    move-exception p0

    .line 20354
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;I)Z
    .registers 14

    .line 20817
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz p0, :cond_13

    .line 20818
    invoke-static {}, Lcom/android/server/am/BaseRestrictionMgr;->getInstance()Lcom/android/server/am/BaseRestrictionMgr;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;I)Z

    move-result p0

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public isRuntimeRestarted()Z
    .registers 1

    .line 19528
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {p0}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result p0

    return p0
.end method

.method public final isSplitConfigurationChange(I)Z
    .registers 2

    and-int/lit16 p0, p1, 0x1004

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isSystemReady()Z
    .registers 1

    .line 19424
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    return p0
.end method

.method public isTempAllowlistedForFgsWhileInUse(I)Z
    .registers 2

    .line 20506
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmFgsWhileInUseTempAllowList(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/FgsTempAllowList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/FgsTempAllowList;->isAllowed(I)Z

    move-result p0

    return p0
.end method

.method public isUidActive(I)Z
    .registers 3

    .line 19553
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 19554
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->isUidActiveLOSP(I)Z

    move-result p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return p0

    :catchall_13
    move-exception p0

    .line 19555
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public isUserRunning(II)Z
    .registers 3

    .line 19592
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result p0

    return p0
.end method

.method public killAllBackgroundProcessesExcept(II)V
    .registers 4

    .line 20135
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20136
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->killAllBackgroundProcessesExcept(II)V

    .line 20138
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

.method public killAllBackgroundProcessesExcept(IILandroid/os/Bundle;)V
    .registers 5

    .line 20708
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20709
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerServiceExt;->killAllBackgroundProcessesExcept(IILandroid/os/Bundle;)V

    .line 20710
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public killForegroundAppsForUser(I)V
    .registers 13

    .line 19298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19299
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 19300
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1f
    if-ge v4, v2, :cond_62

    .line 19302
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 19303
    invoke-virtual {v5}, Lcom/android/server/am/ProcessList;->getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 19304
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v7, v3

    :goto_38
    if-ge v7, v6, :cond_5f

    .line 19306
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 19307
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v9

    if-eqz v9, :cond_47

    goto :goto_5c

    .line 19311
    :cond_47
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v9

    if-nez v9, :cond_59

    iget v9, v8, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v9, p1, :cond_5c

    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 19312
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v9

    if-eqz v9, :cond_5c

    .line 19313
    :cond_59
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5c
    :goto_5c
    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    :cond_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 19317
    :cond_62
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_a .. :try_end_63} :catchall_9a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 19319
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_99

    .line 19321
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_6f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    :goto_72
    if-ge v3, p1, :cond_8e

    .line 19323
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0xd

    const/16 v9, 0x9

    const-string/jumbo v10, "kill all fg"

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    .line 19328
    :cond_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_6f .. :try_end_8f} :catchall_93

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_99

    :catchall_93
    move-exception p0

    :try_start_94
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_99
    :goto_99
    return-void

    :catchall_9a
    move-exception p0

    .line 19317
    :try_start_9b
    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public killPackageProcesses(Ljava/lang/String;IILjava/lang/String;)V
    .registers 22

    move-object/from16 v0, p0

    .line 20683
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20684
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_38

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 20685
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v14, 0xd

    const/4 v15, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v16, p4

    invoke-virtual/range {v3 .. v16}, Lcom/android/server/am/ProcessList;->killPackageProcessesLSP(Ljava/lang/String;IIIZZZZZZIILjava/lang/String;)Z

    .line 20692
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_32

    :try_start_2a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 20693
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_38

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_32
    move-exception v0

    .line 20692
    :try_start_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    :try_start_34
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :catchall_38
    move-exception v0

    .line 20693
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_38

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public killProcess(Ljava/lang/String;ILjava/lang/String;)V
    .registers 12

    .line 19682
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19683
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 19685
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0xd

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z

    .line 19688
    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1f
    move-exception p0

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public killProcessForDex(IILjava/lang/String;)V
    .registers 12

    .line 20727
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p2

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20729
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_36

    .line 20730
    :try_start_b
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    .line 20731
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_33

    if-eqz p1, :cond_2e

    const/4 v0, 0x1

    .line 20734
    :try_start_17
    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setRemoved(Z)V

    .line 20735
    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setSkipToFinishActivities(Z)V

    .line 20736
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xd

    move-object v3, p1

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z

    const/4 p0, 0x0

    .line 20738
    invoke-virtual {p1, p0}, Lcom/android/server/am/ProcessRecord;->setSkipToFinishActivities(Z)V

    .line 20740
    :cond_2e
    monitor-exit p2
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_36

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_33
    move-exception p0

    .line 20731
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    :try_start_35
    throw p0

    :catchall_36
    move-exception p0

    .line 20740
    monitor-exit p2
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public killProcessWhenDexExit()V
    .registers 1

    .line 20747
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->killProcessWhenDexExit()V

    return-void
.end method

.method public killProcessesForRemovedTask(Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 19602
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 19603
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 19606
    :cond_11
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p0

    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 19610
    :goto_1e
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_107

    .line 19612
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowProcessController;

    .line 19613
    iget-object v3, v3, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 19615
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v4

    if-eqz v4, :cond_37

    goto :goto_a4

    :cond_37
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    .line 19617
    invoke-virtual {v4}, Lcom/android/server/am/ProcessReceiverRecord;->numberOfCurReceivers()I

    move-result v4

    if-nez v4, :cond_a4

    .line 19620
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    const/16 v5, 0xa

    const/4 v6, 0x1

    if-eqz v4, :cond_9b

    .line 19621
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v4

    iget-object v7, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v4, v7, v8}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunBlockedApp(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_94

    .line 19623
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_103

    .line 19624
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_103

    :cond_94
    const-string/jumbo v4, "remove task"

    .line 19626
    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_103

    :cond_9b
    const-string/jumbo v4, "remove task"

    const/16 v7, 0x16

    .line 19630
    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_103

    .line 19637
    :cond_a4
    :goto_a4
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v4, :cond_fd

    .line 19638
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunBlockedApp(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_f6

    .line 19640
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_103

    .line 19641
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_103

    :cond_f6
    const-string/jumbo v4, "remove task"

    .line 19643
    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessRecord;->setWaitingToKill(Ljava/lang/String;)V

    goto :goto_103

    :cond_fd
    const-string/jumbo v4, "remove task"

    .line 19646
    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessRecord;->setWaitingToKill(Ljava/lang/String;)V

    :cond_103
    :goto_103
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1e

    :cond_107
    move v2, v1

    .line 19654
    :goto_108
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_129

    .line 19655
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 19656
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v3}, Lcom/android/server/am/MARsPolicyManager;->forceRunPolicyForRecentKill(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_126

    .line 19657
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/am/MARsPolicyManager;->forceStopForRecentKill(Ljava/lang/String;)V

    :cond_126
    add-int/lit8 v2, v2, 0x1

    goto :goto_108

    :cond_129
    move v0, v1

    .line 19665
    :goto_12a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_197

    .line 19667
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowProcessController;

    .line 19668
    iget-object v2, v2, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 19669
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$sfgetmRecentKillList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19670
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$sfgetmRecentKillList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x32

    if-le v3, v4, :cond_16e

    .line 19671
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$sfgetmRecentKillList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_16e
    const-string v3, "ActivityManager"

    .line 19673
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SD] user menu kill listen remove action name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_12a

    .line 19677
    :cond_197
    monitor-exit p0
    :try_end_198
    .catchall {:try_start_14 .. :try_end_198} :catchall_19c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_19c
    move-exception p1

    :try_start_19d
    monitor-exit p0
    :try_end_19e
    .catchall {:try_start_19d .. :try_end_19e} :catchall_19c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public monitor()V
    .registers 1

    .line 19999
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->monitor()V

    return-void
.end method

.method public noteAlarmFinish(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V
    .registers 5

    .line 19759
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->noteAlarmFinish(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V

    return-void
.end method

.method public noteAlarmStart(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V
    .registers 5

    .line 19766
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->noteAlarmStart(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V

    return-void
.end method

.method public noteWakeupAlarm(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 19773
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->noteWakeupAlarm(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyNetworkPolicyRulesUpdated(IJ)V
    .registers 10

    .line 19478
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v0, :cond_22

    const-string v0, "ActivityManager_Network"

    .line 19479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got update from NPMS for uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " seq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19483
    :cond_22
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_27
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 19484
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object p0

    if-nez p0, :cond_5b

    .line 19486
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz p0, :cond_56

    const-string p0, "ActivityManager_Network"

    .line 19487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No active uidRecord for uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " procStateSeq: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19490
    :cond_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_27 .. :try_end_57} :catchall_d3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 19492
    :cond_5b
    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_d3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 19493
    iget-object v1, p0, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 19494
    :try_start_62
    iget-wide v2, p0, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    cmp-long v0, v2, p2

    if-ltz v0, :cond_8d

    .line 19495
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz p0, :cond_8b

    const-string p0, "ActivityManager_Network"

    .line 19496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "procStateSeq: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " has already been handled for uid: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19499
    :cond_8b
    monitor-exit v1

    return-void

    .line 19501
    :cond_8d
    iput-wide p2, p0, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    .line 19502
    iget-wide v2, p0, Lcom/android/server/am/UidRecord;->procStateSeqWaitingForNetwork:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_ce

    iget-wide v2, p0, Lcom/android/server/am/UidRecord;->procStateSeqWaitingForNetwork:J

    cmp-long v0, p2, v2

    if-ltz v0, :cond_ce

    .line 19504
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v0, :cond_c9

    const-string v0, "ActivityManager_Network"

    .line 19505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying all blocking threads for uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", procStateSeq: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", procStateSeqWaitingForNetwork: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/android/server/am/UidRecord;->procStateSeqWaitingForNetwork:J

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19510
    :cond_c9
    iget-object p0, p0, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 19512
    :cond_ce
    monitor-exit v1

    return-void

    :catchall_d0
    move-exception p0

    monitor-exit v1
    :try_end_d2
    .catchall {:try_start_62 .. :try_end_d2} :catchall_d0

    throw p0

    :catchall_d3
    move-exception p0

    .line 19492
    :try_start_d4
    monitor-exit v0
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public onForegroundServiceNotificationUpdate(ZLandroid/app/Notification;ILjava/lang/String;I)V
    .registers 13

    .line 20288
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20289
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->onForegroundServiceNotificationUpdateLocked(ZLandroid/app/Notification;ILjava/lang/String;I)V

    .line 20291
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_17
    move-exception p0

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onPackagePausedBG(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 5

    .line 20784
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz p0, :cond_b

    .line 20785
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/MARsPolicyManager;->onPackagePausedBG(Ljava/lang/String;Ljava/lang/String;ZI)V

    :cond_b
    return-void
.end method

.method public onPackageResumedFG(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/content/Intent;",
            "I)V"
        }
    .end annotation

    .line 20791
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz p0, :cond_11

    .line 20792
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/MARsPolicyManager;->onPackageResumedFG(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;I)V

    :cond_11
    return-void
.end method

.method public onUidBlockedReasonsChanged(II)V
    .registers 4

    .line 19517
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmUidNetworkBlockedReasons(Lcom/android/server/am/ActivityManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    monitor-enter v0

    if-nez p2, :cond_13

    .line 19519
    :try_start_9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmUidNetworkBlockedReasons(Lcom/android/server/am/ActivityManagerService;)Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_1c

    .line 19521
    :cond_13
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmUidNetworkBlockedReasons(Lcom/android/server/am/ActivityManagerService;)Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19523
    :goto_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public onUserRemoved(I)V
    .registers 3

    .line 19283
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUserStopped(I)V

    .line 19285
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/BatteryStatsService;->onUserRemoved(I)V

    .line 19286
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->onUserRemoved(I)V

    return-void
.end method

.method public onWakefulnessChanged(I)V
    .registers 2

    .line 19233
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->onWakefulnessChanged(I)V

    return-void
.end method

.method public prepareForPossibleShutdown()V
    .registers 1

    .line 20249
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->prepareForPossibleShutdown()V

    return-void
.end method

.method public registerAnrController(Landroid/app/AnrController;)V
    .registers 2

    .line 20484
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->registerAnrController(Landroid/app/AnrController;)V

    return-void
.end method

.method public registerNetworkPolicyUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    .registers 11

    .line 20630
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, p1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fputmNetworkPolicyUidObserver(Lcom/android/server/am/ActivityManagerService;Landroid/app/IUidObserver;)V

    .line 20631
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mUidObserverController:Lcom/android/server/am/UidObserverController;

    .line 20632
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 20631
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UidObserverController;->register(Landroid/app/IUidObserver;IILjava/lang/String;I)V

    return-void
.end method

.method public registerProcessObserver(Landroid/app/IProcessObserver;)V
    .registers 2

    .line 20309
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    return-void
.end method

.method public reportCurKeyguardUsageEvent(Z)V
    .registers 2

    .line 19992
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    if-eqz p1, :cond_7

    const/16 p1, 0x11

    goto :goto_9

    :cond_7
    const/16 p1, 0x12

    :goto_9
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->reportGlobalUsageEvent(I)V

    return-void
.end method

.method public requestCustomFullBugreport()V
    .registers 8

    .line 20759
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->requestBugReportWithDescription(Ljava/lang/String;Ljava/lang/String;IJZ)V

    return-void
.end method

.method public rescheduleAnrDialog(Ljava/lang/Object;)V
    .registers 5

    .line 20030
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 20031
    iput v1, v0, Landroid/os/Message;->what:I

    .line 20032
    check-cast p1, Lcom/android/server/am/AppNotRespondingDialog$Data;

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20034
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    sget p1, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public resetUpdateConfigurationCallerLocked()V
    .registers 1

    .line 20643
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->resetUpdateConfigurationCallerLocked()V

    return-void
.end method

.method public restart()V
    .registers 1

    .line 20624
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->restart()V

    return-void
.end method

.method public scheduleAppGcs()V
    .registers 2

    .line 19814
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 19815
    :try_start_7
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 19816
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public sendForegroundProfileChanged(I)V
    .registers 2

    .line 19748
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->sendForegroundProfileChanged(I)V

    return-void
.end method

.method public sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 18

    move-object v0, p0

    .line 20555
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActivityManagerService;->sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;II)I
    .registers 22

    move-object v0, p0

    .line 20564
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/ActivityManagerService;->sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;II)I

    move-result v0

    return v0
.end method

.method public setBooted(Z)V
    .registers 2

    .line 19844
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    return-void
.end method

.method public setBooting(Z)V
    .registers 2

    .line 19834
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    return-void
.end method

.method public setCompanionAppUids(ILjava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 20359
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20360
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmCompanionAppUidsMap(Lcom/android/server/am/ActivityManagerService;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20361
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_18
    move-exception p0

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setDebugFlagsForStartingActivity(Landroid/content/pm/ActivityInfo;ILandroid/app/ProfilerInfo;Ljava/lang/Object;)V
    .registers 10

    .line 20190
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20196
    monitor-enter p4
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_48

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_17

    .line 20198
    :try_start_b
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_46

    :cond_17
    :goto_17
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_24

    .line 20202
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->setNativeDebuggingAppLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    :cond_24
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_31

    .line 20206
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/android/server/am/ActivityManagerService;->setTrackAllocationApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    :cond_31
    if-eqz p3, :cond_3d

    .line 20210
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p1, p3, v1}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/app/ProfilerInfo;Landroid/content/pm/ApplicationInfo;)V

    .line 20212
    :cond_3d
    invoke-virtual {p4}, Ljava/lang/Object;->notify()V

    .line 20213
    monitor-exit p4
    :try_end_41
    .catchall {:try_start_b .. :try_end_41} :catchall_15

    .line 20214
    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_48

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 20213
    :goto_46
    :try_start_46
    monitor-exit p4
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_15

    :try_start_47
    throw p0

    :catchall_48
    move-exception p0

    .line 20214
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_48

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setDeviceIdleAllowlist([I[I)V
    .registers 5

    .line 19377
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19378
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_28

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 19379
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleAllowlist:[I

    .line 19380
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleExceptIdleAllowlist:[I

    .line 19381
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController;->setDeviceIdleAllowlist([I[I)V

    .line 19382
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_22

    :try_start_1a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 19383
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_28

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_22
    move-exception p0

    .line 19382
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :catchall_28
    move-exception p0

    .line 19383
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setDeviceOwnerUid(I)V
    .registers 2

    .line 20333
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fputmDeviceOwnerUid(Lcom/android/server/am/ActivityManagerService;I)V

    return-void
.end method

.method public setHasOverlayUi(IZ)V
    .registers 6

    .line 19453
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19455
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_55

    .line 19456
    :try_start_b
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-nez v2, :cond_32

    const-string p0, "ActivityManager"

    .line 19458
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHasOverlayUi called on unknown pid: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19459
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_b .. :try_end_2d} :catchall_52

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_55

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 19461
    :cond_32
    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_52

    .line 19462
    :try_start_33
    iget-object p1, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result p1

    if-ne p1, p2, :cond_40

    .line 19463
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_55

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 19465
    :cond_40
    :try_start_40
    iget-object p1, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessStateRecord;->setHasOverlayUi(Z)V

    .line 19467
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo p1, "updateOomAdj_uiVisibility"

    invoke-virtual {p0, v2, p1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    .line 19468
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_40 .. :try_end_4e} :catchall_55

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_52
    move-exception p0

    .line 19461
    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    :try_start_54
    throw p0

    :catchall_55
    move-exception p0

    .line 19468
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_55

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setKeyguardPkgInfo(Ljava/lang/String;I)V
    .registers 3

    .line 20826
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz p0, :cond_b

    .line 20827
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->setKeyguardPkgInfo(Ljava/lang/String;I)V

    :cond_b
    return-void
.end method

.method public setLongLiveProcess(I)V
    .registers 2

    .line 20700
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt;->setLongLiveProcess(I)Z

    return-void
.end method

.method public setPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;I)V
    .registers 5

    .line 19352
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_1c

    const-string p0, "ActivityManager"

    .line 19353
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setPendingIntentAllowBgActivityStarts(): not a PendingIntentRecord: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 19357
    :cond_1c
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p0

    :try_start_1f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19358
    check-cast p1, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/PendingIntentRecord;->setAllowBgActivityStarts(Landroid/os/IBinder;I)V

    .line 19359
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_2c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2c
    move-exception p1

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setPendingIntentAllowlistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;JIILjava/lang/String;)V
    .registers 16

    .line 19335
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/PendingIntentController;->setPendingIntentAllowlistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;JIILjava/lang/String;)V

    return-void
.end method

.method public setProfileOwnerUid(Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 20345
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20346
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fputmProfileOwnerUids(Lcom/android/server/am/ActivityManagerService;Landroid/util/ArraySet;)V

    .line 20347
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

.method public setStopUserOnSwitch(I)V
    .registers 2

    .line 20578
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->setStopUserOnSwitch(I)V

    return-void
.end method

.method public setSwitchingFromSystemUserMessage(Ljava/lang/String;)V
    .registers 2

    .line 19538
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->setSwitchingFromSystemUserMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setSwitchingToSystemUserMessage(Ljava/lang/String;)V
    .registers 2

    .line 19543
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->setSwitchingToSystemUserMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setUpdateConfigurationCallerLocked(I)V
    .registers 2

    .line 20638
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt;->setUpdateConfigurationCallerLocked(I)V

    return-void
.end method

.method public setVoiceInteractionManagerProvider(Landroid/app/ActivityManagerInternal$VoiceInteractionManagerProvider;)V
    .registers 2

    .line 20573
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$msetVoiceInteractionManagerProvider(Lcom/android/server/am/ActivityManagerService;Landroid/app/ActivityManagerInternal$VoiceInteractionManagerProvider;)V

    return-void
.end method

.method public shouldConfirmCredentials(I)Z
    .registers 2

    .line 19753
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->shouldConfirmCredentials(I)Z

    move-result p0

    return p0
.end method

.method public final shouldWaitForNetworkRulesUpdate(I)Z
    .registers 4

    .line 20406
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmUidNetworkBlockedReasons(Lcom/android/server/am/ActivityManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    monitor-enter v0

    .line 20410
    :try_start_7
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmUidNetworkBlockedReasons(Lcom/android/server/am/ActivityManagerService;)Landroid/util/SparseIntArray;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p1, 0x2

    .line 20415
    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->updateBlockedReasonsWithProcState(II)I

    move-result p0

    if-nez p0, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    monitor-exit v0

    return v1

    :catchall_1e
    move-exception p0

    .line 20417
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public showBootMessage(Ljava/lang/CharSequence;ZII)V
    .registers 7

    .line 20842
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 20845
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;->showBootMessage(Ljava/lang/CharSequence;ZII)V

    return-void

    .line 20843
    :cond_12
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    throw p0
.end method

.method public startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)Z
    .registers 14

    .line 19239
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public startProcess(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZZLjava/lang/String;Landroid/content/ComponentName;)V
    .registers 21

    move-object v0, p0

    const-wide/16 v1, 0x40

    .line 20145
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 20146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startProcess:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_21

    :cond_20
    move-object v4, p1

    .line 20149
    :goto_21
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_4e

    :try_start_24
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20153
    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x0

    new-instance v10, Lcom/android/server/am/HostingRecord;

    move/from16 v0, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct {v10, v6, v7, v0}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Z)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {v5 .. v13}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZ)Lcom/android/server/am/ProcessRecord;

    .line 20157
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_24 .. :try_end_41} :catchall_48

    :try_start_41
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_4e

    .line 20159
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_48
    move-exception v0

    .line 20157
    :try_start_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    :try_start_4a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception v0

    .line 20159
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 20160
    throw v0
.end method

.method public startProcess(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZZLjava/lang/String;Landroid/content/ComponentName;II)V
    .registers 9

    .line 20722
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/ActivityManagerService$LocalService;->startProcess(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZZLjava/lang/String;Landroid/content/ComponentName;)V

    return-void
.end method

.method public startProcess(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZZLjava/lang/String;Landroid/content/ComponentName;ZI)V
    .registers 26

    move-object/from16 v0, p0

    const-wide/16 v1, 0x40

    .line 20168
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 20169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startProcess:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_24

    :cond_22
    move-object/from16 v4, p1

    .line 20172
    :goto_24
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_57

    :try_start_27
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20176
    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x0

    new-instance v10, Lcom/android/server/am/HostingRecord;

    move/from16 v0, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct {v10, v6, v7, v0}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Z)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v15, p7

    move/from16 v16, p8

    invoke-virtual/range {v5 .. v16}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZZZI)Lcom/android/server/am/ProcessRecord;

    .line 20180
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_27 .. :try_end_4a} :catchall_51

    :try_start_4a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_57

    .line 20182
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_51
    move-exception v0

    .line 20180
    :try_start_52
    monitor-exit v3
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    :try_start_53
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_57

    :catchall_57
    move-exception v0

    .line 20182
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 20183
    throw v0
.end method

.method public startServiceInPackage(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZLandroid/os/IBinder;)Landroid/content/ComponentName;
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 19923
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19924
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v2, :cond_30

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startServiceInPackage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " type="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p4

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :cond_30
    move-object/from16 v4, p3

    move-object/from16 v8, p4

    .line 19926
    :goto_34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_62

    .line 19930
    :try_start_38
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    const/4 v9, -0x1

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v10, p2

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    move-object/from16 v16, p10

    invoke-virtual/range {v5 .. v16}, Lcom/android/server/am/ActiveServices;->startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;IZLandroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_55
    .catchall {:try_start_38 .. :try_end_55} :catchall_5d

    .line 19936
    :try_start_55
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19938
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_62

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :catchall_5d
    move-exception v0

    .line 19936
    :try_start_5e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19937
    throw v0

    :catchall_62
    move-exception v0

    .line 19939
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_62

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public stopAppForUser(Ljava/lang/String;I)V
    .registers 3

    .line 20296
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->stopAppForUserInternal(Ljava/lang/String;I)V

    return-void
.end method

.method public stopForegroundServicesForChannel(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 20302
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20303
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->stopForegroundServicesForChannelLocked(Ljava/lang/String;ILjava/lang/String;)V

    .line 20304
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public tempAllowWhileInUsePermissionInFgs(IJ)V
    .registers 5

    .line 20501
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmFgsWhileInUseTempAllowList(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/FgsTempAllowList;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/FgsTempAllowList;->add(IJLjava/lang/Object;)V

    return-void
.end method

.method public tempAllowlistForPendingIntent(IIIJIILjava/lang/String;)V
    .registers 20

    move-object v0, p0

    .line 19860
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19861
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/ActivityManagerService;->tempAllowlistForPendingIntentLocked(IIIJIILjava/lang/String;)V

    .line 19863
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public trimApplications()V
    .registers 3

    .line 19597
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v0, 0x1

    const-string/jumbo v1, "updateOomAdj_activityChange"

    invoke-static {p0, v0, v1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mtrimApplications(Lcom/android/server/am/ActivityManagerService;ZLjava/lang/String;)V

    return-void
.end method

.method public unregisterAnrController(Landroid/app/AnrController;)V
    .registers 2

    .line 20489
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->unregisterAnrController(Landroid/app/AnrController;)V

    return-void
.end method

.method public unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    .registers 2

    .line 20314
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    return-void
.end method

.method public updateActivityUsageStats(Landroid/content/ComponentName;IILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 12

    .line 19727
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->updateActivityUsageStats(Landroid/content/ComponentName;IILandroid/os/IBinder;Landroid/content/ComponentName;)V

    return-void
.end method

.method public updateActivityUsageStatsWithIntent(Landroid/content/ComponentName;IILandroid/os/IBinder;Landroid/content/ComponentName;Landroid/content/Intent;)V
    .registers 14

    .line 19735
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->updateActivityUsageStats(Landroid/content/ComponentName;IILandroid/os/IBinder;Landroid/content/ComponentName;Landroid/content/Intent;)V

    return-void
.end method

.method public updateBackupServicePkg(IZ)V
    .registers 3

    .line 20834
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->updateBackupServicePkg(IZ)V

    return-void
.end method

.method public updateBatteryStats(Landroid/content/ComponentName;IIZ)V
    .registers 5

    .line 19721
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->updateBatteryStats(Landroid/content/ComponentName;IIZ)V

    return-void
.end method

.method public updateCpuStats()V
    .registers 1

    .line 19715
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    return-void
.end method

.method public updateDeviceIdleTempAllowlist([IIZJIILjava/lang/String;I)V
    .registers 23

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    .line 19390
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19391
    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v5
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_50

    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    if-eqz v1, :cond_19

    .line 19393
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object v1, v6, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleTempAllowlist:[I

    :cond_19
    if-eqz v3, :cond_35

    if-nez p6, :cond_3c

    .line 19399
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mFgsStartTempAllowList:Lcom/android/server/am/FgsTempAllowList;

    new-instance v12, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    move-object v6, v12

    move-wide/from16 v7, p4

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v6 .. v11}, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;-><init>(JILjava/lang/String;I)V

    move-wide/from16 v6, p4

    invoke-virtual {v1, p2, v6, v7, v12}, Lcom/android/server/am/FgsTempAllowList;->add(IJLjava/lang/Object;)V

    goto :goto_3c

    .line 19404
    :cond_35
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mFgsStartTempAllowList:Lcom/android/server/am/FgsTempAllowList;

    invoke-virtual {v1, p2}, Lcom/android/server/am/FgsTempAllowList;->removeUid(I)V

    .line 19406
    :cond_3c
    :goto_3c
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p2, v3}, Lcom/android/server/am/ActivityManagerService;->setAppIdTempAllowlistStateLSP(IZ)V

    .line 19407
    monitor-exit v5
    :try_end_42
    .catchall {:try_start_10 .. :try_end_42} :catchall_4a

    :try_start_42
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 19408
    monitor-exit v4
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_50

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_4a
    move-exception v0

    .line 19407
    :try_start_4b
    monitor-exit v5
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :catchall_50
    move-exception v0

    .line 19408
    monitor-exit v4
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_50

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public updateForegroundTimeIfOnBattery(Ljava/lang/String;IJ)V
    .registers 5

    .line 19743
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->updateForegroundTimeIfOnBattery(Ljava/lang/String;IJ)V

    return-void
.end method

.method public updateOomAdj()V
    .registers 3

    .line 19708
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19709
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "updateOomAdj_meh"

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 19710
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_13
    move-exception p0

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public updateOomLevelsForDisplay(I)V
    .registers 3

    .line 19976
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19977
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_11

    .line 19978
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V

    .line 19980
    :cond_11
    monitor-exit p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_16
    move-exception p0

    :try_start_17
    monitor-exit p1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
