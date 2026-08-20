.class public final Lcom/android/server/am/ServiceRecord;
.super Landroid/os/Binder;
.source "ServiceRecord.java"

# interfaces
.implements Landroid/content/ComponentName$WithComponentName;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ServiceRecord$StartItem;
    }
.end annotation


# static fields
.field public static final MAX_DELIVERY_COUNT:I = 0x3

.field public static final MAX_DONE_EXECUTING_COUNT:I = 0x6

.field public static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field public allowlistManager:Z

.field public final ams:Lcom/android/server/am/ActivityManagerService;

.field public app:Lcom/android/server/am/ProcessRecord;

.field public appInfo:Landroid/content/pm/ApplicationInfo;

.field public final bindings:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/Intent$FilterComparison;",
            "Lcom/android/server/am/IntentBindRecord;",
            ">;"
        }
    .end annotation
.end field

.field public callStart:Z

.field public final connections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field public crashCount:I

.field public final createRealTime:J

.field public createdFromFg:Z

.field public final definingPackageName:Ljava/lang/String;

.field public final definingUid:I

.field public delayed:Z

.field public delayedStop:Z

.field public final deliveredStarts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord$StartItem;",
            ">;"
        }
    .end annotation
.end field

.field public destroyTime:J

.field public destroying:Z

.field public executeFg:Z

.field public executeNesting:I

.field public executingStart:J

.field public final exported:Z

.field public fgDisplayTime:J

.field public fgRequired:Z

.field public fgWaiting:Z

.field public foregroundId:I

.field public foregroundNoti:Landroid/app/Notification;

.field public foregroundServiceType:I

.field public final instanceName:Landroid/content/ComponentName;

.field public final intent:Landroid/content/Intent$FilterComparison;

.field public isForeground:Z

.field public isNotAppComponentUsage:Z

.field public final isSdkSandbox:Z

.field public isolationHostProc:Lcom/android/server/am/ProcessRecord;

.field public lastActivity:J

.field public lastStartId:I

.field public lastTopAlmostPerceptibleBindRequestUptimeMs:J

.field public mAllowStartForeground:I

.field public mAllowStartForegroundAtEntering:I

.field public mAllowWhileInUsePermissionInFgs:Z

.field public mAllowWhileInUsePermissionInFgsAtEntering:Z

.field public mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

.field public mBgActivityStartsByStartOriginatingTokens:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public mCleanUpAllowBgActivityStartsByStartCallback:Ljava/lang/Runnable;

.field public mEarliestRestartTime:J

.field public mFgsEnterTime:J

.field public mFgsExitTime:J

.field public mFgsHasNotificationPermission:Z

.field public mFgsNotificationDeferred:Z

.field public mFgsNotificationShown:Z

.field public mFgsNotificationWasDeferred:Z

.field public mInfoAllowStartForeground:Ljava/lang/String;

.field public mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

.field public mIsAllowedBgActivityStartsByBinding:Z

.field public mIsAllowedBgActivityStartsByStart:Z

.field public mKeepWarming:Z

.field public mLastSetFgsRestrictionTime:J

.field public mLoggedInfoAllowStartForeground:Z

.field public mRecentCallerApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field public mRecentCallingPackage:Ljava/lang/String;

.field public mRecentCallingUid:I

.field public mRestartSchedulingTime:J

.field public mStartForegroundCount:I

.field public final name:Landroid/content/ComponentName;

.field public nextRestartTime:J

.field public final packageName:Ljava/lang/String;

.field public pendingConnectionGroup:I

.field public pendingConnectionImportance:I

.field public final pendingStarts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord$StartItem;",
            ">;"
        }
    .end annotation
.end field

.field public final permission:Ljava/lang/String;

.field public final processName:Ljava/lang/String;

.field public restartCount:I

.field public restartDelay:J

.field public restartTime:J

.field public restartTracker:Lcom/android/internal/app/procstats/ServiceState;

.field public final restarter:Ljava/lang/Runnable;

.field public final sdkSandboxClientAppPackage:Ljava/lang/String;

.field public final sdkSandboxClientAppUid:I

.field public final serviceInfo:Landroid/content/pm/ServiceInfo;

.field public final shortInstanceName:Ljava/lang/String;

.field public startRequested:Z

