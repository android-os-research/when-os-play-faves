.class public final Lcom/android/server/am/AppFGSTracker;
.super Lcom/android/server/am/BaseAppStateDurationsTracker;
.source "AppFGSTracker.java"

# interfaces
.implements Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;,
        Lcom/android/server/am/AppFGSTracker$NotificationListener;,
        Lcom/android/server/am/AppFGSTracker$PackageDurations;,
        Lcom/android/server/am/AppFGSTracker$MyHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/am/BaseAppStateDurationsTracker<",
        "Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;",
        "Lcom/android/server/am/AppFGSTracker$PackageDurations;",
        ">;",
        "Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;"
    }
.end annotation


# static fields
.field public static final DEBUG_BACKGROUND_FGS_TRACKER:Z = false

.field public static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field public final mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/am/UidProcessMap<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

.field public final mNotificationListener:Lcom/android/server/am/AppFGSTracker$NotificationListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mProcessObserver:Landroid/app/IProcessObserver$Stub;

.field public final mTmpPkgDurations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/am/AppFGSTracker$PackageDurations;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9K0kZtuhWte1UBBGB46uRSD0WXU(Landroid/util/ArrayMap;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/am/AppFGSTracker;->lambda$checkLongRunningFgs$0(Landroid/util/ArrayMap;Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/am/AppFGSTracker;)Lcom/android/server/am/AppFGSTracker$MyHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckLongRunningFgs(Lcom/android/server/am/AppFGSTracker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/AppFGSTracker;->checkLongRunningFgs()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleForegroundServiceNotificationUpdated(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;IIZ)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppFGSTracker;->handleForegroundServiceNotificationUpdated(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleForegroundServicesChanged(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/AppFGSTracker;->handleForegroundServicesChanged(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleForegroundServicesChanged(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;IIZ)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppFGSTracker;->handleForegroundServicesChanged(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleNotificationPosted(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/AppFGSTracker;->handleNotificationPosted(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleNotificationRemoved(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/AppFGSTracker;->handleNotificationRemoved(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monBgFgsLongRunningThresholdChanged(Lcom/android/server/am/AppFGSTracker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/AppFGSTracker;->onBgFgsLongRunningThresholdChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monBgFgsMonitorEnabled(Lcom/android/server/am/AppFGSTracker;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppFGSTracker;->onBgFgsMonitorEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .registers 4

    const/4 v0, 0x0

    .line 180
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/am/AppFGSTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/am/AppRestrictionController;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/android/server/am/BaseAppStateTracker$Injector<",
            "Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;",
            ">;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 185
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BaseAppStateDurationsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 82
    new-instance p1, Lcom/android/server/am/UidProcessMap;

    invoke-direct {p1}, Lcom/android/server/am/UidProcessMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    .line 86
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mTmpPkgDurations:Landroid/util/ArrayMap;

    .line 88
    new-instance p1, Lcom/android/server/am/AppFGSTracker$NotificationListener;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppFGSTracker$NotificationListener;-><init>(Lcom/android/server/am/AppFGSTracker;)V

    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mNotificationListener:Lcom/android/server/am/AppFGSTracker$NotificationListener;

    .line 91
    new-instance p1, Lcom/android/server/am/AppFGSTracker$1;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppFGSTracker$1;-><init>(Lcom/android/server/am/AppFGSTracker;)V

    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    .line 186
    new-instance p1, Lcom/android/server/am/AppFGSTracker$MyHandler;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppFGSTracker$MyHandler;-><init>(Lcom/android/server/am/AppFGSTracker;)V

    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    .line 187
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    new-instance p2, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    invoke-direct {p2, p1, p0}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/AppFGSTracker;)V

    invoke-virtual {p1, p2}, Lcom/android/server/am/BaseAppStateTracker$Injector;->setPolicy(Lcom/android/server/am/BaseAppStatePolicy;)V

    return-void
.end method

.method public static foregroundServiceTypeToIndex(I)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    .line 512
    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    :goto_a
    return p0
.end method

.method public static indexToForegroundServiceType(I)I
    .registers 2

    .line 516
    sget v0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    if-ne p0, v0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    const/4 v0, 0x1

    sub-int/2addr p0, v0

    shl-int p0, v0, p0

    :goto_a
    return p0
.end method

.method public static synthetic lambda$checkLongRunningFgs$0(Landroid/util/ArrayMap;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 5

    .line 441
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 440
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final checkLongRunningFgs()V
    .registers 20

    move-object/from16 v0, p0

    .line 397
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    .line 398
    iget-object v2, v0, Lcom/android/server/am/AppFGSTracker;->mTmpPkgDurations:Landroid/util/ArrayMap;

    .line 399
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 400
    invoke-virtual {v1}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->getFgsLongRunningThreshold()J

    move-result-wide v5

    .line 401
    invoke-virtual {v1}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->getFgsLongRunningWindowSize()J

    move-result-wide v7

    sub-long v7, v3, v7

    const-wide/16 v9, 0x0

    .line 402
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 404
    iget-object v9, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 405
    :try_start_23
    iget-object v10, v0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v10}, Lcom/android/server/am/UidProcessMap;->getMap()Landroid/util/SparseArray;

    move-result-object v10

    .line 406
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    :goto_2f
    if-ltz v11, :cond_8b

    .line 407
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArrayMap;

    .line 408
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v14

    sub-int/2addr v14, v12

    :goto_3c
    if-ltz v14, :cond_85

    .line 409
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    .line 410
    invoke-virtual {v15}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->hasForegroundServices()Z

    move-result v16

    if-eqz v16, :cond_63

    invoke-virtual {v15}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->isLongRunning()Z

    move-result v16

    if-nez v16, :cond_63

    .line 411
    invoke-virtual {v0, v15, v3, v4}, Lcom/android/server/am/AppFGSTracker;->getTotalDurations(Lcom/android/server/am/AppFGSTracker$PackageDurations;J)J

    move-result-wide v16

    cmp-long v18, v16, v5

    if-ltz v18, :cond_63

    .line 413
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v15, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v12, 0x1

    .line 414
    invoke-virtual {v15, v12}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->setIsLongRunning(Z)V

    .line 424
    :cond_63
    invoke-virtual {v15}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->hasForegroundServices()Z

    move-result v12

    if-eqz v12, :cond_7d

    invoke-virtual {v15}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->getForegroundServiceType()I

    move-result v12

    if-nez v12, :cond_7d

    .line 425
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v12

    move-wide/from16 v16, v5

    iget-object v5, v15, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    iget v6, v15, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    invoke-virtual {v12, v5, v6}, Lcom/android/server/am/MARsHandler;->sendFGSRestrictionTargetMsgToMainHandler(Ljava/lang/String;I)V

    goto :goto_7f

    :cond_7d
    move-wide/from16 v16, v5

    :goto_7f
    add-int/lit8 v14, v14, -0x1

    move-wide/from16 v5, v16

    const/4 v12, 0x1

    goto :goto_3c

    :cond_85
    move-wide/from16 v16, v5

    add-int/lit8 v11, v11, -0x1

    const/4 v12, 0x1

    goto :goto_2f

    .line 430
    :cond_8b
    invoke-virtual {v0, v7, v8}, Lcom/android/server/am/BaseAppStateEventsTracker;->trim(J)V

    .line 431
    monitor-exit v9
    :try_end_8f
    .catchall {:try_start_23 .. :try_end_8f} :catchall_d5

    .line 433
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-lez v5, :cond_ca

    .line 436
    new-array v6, v5, [Ljava/lang/Integer;

    const/4 v7, 0x0

    :goto_98
    if-ge v7, v5, :cond_a3

    .line 438
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_98

    .line 440
    :cond_a3
    new-instance v7, Lcom/android/server/am/AppFGSTracker$$ExternalSyntheticLambda0;

    invoke-direct {v7, v2}, Lcom/android/server/am/AppFGSTracker$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArrayMap;)V

    invoke-static {v6, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    :goto_ad
    if-ltz v5, :cond_c7

    .line 444
    aget-object v7, v6, v5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    .line 445
    iget-object v8, v7, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    iget v9, v7, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    iget v7, v7, Lcom/android/server/am/BaseAppStateEvents;->mExemptReason:I

    invoke-virtual {v1, v8, v9, v7}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->onLongRunningFgs(Ljava/lang/String;II)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_ad

    .line 447
    :cond_c7
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 450
    :cond_ca
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 451
    :try_start_cd
    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/AppFGSTracker;->scheduleDurationCheckLocked(J)V

    .line 452
    monitor-exit v1

    return-void

    :catchall_d2
    move-exception v0

    monitor-exit v1
    :try_end_d4
    .catchall {:try_start_cd .. :try_end_d4} :catchall_d2

    throw v0

    :catchall_d5
    move-exception v0

    .line 431
    :try_start_d6
    monitor-exit v9
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    throw v0
.end method

.method public createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/AppFGSTracker$PackageDurations;
    .registers 5

    .line 211
    new-instance v0, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/android/server/am/AppFGSTracker$PackageDurations;-><init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;Lcom/android/server/am/AppFGSTracker;)V

    return-object v0
.end method

.method public createAppStateEvents(Lcom/android/server/am/AppFGSTracker$PackageDurations;)Lcom/android/server/am/AppFGSTracker$PackageDurations;
    .registers 2

    .line 216
    new-instance p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    invoke-direct {p0, p1}, Lcom/android/server/am/AppFGSTracker$PackageDurations;-><init>(Lcom/android/server/am/AppFGSTracker$PackageDurations;)V

    return-object p0
.end method

.method public bridge synthetic createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateEvents;
    .registers 3

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppFGSTracker;->createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/AppFGSTracker$PackageDurations;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createAppStateEvents(Lcom/android/server/am/BaseAppStateEvents;)Lcom/android/server/am/BaseAppStateEvents;
    .registers 2

    .line 74
    check-cast p1, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppFGSTracker;->createAppStateEvents(Lcom/android/server/am/AppFGSTracker$PackageDurations;)Lcom/android/server/am/AppFGSTracker$PackageDurations;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 593
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "APP FOREGROUND SERVICE TRACKER:"

    .line 594
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEventsTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public dumpOthers(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 15

    .line 600
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "APPS WITH ACTIVE FOREGROUND SERVICES:"

    .line 601
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 603
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 604
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    .line 605
    invoke-virtual {v1}, Lcom/android/server/am/UidProcessMap;->getMap()Landroid/util/SparseArray;

    move-result-object v1

    .line 606
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_30

    .line 607
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "(none)"

    .line 608
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    :cond_30
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_36
    if-ge v4, v2, :cond_73

    .line 611
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 612
    invoke-static {v5}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v6

    .line 613
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 614
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    move v9, v3

    :goto_4b
    if-ge v9, v8, :cond_70

    .line 615
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 616
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v11, 0x2f

    .line 618
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(C)V

    .line 619
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, " notification="

    .line 620
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p0, v10, v5}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServiceNotificationsLocked(Ljava/lang/String;I)Z

    move-result v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4b

    :cond_70
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 624
    :cond_73
    monitor-exit v0

    return-void

    :catchall_75
    move-exception p0

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_1c .. :try_end_77} :catchall_75

    throw p0
.end method

.method public getTotalDurations(IJ)J
    .registers 5

    const/4 v0, 0x0

    .line 528
    invoke-static {v0}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v0

    .line 527
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurations(IJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getTotalDurations(Lcom/android/server/am/AppFGSTracker$PackageDurations;J)J
    .registers 10

    .line 521
    iget-object v1, p1, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    const/4 p1, 0x0

    .line 522
    invoke-static {p1}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v5

    move-object v0, p0

    move-wide v3, p2

    .line 521
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurations(Ljava/lang/String;IJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getTrackerInfoForStatsd(I)[B
    .registers 7

    .line 578
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/AppFGSTracker;->getTotalDurations(IJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 583
    :cond_10
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v3, 0x10800000001L

    .line 585
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServiceNotifications(I)Z

    move-result p0

    .line 584
    invoke-virtual {v2, v3, v4, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide p0, 0x10300000002L

    .line 586
    invoke-virtual {v2, p0, p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 587
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 588
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .registers 1
    .annotation build Lcom/android/server/am/AppRestrictionController$TrackerType;
    .end annotation

    const/4 p0, 0x3

    return p0
.end method

.method public final handleForegroundServiceNotificationUpdated(Ljava/lang/String;IIZ)V
    .registers 13

    .line 256
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    if-nez p4, :cond_1e

    if-nez v1, :cond_19

    .line 260
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 261
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/am/UidProcessMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    const/4 p0, 0x0

    .line 263
    invoke-virtual {v1, p3, p0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_5a

    :cond_1e
    if-eqz v1, :cond_5a

    .line 266
    invoke-virtual {v1, p3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p3

    if-ltz p3, :cond_5a

    .line 268
    invoke-virtual {v1, p3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p4

    .line 269
    invoke-virtual {v1, p3}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 270
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p3

    if-nez p3, :cond_38

    .line 271
    iget-object p3, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/am/UidProcessMap;->remove(ILjava/lang/String;)Ljava/lang/Object;

    .line 275
    :cond_38
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_3e
    if-ltz p3, :cond_4b

    .line 276
    invoke-virtual {v1, p3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 278
    monitor-exit v0

    return-void

    :cond_48
    add-int/lit8 p3, p3, -0x1

    goto :goto_3e

    :cond_4b
    if-eqz p4, :cond_5a

    const/4 v4, 0x0

    .line 284
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/16 v7, 0x8

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    .line 283
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    .line 290
    :cond_5a
    :goto_5a
    monitor-exit v0

    return-void

    :catchall_5c
    move-exception p0

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public final handleForegroundServicesChanged(Ljava/lang/String;II)V
    .registers 10

    .line 456
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStatePolicy;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 459
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/am/BaseAppStatePolicy;->shouldExemptUid(I)I

    move-result v0

    .line 460
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 466
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 467
    :try_start_22
    iget-object v4, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v4, p2, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    if-nez v4, :cond_3e

    .line 469
    new-instance v4, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    iget-object v5, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;

    invoke-direct {v4, p2, p1, v5, p0}, Lcom/android/server/am/AppFGSTracker$PackageDurations;-><init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;Lcom/android/server/am/AppFGSTracker;)V

    .line 470
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {p0, p2, p1, v4}, Lcom/android/server/am/UidProcessMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_3e
    invoke-virtual {v4, p3, v1, v2}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->setForegroundServiceType(IJ)V

    .line 473
    iput v0, v4, Lcom/android/server/am/BaseAppStateEvents;->mExemptReason:I

    .line 474
    monitor-exit v3

    return-void

    :catchall_45
    move-exception p0

    monitor-exit v3
    :try_end_47
    .catchall {:try_start_22 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public final handleForegroundServicesChanged(Ljava/lang/String;IIZ)V
    .registers 10

    .line 221
    iget-object p2, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p2}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    invoke-virtual {p2}, Lcom/android/server/am/BaseAppStatePolicy;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_f

    return-void

    .line 224
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 226
    iget-object p2, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p2}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    invoke-virtual {p2, p3}, Lcom/android/server/am/BaseAppStatePolicy;->shouldExemptUid(I)I

    move-result p2

    .line 232
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 233
    :try_start_22
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v3, p3, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    if-nez v3, :cond_35

    .line 235
    invoke-virtual {p0, p3, p1}, Lcom/android/server/am/AppFGSTracker;->createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/AppFGSTracker$PackageDurations;

    move-result-object v3

    .line 236
    iget-object v4, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v4, p3, p1, v3}, Lcom/android/server/am/UidProcessMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_35
    invoke-virtual {v3}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->isLongRunning()Z

    move-result v4

    .line 239
    invoke-virtual {v3, p4, v0, v1}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->addEvent(ZJ)V

    const/4 p4, 0x0

    if-eqz v4, :cond_47

    .line 240
    invoke-virtual {v3}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->hasForegroundServices()Z

    move-result v4

    if-nez v4, :cond_47

    const/4 v4, 0x1

    goto :goto_48

    :cond_47
    move v4, p4

    :goto_48
    if-eqz v4, :cond_4d

    .line 242
    invoke-virtual {v3, p4}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->setIsLongRunning(Z)V

    .line 244
    :cond_4d
    iput p2, v3, Lcom/android/server/am/BaseAppStateEvents;->mExemptReason:I

    .line 246
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppFGSTracker;->scheduleDurationCheckLocked(J)V

    .line 247
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_22 .. :try_end_53} :catchall_61

    if-eqz v4, :cond_60

    .line 250
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->onLongRunningFgsGone(Ljava/lang/String;I)V

    :cond_60
    return-void

    :catchall_61
    move-exception p0

    .line 247
    :try_start_62
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw p0
.end method

.method public final handleNotificationPosted(Ljava/lang/String;II)V
    .registers 16

    .line 308
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_44

    .line 312
    invoke-virtual {v1, p3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p3

    if-gez p3, :cond_14

    goto :goto_44

    .line 315
    :cond_14
    invoke-virtual {v1, p3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 317
    monitor-exit v0

    return-void

    :cond_1c
    const/4 v2, 0x0

    .line 321
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_23
    if-ltz v3, :cond_30

    .line 322
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_2d

    move v2, v4

    goto :goto_30

    :cond_2d
    add-int/lit8 v3, v3, -0x1

    goto :goto_23

    .line 327
    :cond_30
    :goto_30
    invoke-virtual {v1, p3, v4}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    if-nez v2, :cond_42

    const/4 v8, 0x1

    .line 331
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const/16 v11, 0x8

    move-object v5, p0

    move v6, p2

    move-object v7, p1

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    .line 334
    :cond_42
    monitor-exit v0

    return-void

    .line 313
    :cond_44
    :goto_44
    monitor-exit v0

    return-void

    :catchall_46
    move-exception p0

    .line 334
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public final handleNotificationRemoved(Ljava/lang/String;II)V
    .registers 12

    .line 338
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_42

    .line 342
    invoke-virtual {v1, p3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p3

    if-gez p3, :cond_14

    goto :goto_42

    .line 345
    :cond_14
    invoke-virtual {v1, p3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 347
    monitor-exit v0

    return-void

    :cond_1c
    const/4 v2, 0x0

    .line 349
    invoke-virtual {v1, p3, v2}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    .line 351
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_26
    if-ltz p3, :cond_33

    .line 352
    invoke-virtual {v1, p3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 354
    monitor-exit v0

    return-void

    :cond_30
    add-int/lit8 p3, p3, -0x1

    goto :goto_26

    :cond_33
    const/4 v4, 0x0

    .line 358
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/16 v7, 0x8

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    .line 360
    monitor-exit v0

    return-void

    .line 343
    :cond_42
    :goto_42
    monitor-exit v0

    return-void

    :catchall_44
    move-exception p0

    .line 360
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw p0
.end method

.method public hasForegroundServiceNotifications(I)Z
    .registers 7

    .line 561
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 562
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    .line 563
    invoke-virtual {v1}, Lcom/android/server/am/UidProcessMap;->getMap()Landroid/util/SparseArray;

    move-result-object v1

    .line 564
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-eqz v1, :cond_2a

    .line 566
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_17
    if-ltz v2, :cond_2a

    .line 567
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4, p1}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServiceNotificationsLocked(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 568
    monitor-exit v0

    return v3

    :cond_27
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    .line 572
    :cond_2a
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public hasForegroundServiceNotifications(Ljava/lang/String;I)Z
    .registers 4

    .line 555
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServiceNotificationsLocked(Ljava/lang/String;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 557
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final hasForegroundServiceNotificationsLocked(Ljava/lang/String;I)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 295
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    const/4 p1, 0x0

    if-eqz p0, :cond_24

    .line 296
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p2

    if-nez p2, :cond_12

    goto :goto_24

    .line 299
    :cond_12
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_18
    if-ltz p2, :cond_24

    .line 300
    invoke-virtual {p0, p2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_21

    return v0

    :cond_21
    add-int/lit8 p2, p2, -0x1

    goto :goto_18

    :cond_24
    :goto_24
    return p1
.end method

.method public hasForegroundServices(I)Z
    .registers 5

    .line 539
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 540
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {p0}, Lcom/android/server/am/UidProcessMap;->getMap()Landroid/util/SparseArray;

    move-result-object p0

    .line 541
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-eqz p0, :cond_2a

    .line 543
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    :goto_17
    if-ltz p1, :cond_2a

    .line 544
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    .line 545
    invoke-virtual {v2}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->hasForegroundServices()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 546
    monitor-exit v0

    return v1

    :cond_27
    add-int/lit8 p1, p1, -0x1

    goto :goto_17

    :cond_2a
    const/4 p0, 0x0

    .line 550
    monitor-exit v0

    return p0

    :catchall_2d
    move-exception p0

    .line 551
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public hasForegroundServices(Ljava/lang/String;I)Z
    .registers 4

    .line 532
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    if-eqz p0, :cond_15

    .line 534
    invoke-virtual {p0}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->hasForegroundServices()Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    monitor-exit v0

    return p0

    :catchall_18
    move-exception p0

    .line 535
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public final onBgFgsLongRunningThresholdChanged()V
    .registers 4

    .line 503
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 504
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStatePolicy;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 505
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/AppFGSTracker;->scheduleDurationCheckLocked(J)V

    .line 507
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public final onBgFgsMonitorEnabled(Z)V
    .registers 5

    if-eqz p1, :cond_22

    .line 479
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 480
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppFGSTracker;->scheduleDurationCheckLocked(J)V

    .line 481
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1f

    .line 483
    :try_start_d
    iget-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mNotificationListener:Lcom/android/server/am/AppFGSTracker$NotificationListener;

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/server/am/AppFGSTracker$NotificationListener;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p0, -0x1

    invoke-virtual {p1, v0, v1, p0}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1e} :catch_36

    goto :goto_36

    :catchall_1f
    move-exception p0

    .line 481
    :try_start_20
    monitor-exit p1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0

    .line 491
    :cond_22
    :try_start_22
    iget-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mNotificationListener:Lcom/android/server/am/AppFGSTracker$NotificationListener;

    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_27

    .line 495
    :catch_27
    iget-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 496
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 497
    :try_start_30
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {p0}, Lcom/android/server/am/UidProcessMap;->clear()V

    .line 498
    monitor-exit p1

    :catch_36
    :goto_36
    return-void

    :catchall_37
    move-exception p0

    monitor-exit p1
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public onForegroundServiceNotificationUpdated(Ljava/lang/String;IIZ)V
    .registers 6

    .line 120
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 121
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 122
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 123
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    if-eqz p4, :cond_f

    .line 124
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_11

    :cond_f
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_11
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 125
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 126
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onForegroundServiceStateChanged(Ljava/lang/String;IIZ)V
    .registers 5

    .line 113
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    xor-int/lit8 p4, p4, 0x1

    invoke-virtual {p0, p4, p3, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSystemReady()V
    .registers 2

    .line 197
    invoke-super {p0}, Lcom/android/server/am/BaseAppStateTracker;->onSystemReady()V

    .line 198
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->addForegroundServiceStateListener(Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;)V

    .line 199
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    return-void
.end method

.method public reset()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 206
    invoke-super {p0}, Lcom/android/server/am/BaseAppStateDurationsTracker;->reset()V

    return-void
.end method

.method public final scheduleDurationCheckLocked(J)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/UidProcessMap;->getMap()Landroid/util/SparseArray;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-wide/16 v2, -0x1

    :goto_e
    if-ltz v1, :cond_3f

    .line 369
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 370
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_1c
    if-ltz v5, :cond_3c

    .line 371
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    .line 372
    invoke-virtual {v6}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->hasForegroundServices()Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-virtual {v6}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->isLongRunning()Z

    move-result v7

    if-eqz v7, :cond_31

    goto :goto_39

    .line 376
    :cond_31
    invoke-virtual {p0, v6, p1, p2}, Lcom/android/server/am/AppFGSTracker;->getTotalDurations(Lcom/android/server/am/AppFGSTracker$PackageDurations;J)J

    move-result-wide v6

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_39
    :goto_39
    add-int/lit8 v5, v5, -0x1

    goto :goto_1c

    :cond_3c
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 380
    :cond_3f
    iget-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v0, 0x0

    cmp-long p1, v2, v0

    if-ltz p1, :cond_68

    .line 384
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getServiceStartForegroundTimeout()J

    move-result-wide v4

    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 385
    invoke-virtual {p1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    invoke-virtual {p1}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->getFgsLongRunningThreshold()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long/2addr v4, v0

    .line 390
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    invoke-virtual {p0, p2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_68
    return-void
.end method
