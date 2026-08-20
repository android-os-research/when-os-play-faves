.class public abstract Lcom/android/server/am/BaseAppStateDurationsTracker;
.super Lcom/android/server/am/BaseAppStateEventsTracker;
.source "BaseAppStateDurationsTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;,
        Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;",
        "U:",
        "Lcom/android/server/am/BaseAppStateDurations;",
        ">",
        "Lcom/android/server/am/BaseAppStateEventsTracker<",
        "TT;TU;>;"
    }
.end annotation


# static fields
.field public static final DEBUG_BASE_APP_STATE_DURATION_TRACKER:Z = false


# instance fields
.field public final mUidStateDurations:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;",
            ">;"
        }
    .end annotation
.end field


# direct methods
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

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BaseAppStateEventsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 44
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public dumpEventLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/am/BaseAppStateDurations;J)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "TU;J)V"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    iget v1, p3, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "(bg only)"

    .line 210
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    "

    if-eqz v0, :cond_74

    .line 211
    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateEvents;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_74

    .line 215
    :cond_2e
    invoke-interface {p0, p3}, Lcom/android/server/am/BaseAppStateEvents$Factory;->createAppStateEvents(Lcom/android/server/am/BaseAppStateEvents;)Lcom/android/server/am/BaseAppStateEvents;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BaseAppStateDurations;

    const/4 v3, 0x0

    .line 216
    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/BaseAppStateDurations;->subtract(Lcom/android/server/am/BaseAppStateDurations;I)V

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4, p5}, Lcom/android/server/am/BaseAppStateEvents;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 218
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "(fg + bg)"

    .line 219
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p1, p0, p4, p5}, Lcom/android/server/am/BaseAppStateEvents;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    return-void

    .line 212
    :cond_74
    :goto_74
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p1, p0, p4, p5}, Lcom/android/server/am/BaseAppStateEvents;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    return-void
.end method

.method public bridge synthetic dumpEventLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/am/BaseAppStateEvents;J)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 39
    check-cast p3, Lcom/android/server/am/BaseAppStateDurations;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BaseAppStateDurationsTracker;->dumpEventLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/am/BaseAppStateDurations;J)V

    return-void
.end method