.field public startingBgTimeout:J

.field public stopIfKilled:Z

.field public stringName:Ljava/lang/String;

.field public totalRestartCount:I

.field public tracker:Lcom/android/internal/app/procstats/ServiceState;

.field public final userId:I


# direct methods
.method public static synthetic $r8$lambda$nAQIb51kQiu1uSwcVuTz7LaRGa8(Lcom/android/server/am/ServiceRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ServiceRecord;->lambda$allowBgActivityStartsOnServiceStart$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msignalForegroundServiceNotification(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;IIZ)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ServiceRecord;->signalForegroundServiceNotification(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;ILandroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;ZLjava/lang/Runnable;)V
    .registers 23

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    .line 585
    invoke-direct/range {v0 .. v12}, Lcom/android/server/am/ServiceRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;ILandroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;ZLjava/lang/Runnable;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;ILandroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;ZLjava/lang/Runnable;Ljava/lang/String;ILjava/lang/String;)V
    .registers 15

    .line 593
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 103
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    .line 106
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->mBgActivityStartsByStartOriginatingTokens:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 181
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->mFgsEnterTime:J

    .line 183
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->mFgsExitTime:J

    const/4 v0, -0x1

    .line 195
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStartForeground:I

    .line 197
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStartForegroundAtEntering:I

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    .line 594
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 595
    iput-object p2, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 596
    iput-object p3, p0, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    .line 597
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 598
    iput-object p4, p0, Lcom/android/server/am/ServiceRecord;->definingPackageName:Ljava/lang/String;

    .line 599
    iput p5, p0, Lcom/android/server/am/ServiceRecord;->definingUid:I

    .line 600
    iput-object p6, p0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 601
    iput-object p7, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 602
    iget-object p1, p7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 603
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    if-eqz p10, :cond_51

    const/4 p1, 0x1

    goto :goto_52

    :cond_51
    const/4 p1, 0x0

    .line 604
    :goto_52
    iput-boolean p1, p0, Lcom/android/server/am/ServiceRecord;->isSdkSandbox:Z

    .line 605
    iput p11, p0, Lcom/android/server/am/ServiceRecord;->sdkSandboxClientAppUid:I

    .line 606
    iput-object p12, p0, Lcom/android/server/am/ServiceRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    .line 607
    iget p1, p7, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_7b

    .line 608
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p7, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    goto :goto_84

    :cond_7b
    if-eqz p10, :cond_80

    .line 610
    iput-object p10, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    goto :goto_84

    .line 612
    :cond_80
    iget-object p1, p7, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 614
    :goto_84
    iget-object p1, p7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    .line 615
    iget-boolean p1, p7, Landroid/content/pm/ServiceInfo;->exported:Z

    iput-boolean p1, p0, Lcom/android/server/am/ServiceRecord;->exported:Z

    .line 616
    iput-object p9, p0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    .line 617
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    .line 618
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 619
    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 620
    iput-boolean p8, p0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    .line 621
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->updateKeepWarmLocked()V

    .line 625
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->updateFgsHasNotificationPermission()V

    return-void
.end method

