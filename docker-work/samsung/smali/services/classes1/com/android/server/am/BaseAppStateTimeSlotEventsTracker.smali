.class public abstract Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;
.super Lcom/android/server/am/BaseAppStateEventsTracker;
.source "BaseAppStateTimeSlotEventsTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;,
        Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;,
        Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;",
        "U:",
        "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;",
        ">",
        "Lcom/android/server/am/BaseAppStateEventsTracker<",
        "TT;TU;>;"
    }
.end annotation


# static fields
.field public static final DEBUG_APP_STATE_TIME_SLOT_EVENT_TRACKER:Z = false

.field public static final TAG:Ljava/lang/String; = "BaseAppStateTimeSlotEventsTracker"


# instance fields
.field public mHandler:Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;

.field public final mTmpPkgs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "TU;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$mtrimEvents(Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->trimEvents()V

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
            "TT;>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BaseAppStateEventsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 67
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mTmpPkgs:Landroid/util/ArrayMap;

    .line 74
    new-instance p1, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;

    invoke-direct {p1, p0}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;-><init>(Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;)V

    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mHandler:Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;

    return-void
.end method


# virtual methods
.method public getTotalEventsLocked(IJ)I
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/server/am/BaseAppStateEventsTracker;->getUidEventsLocked(I)Lcom/android/server/am/BaseAppStateEvents;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;

    const/4 p1, 0x0

    if-nez p0, :cond_a

    return p1

    .line 142
    :cond_a
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/am/BaseAppStateEvents;->getTotalEvents(JI)I

    move-result p0

    return p0
.end method

.method public handleNewEvent(Ljava/lang/String;I)V
    .registers 11

    .line 82
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->shouldExempt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    return-void

    .line 85
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 88
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_17
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;

    if-nez v1, :cond_2c

    .line 91
    invoke-interface {p0, p2, p1}, Lcom/android/server/am/BaseAppStateEvents$Factory;->createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateEvents;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;

    .line 92
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v2, p2, p1, v1}, Lcom/android/server/am/UidProcessMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    const/4 v2, 0x0

    .line 94
    invoke-virtual {v1, v6, v7, v2}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->addEvent(JI)V

    .line 95
    invoke-virtual {v1, v6, v7, v2}, Lcom/android/server/am/BaseAppStateEvents;->getTotalEvents(JI)I

    move-result v5

    .line 96
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->getNumOfEventsThreshold()I

    move-result v1

    if-lt v5, v1, :cond_43

    const/4 v2, 0x1

    .line 97
    :cond_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_17 .. :try_end_44} :catchall_55

    if-eqz v2, :cond_54

    .line 99
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->onExcessiveEvents(Ljava/lang/String;IIJ)V

    :cond_54
    return-void

    :catchall_55
    move-exception p0

    .line 97
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public onMonitorEnabled(Z)V
    .registers 2

    if-nez p1, :cond_f

    .line 106
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 107
    :try_start_5
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {p0}, Lcom/android/server/am/UidProcessMap;->clear()V

    .line 108
    monitor-exit p1

    goto :goto_f

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0

    :cond_f
    :goto_f
    return-void
.end method

.method public onNewEvent(Ljava/lang/String;I)V
    .registers 4

    .line 78
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mHandler:Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onNumOfEventsThresholdChanged(I)V
    .registers 12

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 114
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v1}, Lcom/android/server/am/UidProcessMap;->getMap()Landroid/util/SparseArray;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_13
    if-ltz v2, :cond_3f

    .line 117
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 118
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_21
    if-ltz v4, :cond_3c

    .line 119
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;

    const/4 v8, 0x0

    .line 120
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/am/BaseAppStateEvents;->getTotalEvents(JI)I

    move-result v8

    if-lt v8, p1, :cond_39

    .line 123
    iget-object v9, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mTmpPkgs:Landroid/util/ArrayMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    add-int/lit8 v4, v4, -0x1

    goto :goto_21

    :cond_3c
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 127
    :cond_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_7 .. :try_end_40} :catchall_7b

    .line 128
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mTmpPkgs:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_48
    if-ltz p1, :cond_75

    .line 129
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mTmpPkgs:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;

    .line 130
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;

    iget-object v2, v0, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mTmpPkgs:Landroid/util/ArrayMap;

    .line 131
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    move v3, v4

    move-wide v4, v6

    .line 130
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->onExcessiveEvents(Ljava/lang/String;IIJ)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_48

    .line 133
    :cond_75
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mTmpPkgs:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void

    :catchall_7b
    move-exception p0

    .line 127
    :try_start_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw p0
.end method

.method public onUserInteractionStarted(Ljava/lang/String;I)V
    .registers 3

    .line 152
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->onUserInteractionStarted(Ljava/lang/String;I)V

    return-void
.end method

.method public final trimEvents()V
    .registers 5

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 147
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->getMaxTrackingDuration()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BaseAppStateEventsTracker;->trim(J)V

    return-void
.end method