.method public getTotalDurations(IJ)J
    .registers 5

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurations(IJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getTotalDurations(IJI)J
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    .line 137
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurations(IJIZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getTotalDurations(IJIZ)J
    .registers 8

    .line 121
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/BaseAppStateEventsTracker;->getUidEventsLocked(I)Lcom/android/server/am/BaseAppStateEvents;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateDurations;

    if-nez v1, :cond_f

    const-wide/16 p0, 0x0

    .line 124
    monitor-exit v0

    return-wide p0

    :cond_f
    if-eqz p5, :cond_25

    .line 127
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    if-eqz p0, :cond_25

    .line 128
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateEvents;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_25

    const/4 p1, 0x0

    .line 129
    invoke-virtual {v1, p0, p4, p1}, Lcom/android/server/am/BaseAppStateDurations;->subtract(Lcom/android/server/am/BaseAppStateDurations;II)V

    .line 132
    :cond_25
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurations(JI)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_2b
    move-exception p0

    .line 133
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public getTotalDurations(Ljava/lang/String;IJ)J
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    .line 117
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurations(Ljava/lang/String;IJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getTotalDurations(Ljava/lang/String;IJI)J
    .registers 13

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    .line 113
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurations(Ljava/lang/String;IJIZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getTotalDurations(Ljava/lang/String;IJIZ)J
    .registers 9

    .line 95
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/BaseAppStateDurations;

    if-nez p1, :cond_11

    const-wide/16 p0, 0x0

    .line 98
    monitor-exit v0

    return-wide p0

    :cond_11
    if-eqz p6, :cond_33

    .line 101
    iget-object p6, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {p6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    if-eqz p2, :cond_33

    .line 102
    invoke-virtual {p2}, Lcom/android/server/am/BaseAppStateEvents;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_33

    .line 103
    invoke-interface {p0, p1}, Lcom/android/server/am/BaseAppStateEvents$Factory;->createAppStateEvents(Lcom/android/server/am/BaseAppStateEvents;)Lcom/android/server/am/BaseAppStateEvents;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BaseAppStateDurations;

    const/4 p1, 0x0

    .line 104
    invoke-virtual {p0, p2, p5, p1}, Lcom/android/server/am/BaseAppStateDurations;->subtract(Lcom/android/server/am/BaseAppStateDurations;II)V

    .line 105
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurations(JI)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    .line 108
    :cond_33
    invoke-virtual {p1, p3, p4, p5}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurations(JI)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_39
    move-exception p0

    .line 109
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public getTotalDurationsSince(IJJ)J
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 193
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(IJJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getTotalDurationsSince(IJJI)J
    .registers 15

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .line 189
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(IJJIZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getTotalDurationsSince(IJJIZ)J
    .registers 16

    .line 173
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/BaseAppStateEventsTracker;->getUidEventsLocked(I)Lcom/android/server/am/BaseAppStateEvents;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/am/BaseAppStateDurations;

    if-nez v2, :cond_10

    const-wide/16 p0, 0x0

    .line 176
    monitor-exit v0

    return-wide p0

    :cond_10
    if-eqz p7, :cond_26

    .line 179
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    if-eqz p0, :cond_26

    .line 180
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateEvents;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_26

    const/4 p1, 0x0

    .line 181
    invoke-virtual {v2, p0, p6, p1}, Lcom/android/server/am/BaseAppStateDurations;->subtract(Lcom/android/server/am/BaseAppStateDurations;II)V

    :cond_26
    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    .line 184
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurationsSince(JJI)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_2f
    move-exception p0

    .line 185
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public getTotalDurationsSince(Ljava/lang/String;IJJ)J
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .line 168
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(Ljava/lang/String;IJJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getTotalDurationsSince(Ljava/lang/String;IJJI)J
    .registers 17

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    .line 164
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(Ljava/lang/String;IJJIZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalDurationsSince(Ljava/lang/String;IJJIZ)J
    .registers 16

    .line 146
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/server/am/BaseAppStateDurations;

    if-nez v1, :cond_12

    const-wide/16 p0, 0x0

    .line 149
    monitor-exit v0

    return-wide p0

    :cond_12
    if-eqz p8, :cond_38

    .line 152
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    if-eqz p1, :cond_38

    .line 153
    invoke-virtual {p1}, Lcom/android/server/am/BaseAppStateEvents;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_38

    .line 154
    invoke-interface {p0, v1}, Lcom/android/server/am/BaseAppStateEvents$Factory;->createAppStateEvents(Lcom/android/server/am/BaseAppStateEvents;)Lcom/android/server/am/BaseAppStateEvents;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/server/am/BaseAppStateDurations;

    const/4 p0, 0x0

    .line 155
    invoke-virtual {v1, p1, p7, p0}, Lcom/android/server/am/BaseAppStateDurations;->subtract(Lcom/android/server/am/BaseAppStateDurations;II)V

    move-wide v2, p3

    move-wide v4, p5

    move v6, p7

    .line 156
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurationsSince(JJI)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :cond_38
    move-wide v2, p3

    move-wide v4, p5

    move v6, p7

    .line 159
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurationsSince(JJI)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_41
    move-exception p0

    .line 160
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public onUidGone(I)V
    .registers 3

    const/16 v0, 0x14

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/BaseAppStateDurationsTracker;->onUidProcStateChanged(II)V

    return-void
.end method

.method public onUidProcStateChanged(II)V
    .registers 6

    .line 54
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v1}, Lcom/android/server/am/UidProcessMap;->getMap()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_11

    .line 57
    monitor-exit v0

    return-void

    .line 59
    :cond_11
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEventsTracker;->onUidProcStateChangedUncheckedLocked(II)V

    .line 60
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    if-nez v1, :cond_30

    .line 62
    new-instance v1, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;

    invoke-direct {v1, p1, v2}, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;-><init>(ILcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V

    .line 63
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_30
    const/4 p0, 0x4

    if-ge p2, p0, :cond_35

    const/4 p0, 0x1

    goto :goto_36

    :cond_35
    const/4 p0, 0x0

    .line 66
    :goto_36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 65
    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;->addEvent(ZJ)V

    .line 67
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception p0

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public onUntrackingUidLocked(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 91
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public reset()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 199
    invoke-super {p0}, Lcom/android/server/am/BaseAppStateEventsTracker;->reset()V

    .line 200
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_6
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 202
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public trimLocked(J)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 78
    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEventsTracker;->trimLocked(J)V

    .line 79
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_26

    .line 80
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    .line 81
    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/BaseAppStateEvents;->trim(J)V

    .line 82
    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateEvents;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 83
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_26
    return-void
.end method