.method private synthetic lambda$allowBgActivityStartsOnServiceStart$0()V
    .registers 5

    .line 801
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 802
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mBgActivityStartsByStartOriginatingTokens:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 803
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mBgActivityStartsByStartOriginatingTokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 806
    iget-boolean v1, p0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByStart:Z

    if-eqz v1, :cond_24

    .line 811
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_3e

    .line 814
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getExclusiveOriginatingToken()Landroid/os/IBinder;

    move-result-object v2

    .line 813
    invoke-virtual {v1, p0, v2}, Lcom/android/server/am/ProcessRecord;->addOrUpdateAllowBackgroundActivityStartsToken(Landroid/os/Binder;Landroid/os/IBinder;)V

    goto :goto_3e

    :cond_24
    const-string p0, "ActivityManager"

    const-string v1, "Service callback to revoke bg activity starts by service start triggered but mIsAllowedBgActivityStartsByStart = false. This should never happen."

    .line 817
    invoke-static {p0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 825
    :cond_2c
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

    if-ne v1, v3, :cond_36

    .line 829
    invoke-virtual {p0, v2}, Lcom/android/server/am/ServiceRecord;->setAllowedBgActivityStartsByStart(Z)V

    goto :goto_3b

    :cond_36
    if-eqz v3, :cond_3b

    .line 834
    invoke-virtual {v3, p0}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    :cond_3b
    :goto_3b
    const/4 v1, 0x0

    .line 836
    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

    .line 838
    :cond_3e
    :goto_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_43

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_43
    move-exception p0

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method


# virtual methods
.method public addConnection(Landroid/os/IBinder;Lcom/android/server/am/ConnectionRecord;)V
    .registers 5

    .line 732
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_14

    .line 734
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 735
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    :cond_14
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_2b

    .line 741
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget p2, p2, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->addBoundClientUid(I)V

    .line 742
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 p1, 0x200

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    :cond_2b
    return-void
.end method

.method public allowBgActivityStartsOnServiceStart(Landroid/os/IBinder;)V
    .registers 5

    .line 792
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mBgActivityStartsByStartOriginatingTokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 793
    invoke-virtual {p0, p1}, Lcom/android/server/am/ServiceRecord;->setAllowedBgActivityStartsByStart(Z)V

    .line 794
    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_f

    .line 795
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

    .line 799
    :cond_f
    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->mCleanUpAllowBgActivityStartsByStartCallback:Ljava/lang/Runnable;

    if-nez p1, :cond_1a

    .line 800
    new-instance p1, Lcom/android/server/am/ServiceRecord$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/am/ServiceRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ServiceRecord;)V

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->mCleanUpAllowBgActivityStartsByStartCallback:Ljava/lang/Runnable;

    .line 844
    :cond_1a
    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->mCleanUpAllowBgActivityStartsByStartCallback:Ljava/lang/Runnable;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, p1, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public canStopIfKilled(Z)Z
    .registers 3

    .line 760
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    if-nez v0, :cond_a

    if-eqz p1, :cond_14

    :cond_a
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public cancelNotification()V
    .registers 9

    .line 1138
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1139
    iget v5, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1140
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1141
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    move v4, v0

    .line 1142
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v7, Lcom/android/server/am/ServiceRecord$3;

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord$3;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;III)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public clearDeliveredStartsLocked()V
    .registers 3

    .line 1193
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1194
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1196
    :cond_18
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 14

    .line 453
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "intent={"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x7d

    .line 455
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(C)V

    .line 456
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "packageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "processName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    if-eqz v0, :cond_4b

    .line 459
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "permission="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    :cond_4b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 462
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 463
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_91

    .line 464
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "baseDir="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v5, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    .line 466
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "resDir="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    :cond_82
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "dataDir="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    :cond_91
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 471
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_b0

    .line 472
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "isolationHostProc="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 474
    :cond_b0
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    if-eqz v0, :cond_c1

    .line 475
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "allowlistManager="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 477
    :cond_c1
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByBinding:Z

    if-eqz v0, :cond_d3

    .line 478
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsAllowedBgActivityStartsByBinding="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 479
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByBinding:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 481
    :cond_d3
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByStart:Z

    if-eqz v0, :cond_e5

    .line 482
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsAllowedBgActivityStartsByStart="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 483
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByStart:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 485
    :cond_e5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "allowWhileInUsePermissionInFgs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 486
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 487
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "recentCallingPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "recentCallingUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 490
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 491
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "allowStartForeground="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 492
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStartForeground:I

    invoke-static {v0}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "startForegroundCount="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 494
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 495
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "infoAllowStartForeground="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_14c

    .line 498
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "delayed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 500
    :cond_14c
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v0, :cond_154

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v0, :cond_176

    .line 501
    :cond_154
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "isForeground="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " foregroundId="

    .line 502
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " foregroundNoti="

    .line 503
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 505
    :cond_176
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "createTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 506
    iget-wide v5, p0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    invoke-static {v5, v6, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v0, " startingBgTimeout="

    .line 507
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 508
    iget-wide v3, p0, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    invoke-static {v3, v4, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 509
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 510
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 511
    iget-wide v3, p0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-static {v3, v4, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v0, " restartTime="

    .line 512
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 513
    iget-wide v3, p0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    invoke-static {v3, v4, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v0, " createdFromFg="

    .line 514
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 515
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    if-eqz v0, :cond_1cd

    .line 516
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " pendingConnectionGroup="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 517
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " Importance="

    .line 518
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 520
    :cond_1cd
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-nez v0, :cond_1d9

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-nez v0, :cond_1d9

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-eqz v0, :cond_20f

    .line 521
    :cond_1d9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "startRequested="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " delayedStop="

    .line 522
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " stopIfKilled="

    .line 523
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " callStart="

    .line 524
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->callStart:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " lastStartId="

    .line 525
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 527
    :cond_20f
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-eqz v0, :cond_237

    .line 528
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "executeNesting="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " executeFg="

    .line 529
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " executingStart="

    .line 530
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 531
    iget-wide v3, p0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    invoke-static {v3, v4, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 532
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 534
    :cond_237
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    const-wide/16 v3, 0x0

    if-nez v0, :cond_243

    iget-wide v5, p0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_25d

    .line 535
    :cond_243
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "destroying="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " destroyTime="

    .line 536
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 537
    iget-wide v5, p0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    invoke-static {v5, v6, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 538
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 540
    :cond_25d
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    if-nez v0, :cond_273

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    if-nez v0, :cond_273

    iget-wide v5, p0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide v9, p0, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    sub-long v9, v5, v9

    cmp-long v0, v9, v3

    if-nez v0, :cond_273

    cmp-long v0, v5, v3

    if-eqz v0, :cond_2a2

    .line 542
    :cond_273
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "restartCount="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " restartDelay="

    .line 543
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 544
    iget-wide v3, p0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide v5, p0, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v0, " nextRestartTime="

    .line 545
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 546
    iget-wide v3, p0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-static {v3, v4, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v0, " crashCount="

    .line 547
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 549
    :cond_2a2
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2ba

    .line 550
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Delivered Starts:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    iget-object v6, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ServiceRecord;->dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V

    .line 553
    :cond_2ba
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2d4

    .line 554
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Starts:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    iget-object v6, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    const-wide/16 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ServiceRecord;->dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V

    .line 557
    :cond_2d4
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const-string v3, "  "

    if-lez v0, :cond_331

    .line 558
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Bindings:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    .line 559
    :goto_2e7
    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v0, v4, :cond_331

    .line 560
    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/IntentBindRecord;

    .line 561
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "* IntentBindRecord{"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 562
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v4}, Lcom/android/server/am/IntentBindRecord;->collectFlags()I

    move-result v5

    and-int/2addr v5, v2

    if-eqz v5, :cond_316

    const-string v5, " CREATE"

    .line 564
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :cond_316
    const-string/jumbo v5, "}:"

    .line 566
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/android/server/am/IntentBindRecord;->dumpInService(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e7

    .line 570
    :cond_331
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_36c

    .line 571
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "All Connections:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    .line 572
    :goto_342
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_36c

    .line 573
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move v4, v1

    .line 574
    :goto_353
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_369

    .line 575
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_353

    :cond_369
    add-int/lit8 v0, v0, 0x1

    goto :goto_342

    :cond_36c
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 340
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 341
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    const-wide v12, 0x10900000001L

    invoke-virtual {v9, v12, v13, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 342
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v14, 0x0

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    move v1, v14

    :goto_1a
    const-wide v7, 0x10800000002L

    invoke-virtual {v9, v7, v8, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 343
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_32

    const-wide v2, 0x10500000003L

    .line 344
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 346
    :cond_32
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    if-eqz v1, :cond_4c

    .line 347
    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-wide v3, 0x10b00000004L

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v2, p1

    move v7, v15

    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    :cond_4c
    const-wide v1, 0x10900000005L

    .line 350
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x10900000006L

    .line 351
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x10900000007L

    .line 352
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 354
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 355
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 356
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_ad

    const-wide v1, 0x10b00000008L

    .line 357
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 358
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v9, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 359
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    const-wide v3, 0x10900000002L

    .line 360
    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v9, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_9e
    const-wide v3, 0x10900000003L

    .line 362
    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v9, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 363
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 365
    :cond_ad
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_b9

    const-wide v2, 0x10b00000009L

    .line 366
    invoke-virtual {v1, v9, v2, v3}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 368
    :cond_b9
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_c5

    const-wide v2, 0x10b0000000aL

    .line 369
    invoke-virtual {v1, v9, v2, v3}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_c5
    const-wide v1, 0x1080000000bL

    .line 371
    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x1080000000cL

    .line 372
    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 373
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    const-wide v12, 0x10500000001L

    if-nez v1, :cond_e6

    iget v1, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v1, :cond_101

    :cond_e6
    const-wide v1, 0x10b0000000dL

    .line 374
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 375
    iget v3, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    invoke-virtual {v9, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 376
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    const-wide v4, 0x10b00000002L

    invoke-virtual {v3, v9, v4, v5}, Landroid/app/Notification;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 377
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_101
    const-wide v2, 0x10b0000000eL

    .line 379
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x10b0000000fL

    .line 380
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    move-wide v6, v15

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x10b00000010L

    .line 382
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x10b00000011L

    .line 383
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v1, 0x10800000012L

    .line 384
    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x1080000001bL

    .line 385
    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 388
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-nez v1, :cond_153

    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-nez v1, :cond_153

    iget v1, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-eqz v1, :cond_14d

    goto :goto_153

    :cond_14d
    const-wide v4, 0x10800000002L

    goto :goto_187

    :cond_153
    :goto_153
    const-wide v1, 0x10b00000013L

    .line 389
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x10800000001L

    .line 390
    iget-boolean v5, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    invoke-virtual {v9, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 391
    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    const-wide v4, 0x10800000002L

    invoke-virtual {v9, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v6, 0x10800000003L

    .line 392
    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    invoke-virtual {v9, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v6, 0x10500000005L

    .line 393
    iget v3, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    invoke-virtual {v9, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 394
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 397
    :goto_187
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-eqz v1, :cond_1af

    const-wide v1, 0x10b00000014L

    .line 398
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 399
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {v9, v12, v13, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 400
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    invoke-virtual {v9, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10b00000003L

    .line 401
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    move-object/from16 v1, p1

    move-wide v12, v6

    move-wide v6, v15

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 403
    invoke-virtual {v9, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 405
    :cond_1af
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    const-wide/16 v12, 0x0

    if-nez v1, :cond_1bb

    iget-wide v1, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    cmp-long v1, v1, v12

    if-eqz v1, :cond_1c8

    :cond_1bb
    const-wide v2, 0x10b00000015L

    .line 406
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    move-object/from16 v1, p1

    move-wide v6, v15

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 408
    :cond_1c8
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    if-nez v1, :cond_1de

    iget v1, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    if-nez v1, :cond_1de

    iget-wide v1, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide v3, v0, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    sub-long v3, v1, v3

    cmp-long v3, v3, v12

    if-nez v3, :cond_1de

    cmp-long v1, v1, v12

    if-eqz v1, :cond_218

    :cond_1de
    const-wide v1, 0x10b00000016L

    .line 410
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 411
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    const-wide v2, 0x10500000001L

    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10b00000002L

    .line 412
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide v6, v0, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    sub-long/2addr v4, v6

    move-object/from16 v1, p1

    move-wide v6, v15

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x10b00000003L

    .line 414
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v1, 0x10500000004L

    .line 416
    iget v3, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 417
    invoke-virtual {v9, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 420
    :cond_218
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_23f

    .line 421
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v14

    :goto_227
    if-ge v8, v7, :cond_23f

    .line 423
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    const-wide v3, 0x20b00000017L

    move-object/from16 v2, p1

    move-wide v5, v15

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ServiceRecord$StartItem;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_227

    .line 427
    :cond_23f
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_266

    .line 428
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v14

    :goto_24e
    if-ge v8, v7, :cond_266

    .line 430
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    const-wide v3, 0x20b00000018L

    move-object/from16 v2, p1

    move-wide v5, v15

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ServiceRecord$StartItem;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_24e

    .line 433
    :cond_266
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_28a

    .line 434
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move v2, v14

    :goto_275
    if-ge v2, v1, :cond_28a

    .line 436
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/IntentBindRecord;

    const-wide v4, 0x20b00000019L

    .line 437
    invoke-virtual {v3, v9, v4, v5}, Lcom/android/server/am/IntentBindRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_275

    .line 440
    :cond_28a
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_2be

    .line 441
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move v2, v14

    :goto_299
    if-ge v2, v1, :cond_2be

    .line 443
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move v4, v14

    .line 444
    :goto_2a4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2bb

    .line 445
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    const-wide v6, 0x20b0000001aL

    invoke-virtual {v5, v9, v6, v7}, Lcom/android/server/am/ConnectionRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2a4

    :cond_2bb
    add-int/lit8 v2, v2, 0x1

    goto :goto_299

    .line 449
    :cond_2be
    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ServiceRecord$StartItem;",
            ">;J)V"
        }
    .end annotation

    .line 310
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_89

    .line 312
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 313
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " id="

    .line 314
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-eqz v2, :cond_32

    const-string v2, " dur="

    .line 316
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    iget-wide v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    invoke-static {v2, v3, p4, p5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 319
    :cond_32
    iget v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    if-eqz v2, :cond_40

    const-string v2, " dc="

    .line 320
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 322
    :cond_40
    iget v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    if-eqz v2, :cond_4e

    const-string v2, " dxc="

    .line 323
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    :cond_4e
    const-string v2, ""

    .line 325
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  intent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_67

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6d

    :cond_67
    const-string/jumbo v2, "null"

    .line 328
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    :goto_6d
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    if-eqz v2, :cond_7e

    .line 330
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  neededGrants="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 331
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 333
    :cond_7e
    iget-object v1, v1, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-eqz v1, :cond_85

    .line 334
    invoke-virtual {v1, p1, p2}, Lcom/android/server/uri/UriPermissionOwner;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_85
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    :cond_89
    return-void
.end method

.method public findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;
    .registers 8

    .line 964
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_24

    .line 966
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 967
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    if-ne v3, p1, :cond_21

    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    if-ne v3, p2, :cond_21

    if-eqz p3, :cond_20

    .line 968
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_20
    return-object v2

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public forceClearTracker()V
    .registers 3

    .line 643
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    .line 644
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    const/4 v0, 0x0

    .line 645
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    :cond_b
    return-void
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 1212
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getConnections()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;>;"
        }
    .end annotation

    .line 728
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getExclusiveOriginatingToken()Landroid/os/IBinder;
    .registers 6

    .line 888
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByBinding:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mBgActivityStartsByStartOriginatingTokens:Ljava/util/List;

    .line 889
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_2f

    .line 892
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mBgActivityStartsByStartOriginatingTokens:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 893
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->mBgActivityStartsByStartOriginatingTokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    :goto_1e
    if-ge v3, v2, :cond_2e

    .line 894
    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->mBgActivityStartsByStartOriginatingTokens:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    if-eq v4, v0, :cond_2b

    return-object v1

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_2e
    return-object v0

    :cond_2f
    :goto_2f
    return-object v1
.end method

.method public getLastStartId()I
    .registers 1

    .line 977
    iget p0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    return p0
.end method

.method public getTracker()Lcom/android/internal/app/procstats/ServiceState;
    .registers 11

    .line 629
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_5

    return-object v0

    .line 632
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_26

    .line 633
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-wide v6, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v8, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ProcessStatsService;->getServiceState(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 637
    invoke-virtual {v0, p0}, Lcom/android/internal/app/procstats/ServiceState;->applyNewOwner(Ljava/lang/Object;)V

    .line 639
    :cond_26
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    return-object p0
.end method

.method public hasAutoCreateConnections()Z
    .registers 6

    .line 931
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_2b

    .line 932
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 933
    :goto_13
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_28

    .line 934
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    iget v4, v4, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/2addr v4, v1

    if-eqz v4, :cond_25

    return v1

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2b
    return v2
.end method

.method public makeNextStartId()I
    .registers 3

    .line 981
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-ge v0, v1, :cond_a

    .line 983
    iput v1, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    .line 985
    :cond_a
    iget p0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    return p0
.end method

.method public makeRestarting(IJ)V
    .registers 14

    .line 650
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-nez v0, :cond_27

    .line 651
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_22

    .line 652
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-wide v6, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v8, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ProcessStatsService;->getServiceState(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 658
    :cond_22
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-nez v0, :cond_27

    return-void

    .line 662
    :cond_27
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setRestarting(ZIJ)V

    return-void
.end method

.method public postNotification()V
    .registers 11

    .line 1008
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_4b

    .line 1009
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1010
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    .line 1013
    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1014
    iget v8, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1015
    iget-object v6, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 1017
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v0, :cond_3c

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Posting notification "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for foreground service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_3c
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ServiceRecord$2;

    move-object v2, v1

    move-object v3, p0

    move-object v9, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/ServiceRecord$2;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;ILandroid/app/Notification;IILcom/android/server/am/ServiceRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4b
    return-void
.end method

.method public removeConnection(Landroid/os/IBinder;)V
    .registers 3

    .line 747
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_15

    .line 750
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    .line 751
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    :cond_15
    return-void
.end method

.method public resetRestartCounter()V
    .registers 3

    const/4 v0, 0x0

    .line 956
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    const-wide/16 v0, 0x0

    .line 957
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 958
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    .line 959
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->mEarliestRestartTime:J

    .line 960
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    return-void
.end method

.method public retrieveAppBindingLocked(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/AppBindRecord;
    .registers 5

    .line 913
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 914
    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/IntentBindRecord;

    if-nez p1, :cond_19

    .line 916
    new-instance p1, Lcom/android/server/am/IntentBindRecord;

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/IntentBindRecord;-><init>(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent$FilterComparison;)V

    .line 917
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    :cond_19
    iget-object v0, p1, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppBindRecord;

    if-eqz v0, :cond_24

    return-object v0

    .line 923
    :cond_24
    new-instance v0, Lcom/android/server/am/AppBindRecord;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/AppBindRecord;-><init>(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;Lcom/android/server/am/ProcessRecord;)V

    .line 924
    iget-object p0, p1, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public setAllowedBgActivityStartsByBinding(Z)V
    .registers 2

    .line 781
    iput-boolean p1, p0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByBinding:Z

    .line 782
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->updateParentProcessBgActivityStartsToken()V

    return-void
.end method

.method public final setAllowedBgActivityStartsByStart(Z)V
    .registers 2

    .line 849
    iput-boolean p1, p0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByStart:Z

    .line 850
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->updateParentProcessBgActivityStartsToken()V

    return-void
.end method

.method public setProcess(Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;)V
    .registers 7

    if-eqz p1, :cond_2f

    .line 671
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_14

    if-eq p2, p1, :cond_14

    .line 674
    invoke-virtual {p2, p0}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 675
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object p3, p0, Lcom/android/server/am/ServiceRecord;->mCleanUpAllowBgActivityStartsByStartCallback:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 679
    :cond_14
    iget-boolean p2, p0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByStart:Z

    if-eqz p2, :cond_1a

    move-object p3, p1

    goto :goto_1b

    :cond_1a
    const/4 p3, 0x0

    .line 680
    :goto_1b
    iput-object p3, p0, Lcom/android/server/am/ServiceRecord;->mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

    if-nez p2, :cond_28

    .line 681
    iget-boolean p2, p0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByBinding:Z

    if-eqz p2, :cond_24

    goto :goto_28

    .line 686
    :cond_24
    invoke-virtual {p1, p0}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    goto :goto_2f

    .line 684
    :cond_28
    :goto_28
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getExclusiveOriginatingToken()Landroid/os/IBinder;

    move-result-object p2

    .line 683
    invoke-virtual {p1, p0, p2}, Lcom/android/server/am/ProcessRecord;->addOrUpdateAllowBackgroundActivityStartsToken(Landroid/os/Binder;Landroid/os/IBinder;)V

    .line 689
    :cond_2f
    :goto_2f
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_4a

    if-eq p2, p1, :cond_4a

    .line 693
    iget-boolean p3, p0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByStart:Z

    if-nez p3, :cond_3c

    .line 694
    invoke-virtual {p2, p0}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 696
    :cond_3c
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    .line 697
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    .line 699
    :cond_4a
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 700
    iget p2, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    const/4 p3, 0x0

    if-lez p2, :cond_66

    if-eqz p1, :cond_66

    .line 701
    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 702
    invoke-virtual {p2, p0}, Lcom/android/server/am/ProcessServiceRecord;->setConnectionService(Lcom/android/server/am/ServiceRecord;)V

    .line 703
    iget p4, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    invoke-virtual {p2, p4}, Lcom/android/server/am/ProcessServiceRecord;->setConnectionGroup(I)V

    .line 704
    iget p4, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    invoke-virtual {p2, p4}, Lcom/android/server/am/ProcessServiceRecord;->setConnectionImportance(I)V

    .line 705
    iput p3, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    iput p3, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 708
    :cond_66
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_6e
    if-ltz p2, :cond_94

    .line 709
    iget-object p4, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {p4, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/ArrayList;

    move v0, p3

    .line 710
    :goto_79
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_91

    .line 711
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    if-eqz p1, :cond_8b

    .line 713
    invoke-virtual {v1}, Lcom/android/server/am/ConnectionRecord;->startAssociationIfNeeded()V

    goto :goto_8e

    .line 715
    :cond_8b
    invoke-virtual {v1}, Lcom/android/server/am/ConnectionRecord;->stopAssociation()V

    :goto_8e
    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    :cond_91
    add-int/lit8 p2, p2, -0x1

    goto :goto_6e

    :cond_94
    if-eqz p1, :cond_a0

    .line 721
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    .line 722
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    :cond_a0
    return-void
.end method

.method public final signalForegroundServiceNotification(Ljava/lang/String;IIZ)V
    .registers 8

    .line 1163
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p2

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1164
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mForegroundServiceStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_10
    if-ltz v0, :cond_26

    .line 1165
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mForegroundServiceStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, p1, v2, p3, p4}, Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;->onForegroundServiceNotificationUpdated(Ljava/lang/String;IIZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 1168
    :cond_26
    monitor-exit p2
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2b
    move-exception p0

    :try_start_2c
    monitor-exit p2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public stripForegroundServiceFlagFromNotification()V
    .registers 6

    .line 1172
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1173
    iget v1, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 1174
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1178
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v4, Lcom/android/server/am/ServiceRecord$4;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/android/server/am/ServiceRecord$4;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1200
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 1203
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ServiceRecord{"

    .line 1204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u"

    .line 1206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 1207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    return-object v0
.end method

.method public updateAllowlistManager()V
    .registers 8

    const/4 v0, 0x0

    .line 943
    iput-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    .line 944
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_b
    if-ltz v1, :cond_32

    .line 945
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move v4, v0

    .line 946
    :goto_16
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2f

    .line 947
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    iget v5, v5, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v6, 0x1000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_2c

    .line 948
    iput-boolean v2, p0, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    return-void

    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_32
    return-void
.end method

.method public final updateFgsHasNotificationPermission()V
    .registers 5

    .line 990
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 991
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 993
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v3, Lcom/android/server/am/ServiceRecord$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/am/ServiceRecord$1;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateIsAllowedBgActivityStartsByBinding()V
    .registers 9

    .line 765
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ltz v0, :cond_33

    .line 766
    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move v5, v2

    .line 767
    :goto_15
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2d

    .line 768
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    iget v6, v6, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v7, 0x100000

    and-int/2addr v6, v7

    if-eqz v6, :cond_2a

    move v3, v1

    goto :goto_2d

    :cond_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_2d
    :goto_2d
    if-eqz v3, :cond_30

    goto :goto_33

    :cond_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 777
    :cond_33
    :goto_33
    invoke-virtual {p0, v3}, Lcom/android/server/am/ServiceRecord;->setAllowedBgActivityStartsByBinding(Z)V

    return-void
.end method

.method public updateKeepWarmLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ams"
        }
    .end annotation

    .line 904
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 905
    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    if-eq v0, v1, :cond_3a

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 906
    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->isCurrentProfile(I)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    .line 907
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v4, v4, Landroid/content/pm/ServiceInfo;->flags:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_3a
    const/4 v0, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    iput-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mKeepWarming:Z

    return-void
.end method

.method public final updateParentProcessBgActivityStartsToken()V
    .registers 3

    .line 865
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_5

    return-void

    .line 868
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByStart:Z

    if-nez v1, :cond_12

    iget-boolean v1, p0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByBinding:Z

    if-eqz v1, :cond_e

    goto :goto_12

    .line 873
    :cond_e
    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    goto :goto_19

    .line 871
    :cond_12
    :goto_12
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getExclusiveOriginatingToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ProcessRecord;->addOrUpdateAllowBackgroundActivityStartsToken(Landroid/os/Binder;Landroid/os/IBinder;)V

    :goto_19
    return-void
.end method
