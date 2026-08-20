.class public final Lcom/android/server/am/AppMediaSessionTracker;
.super Lcom/android/server/am/BaseAppStateDurationsTracker;
.source "AppMediaSessionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppMediaSessionTracker$AppMediaSessionPolicy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/am/BaseAppStateDurationsTracker<",
        "Lcom/android/server/am/AppMediaSessionTracker$AppMediaSessionPolicy;",
        "Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEBUG_MEDIA_SESSION_TRACKER:Z = false

.field public static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field public final mHandlerExecutor:Landroid/os/HandlerExecutor;

.field public final mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field public final mTmpMediaControllers:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$S5NmnIAuvvjt74bgXwXoFe71Yjc(Lcom/android/server/am/AppMediaSessionTracker;Ljava/util/List;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppMediaSessionTracker;->handleMediaSessionChanged(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monBgMediaSessionMonitorEnabled(Lcom/android/server/am/AppMediaSessionTracker;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppMediaSessionTracker;->onBgMediaSessionMonitorEnabled(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtrimDurations(Lcom/android/server/am/AppMediaSessionTracker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/AppMediaSessionTracker;->trimDurations()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .registers 4

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/am/AppMediaSessionTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

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
            "Lcom/android/server/am/AppMediaSessionTracker$AppMediaSessionPolicy;",
            ">;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BaseAppStateDurationsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 57
    new-instance p1, Lcom/android/server/am/AppMediaSessionTracker$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppMediaSessionTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppMediaSessionTracker;)V

    iput-object p1, p0, Lcom/android/server/am/AppMediaSessionTracker;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 61
    new-instance p1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {p1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppMediaSessionTracker;->mTmpMediaControllers:Lcom/android/internal/app/ProcessMap;

    .line 70
    new-instance p1, Landroid/os/HandlerExecutor;

    iget-object p2, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/am/AppMediaSessionTracker;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 71
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    new-instance p2, Lcom/android/server/am/AppMediaSessionTracker$AppMediaSessionPolicy;

    invoke-direct {p2, p1, p0}, Lcom/android/server/am/AppMediaSessionTracker$AppMediaSessionPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/AppMediaSessionTracker;)V

    invoke-virtual {p1, p2}, Lcom/android/server/am/BaseAppStateTracker$Injector;->setPolicy(Lcom/android/server/am/BaseAppStatePolicy;)V

    return-void
.end method


# virtual methods
.method public createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    .registers 4

    .line 76
    new-instance v0, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;-><init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V

    return-object v0
.end method

.method public createAppStateEvents(Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;)Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    .registers 2

    .line 81
    new-instance p0, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    invoke-direct {p0, p1}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;-><init>(Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;)V

    return-object p0
.end method

.method public bridge synthetic createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateEvents;
    .registers 3

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppMediaSessionTracker;->createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createAppStateEvents(Lcom/android/server/am/BaseAppStateEvents;)Lcom/android/server/am/BaseAppStateEvents;
    .registers 2

    .line 50
    check-cast p1, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppMediaSessionTracker;->createAppStateEvents(Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;)Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 171
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "APP MEDIA SESSION TRACKER:"

    .line 172
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
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

.method public getType()I
    .registers 1
    .annotation build Lcom/android/server/am/AppRestrictionController$TrackerType;
    .end annotation

    const/4 p0, 0x4

    return p0
.end method

.method public final handleMediaSessionChanged(Ljava/util/List;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz p1, :cond_b5

    .line 96
    iget-object v10, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 97
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 98
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_11
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    .line 99
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 100
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaSession$Token;->getUid()I

    move-result v15

    .line 101
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v1, v15, v14}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    if-nez v1, :cond_3c

    .line 103
    invoke-virtual {v0, v15, v14}, Lcom/android/server/am/AppMediaSessionTracker;->createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    move-result-object v1

    .line 104
    iget-object v2, v0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v2, v15, v14, v1}, Lcom/android/server/am/UidProcessMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_3c
    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;->isActive()Z

    move-result v2

    if-nez v2, :cond_51

    .line 107
    invoke-virtual {v1, v9, v11, v12}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;->addEvent(ZJ)V

    .line 108
    iget v2, v1, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    iget-object v3, v1, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-wide v5, v11

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    .line 112
    :cond_51
    iget-object v1, v0, Lcom/android/server/am/AppMediaSessionTracker;->mTmpMediaControllers:Lcom/android/internal/app/ProcessMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v14, v15, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 121
    :cond_59
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 122
    invoke-virtual {v1}, Lcom/android/server/am/UidProcessMap;->getMap()Landroid/util/SparseArray;

    move-result-object v13

    .line 123
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v9

    move v14, v1

    :goto_65
    if-ltz v14, :cond_ab

    .line 124
    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/util/ArrayMap;

    .line 125
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v9

    move v7, v1

    :goto_74
    if-ltz v7, :cond_a8

    .line 126
    invoke-virtual {v15, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    .line 127
    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;->isActive()Z

    move-result v2

    if-eqz v2, :cond_a3

    iget-object v2, v0, Lcom/android/server/am/AppMediaSessionTracker;->mTmpMediaControllers:Lcom/android/internal/app/ProcessMap;

    iget-object v3, v1, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    .line 128
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_a3

    .line 130
    invoke-virtual {v1, v8, v11, v12}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;->addEvent(ZJ)V

    .line 131
    iget v2, v1, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    iget-object v3, v1, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move-wide v5, v11

    move/from16 v17, v7

    move/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    goto :goto_a5

    :cond_a3
    move/from16 v17, v7

    :goto_a5
    add-int/lit8 v7, v17, -0x1

    goto :goto_74

    :cond_a8
    add-int/lit8 v14, v14, -0x1

    goto :goto_65

    .line 136
    :cond_ab
    monitor-exit v10
    :try_end_ac
    .catchall {:try_start_9 .. :try_end_ac} :catchall_b2

    .line 137
    iget-object v0, v0, Lcom/android/server/am/AppMediaSessionTracker;->mTmpMediaControllers:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->clear()V

    goto :goto_103

    :catchall_b2
    move-exception v0

    .line 136
    :try_start_b3
    monitor-exit v10
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    throw v0

    .line 139
    :cond_b5
    iget-object v10, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 141
    :try_start_b8
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 142
    invoke-virtual {v1}, Lcom/android/server/am/UidProcessMap;->getMap()Landroid/util/SparseArray;

    move-result-object v11

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 144
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v9

    move v14, v1

    :goto_c8
    if-ltz v14, :cond_102

    .line 145
    invoke-virtual {v11, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/util/ArrayMap;

    .line 146
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v9

    move v7, v1

    :goto_d7
    if-ltz v7, :cond_ff

    .line 147
    invoke-virtual {v15, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    .line 148
    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;->isActive()Z

    move-result v2

    if-eqz v2, :cond_fa

    .line 149
    invoke-virtual {v1, v8, v12, v13}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;->addEvent(ZJ)V

    .line 150
    iget v2, v1, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    iget-object v3, v1, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move-wide v5, v12

    move/from16 v17, v7

    move/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    goto :goto_fc

    :cond_fa
    move/from16 v17, v7

    :goto_fc
    add-int/lit8 v7, v17, -0x1

    goto :goto_d7

    :cond_ff
    add-int/lit8 v14, v14, -0x1

    goto :goto_c8

    .line 155
    :cond_102
    monitor-exit v10

    :goto_103
    return-void

    :catchall_104
    move-exception v0

    monitor-exit v10
    :try_end_106
    .catchall {:try_start_b8 .. :try_end_106} :catchall_104

    throw v0
.end method

.method public final onBgMediaSessionMonitorEnabled(Z)V
    .registers 5

    if-eqz p1, :cond_13

    .line 86
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object p1

    const/4 v0, 0x0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/server/am/AppMediaSessionTracker;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    iget-object p0, p0, Lcom/android/server/am/AppMediaSessionTracker;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    goto :goto_1e

    .line 89
    :cond_13
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/AppMediaSessionTracker;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {p1, p0}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    :goto_1e
    return-void
.end method

.method public final trimDurations()V
    .registers 5

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 161
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppMediaSessionTracker$AppMediaSessionPolicy;

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->getMaxTrackingDuration()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BaseAppStateEventsTracker;->trim(J)V

    return-void
.end method
