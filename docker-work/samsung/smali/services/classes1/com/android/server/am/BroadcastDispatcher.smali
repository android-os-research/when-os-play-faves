.class public Lcom/android/server/am/BroadcastDispatcher;
.super Ljava/lang/Object;
.source "BroadcastDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;,
        Lcom/android/server/am/BroadcastDispatcher$Dumper;,
        Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BroadcastDispatcher"


# instance fields
.field public mAlarm:Lcom/android/server/AlarmManagerInternal;

.field public final mAlarmBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;"
        }
    .end annotation
.end field

.field public final mAlarmListener:Lcom/android/server/AlarmManagerInternal$InFlightListener;

.field public final mAlarmUids:Landroid/util/SparseIntArray;

.field public final mConstants:Lcom/android/server/am/BroadcastConstants;

.field public mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

.field public final mDeferredBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mOrderedBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mQueue:Lcom/android/server/am/BroadcastQueue;

.field public mRecheckScheduled:Z

.field public final mScheduleRunnable:Ljava/lang/Runnable;

.field public mUser2Deferred:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAlarmBroadcasts(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeferredBroadcasts(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/am/BroadcastDispatcher;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmQueue(Lcom/android/server/am/BroadcastDispatcher;)Lcom/android/server/am/BroadcastQueue;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mQueue:Lcom/android/server/am/BroadcastQueue;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmRecheckScheduled(Lcom/android/server/am/BroadcastDispatcher;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mRecheckScheduled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sminsertLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->insertLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastConstants;Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 6

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmUids:Landroid/util/SparseIntArray;

    .line 172
    new-instance v0, Lcom/android/server/am/BroadcastDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BroadcastDispatcher$1;-><init>(Lcom/android/server/am/BroadcastDispatcher;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmListener:Lcom/android/server/AlarmManagerInternal$InFlightListener;

    .line 218
    new-instance v0, Lcom/android/server/am/BroadcastDispatcher$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/BroadcastDispatcher$2;-><init>(Lcom/android/server/am/BroadcastDispatcher;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mScheduleRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 230
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mRecheckScheduled:Z

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    .line 243
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    .line 494
    iput-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mQueue:Lcom/android/server/am/BroadcastQueue;

    .line 495
    iput-object p2, p0, Lcom/android/server/am/BroadcastDispatcher;->mConstants:Lcom/android/server/am/BroadcastConstants;

    .line 496
    iput-object p3, p0, Lcom/android/server/am/BroadcastDispatcher;->mHandler:Landroid/os/Handler;

    .line 497
    iput-object p4, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static findUidLocked(ILjava/util/ArrayList;)Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;)",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;"
        }
    .end annotation

    .line 1047
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_15

    .line 1049
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 1050
    iget v3, v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->uid:I

    if-ne p0, v3, :cond_12

    return-object v2

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static insertLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ")V"
        }
    .end annotation

    .line 1074
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_19

    .line 1076
    iget-wide v2, p1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    iget-wide v4, v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_16

    goto :goto_19

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1080
    :cond_19
    :goto_19
    invoke-virtual {p0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public static isDeferralsListEmpty(Ljava/util/ArrayList;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;)Z"
        }
    .end annotation

    .line 546
    invoke-static {p0}, Lcom/android/server/am/BroadcastDispatcher;->pendingInDeferralsList(Ljava/util/ArrayList;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static pendingInDeferralsList(Ljava/util/ArrayList;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;)I"
        }
    .end annotation

    .line 538
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_16

    .line 540
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    invoke-virtual {v3}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->size()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_16
    return v2
.end method

.method public static popLocked(Ljava/util/ArrayList;)Lcom/android/server/am/BroadcastRecord;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;)",
            "Lcom/android/server/am/BroadcastRecord;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1062
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 1063
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 p0, 0x0

    goto :goto_19

    :cond_11
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BroadcastRecord;

    :goto_19
    return-object p0
.end method

.method public static zeroDeferralTimes(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;)V"
        }
    .end annotation

    .line 1007
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_16

    .line 1009
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    const-wide/16 v3, 0x0

    .line 1011
    iput-wide v3, v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    iput-wide v3, v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_16
    return-void
.end method


# virtual methods
.method public addDeferredBroadcast(ILcom/android/server/am/BroadcastRecord;)V
    .registers 6

    .line 959
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v0, :cond_1a

    const-string v0, "BroadcastDispatcher"

    .line 960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enqueuing deferred broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_1a
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 963
    :try_start_1d
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->findUidLocked(I)Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    move-result-object p0

    if-nez p0, :cond_3a

    const-string p0, "BroadcastDispatcher"

    .line 965
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding deferred broadcast but not tracking "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    :cond_3a
    if-nez p2, :cond_53

    const-string p0, "BroadcastDispatcher"

    .line 968
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deferring null broadcast to "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    :cond_53
    const/4 p1, 0x1

    .line 970
    iput-boolean p1, p2, Lcom/android/server/am/BroadcastRecord;->deferred:Z

    .line 971
    invoke-virtual {p0, p2}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->add(Lcom/android/server/am/BroadcastRecord;)V

    .line 974
    :goto_59
    monitor-exit v0

    return-void

    :catchall_5b
    move-exception p0

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_1d .. :try_end_5d} :catchall_5b

    throw p0
.end method

.method public final calculateDeferral(J)J
    .registers 5

    .line 1088
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_FLOOR:J

    long-to-float p1, p1

    iget p0, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_DECAY_FACTOR:F

    mul-float/2addr p1, p0

    float-to-long p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public cancelDeferralsLocked()V
    .registers 2

    .line 1002
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/am/BroadcastDispatcher;->zeroDeferralTimes(Ljava/util/ArrayList;)V

    .line 1003
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/android/server/am/BroadcastDispatcher;->zeroDeferralTimes(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final cleanupBroadcastListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .line 767
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 768
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/am/BroadcastRecord;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v0

    or-int/2addr p1, v0

    if-nez p5, :cond_5

    if-eqz p1, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_1c
    return p1
.end method

.method public final cleanupDeferralsListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .line 753
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 754
    iget-object v2, v0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/BroadcastDispatcher;->cleanupBroadcastListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v0

    if-nez p5, :cond_5

    if-eqz v0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_22
    return v0
.end method

.method public cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .line 706
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/BroadcastDispatcher;->cleanupBroadcastListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez p4, :cond_10

    if-nez v0, :cond_47

    .line 709
    :cond_10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 710
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v2, v1

    :goto_1c
    if-ge v2, v0, :cond_3e

    .line 711
    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    .line 712
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    iget-object v4, v4, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;

    .line 713
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v6, v1

    :goto_2d
    if-ge v6, v5, :cond_3b

    .line 714
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_3e
    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    .line 717
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/BroadcastDispatcher;->cleanupBroadcastListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v0

    :cond_47
    if-nez p4, :cond_4b

    if-nez v0, :cond_82

    .line 722
    :cond_4b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 723
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v2, v1

    :goto_57
    if-ge v2, v0, :cond_79

    .line 724
    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    .line 725
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    iget-object v4, v4, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;

    .line 726
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v6, v1

    :goto_68
    if-ge v6, v5, :cond_76

    .line 727
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_68

    :cond_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    :cond_79
    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    .line 730
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/BroadcastDispatcher;->cleanupBroadcastListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v0

    :cond_82
    if-nez p4, :cond_86

    if-nez v0, :cond_92

    .line 734
    :cond_86
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/BroadcastDispatcher;->cleanupDeferralsListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_92
    if-nez p4, :cond_96

    if-nez v0, :cond_a2

    .line 738
    :cond_96
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/BroadcastDispatcher;->cleanupDeferralsListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_a2
    if-nez p4, :cond_a6

    if-nez v0, :cond_af

    .line 741
    :cond_a6
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz p0, :cond_af

    .line 742
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastRecord;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result p0

    or-int/2addr v0, p0

    :cond_af
    return v0
.end method

.method public final dequeueDeferredBootCompletedBroadcast()Lcom/android/server/am/BroadcastRecord;
    .registers 5

    .line 477
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mQueue:Lcom/android/server/am/BroadcastQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mDeferBootCompletedBroadcast:I

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    const/4 v2, 0x0

    .line 480
    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_15
    if-ge v1, v3, :cond_29

    .line 481
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    invoke-virtual {v2, v0}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->dequeueDeferredBootCompletedBroadcast(Z)Lcom/android/server/am/BroadcastRecord;

    move-result-object v2

    if-eqz v2, :cond_26

    goto :goto_29

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_29
    :goto_29
    return-object v2
.end method

.method public describeStateLocked()Ljava/lang/String;
    .registers 6

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 555
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_10

    const-string v1, "1 in flight, "

    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :cond_10
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ordered"

    .line 559
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/am/BroadcastDispatcher;->pendingInDeferralsList(Ljava/util/ArrayList;)I

    move-result v1

    const-string v2, ", "

    if-lez v1, :cond_33

    .line 562
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " deferrals in alarm recipients"

    .line 564
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    :cond_33
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/am/BroadcastDispatcher;->pendingInDeferralsList(Ljava/util/ArrayList;)I

    move-result v1

    if-lez v1, :cond_46

    .line 568
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " deferred"

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_46
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 572
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastDispatcher;->getBootCompletedBroadcastsUidsSize(Ljava/lang/String;)I

    move-result v3

    const-string v4, " receivers"

    if-lez v3, :cond_65

    .line 574
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " deferred LOCKED_BOOT_COMPLETED/"

    .line 576
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastDispatcher;->getBootCompletedBroadcastsReceiversSize(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_65
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 581
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastDispatcher;->getBootCompletedBroadcastsUidsSize(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_82

    .line 583
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " deferred BOOT_COMPLETED/"

    .line 585
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastDispatcher;->getBootCompletedBroadcastsReceiversSize(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    :cond_82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 781
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_7

    .line 782
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 784
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 785
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_d

    .line 787
    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 788
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_23

    .line 790
    :cond_33
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 791
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_39

    :cond_49
    const/4 v0, 0x0

    .line 794
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_50
    if-ge v0, v1, :cond_60

    .line 795
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    :cond_60
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;)Z
    .registers 12

    .line 1096
    new-instance v6, Lcom/android/server/am/BroadcastDispatcher$Dumper;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BroadcastDispatcher$Dumper;-><init>(Lcom/android/server/am/BroadcastDispatcher;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    const-string p2, "Currently in flight"

    .line 1099
    invoke-virtual {v6, p2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setHeading(Ljava/lang/String;)V

    const-string p2, "In-Flight Ordered Broadcast"

    .line 1100
    invoke-virtual {v6, p2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setLabel(Ljava/lang/String;)V

    .line 1101
    iget-object p2, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz p2, :cond_1d

    .line 1102
    invoke-virtual {v6, p2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->dump(Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_22

    :cond_1d
    const-string p2, "  (null)"

    .line 1104
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_22
    const-string p1, "Active ordered broadcasts"

    .line 1107
    invoke-virtual {v6, p1}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setHeading(Ljava/lang/String;)V

    const-string p1, "Active Ordered Broadcast"

    .line 1108
    invoke-virtual {v6, p1}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setLabel(Ljava/lang/String;)V

    .line 1109
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 1110
    invoke-virtual {p2, v6}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->dumpLocked(Lcom/android/server/am/BroadcastDispatcher$Dumper;)V

    goto :goto_32

    .line 1112
    :cond_42
    invoke-virtual {v6}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->didPrint()Z

    move-result p1

    const/4 p2, 0x0

    or-int/2addr p1, p2

    .line 1114
    iget-object p3, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/BroadcastRecord;

    .line 1115
    invoke-virtual {v6, p4}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->dump(Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_4e

    .line 1117
    :cond_5e
    invoke-virtual {v6}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->didPrint()Z

    move-result p3

    or-int/2addr p1, p3

    const-string p3, "Deferred ordered broadcasts"

    .line 1119
    invoke-virtual {v6, p3}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setHeading(Ljava/lang/String;)V

    const-string p3, "Deferred Ordered Broadcast"

    .line 1120
    invoke-virtual {v6, p3}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setLabel(Ljava/lang/String;)V

    .line 1121
    iget-object p3, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_73
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_83

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 1122
    invoke-virtual {p4, v6}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->dumpLocked(Lcom/android/server/am/BroadcastDispatcher$Dumper;)V

    goto :goto_73

    .line 1124
    :cond_83
    invoke-virtual {v6}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->didPrint()Z

    move-result p3

    or-int/2addr p1, p3

    const-string p3, "Deferred LOCKED_BOOT_COMPLETED broadcasts"

    .line 1126
    invoke-virtual {v6, p3}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setHeading(Ljava/lang/String;)V

    const-string p3, "Deferred LOCKED_BOOT_COMPLETED Broadcast"

    .line 1127
    invoke-virtual {v6, p3}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setLabel(Ljava/lang/String;)V

    .line 1128
    iget-object p3, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    move p4, p2

    :goto_99
    if-ge p4, p3, :cond_ab

    .line 1129
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v6, v1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->dump(Lcom/android/server/am/BroadcastDispatcher$Dumper;Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_99

    .line 1131
    :cond_ab
    invoke-virtual {v6}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->didPrint()Z

    move-result p3

    or-int/2addr p1, p3

    const-string p3, "Deferred BOOT_COMPLETED broadcasts"

    .line 1133
    invoke-virtual {v6, p3}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setHeading(Ljava/lang/String;)V

    const-string p3, "Deferred BOOT_COMPLETED Broadcast"

    .line 1134
    invoke-virtual {v6, p3}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setLabel(Ljava/lang/String;)V

    .line 1135
    iget-object p3, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    :goto_c0
    if-ge p2, p3, :cond_d2

    .line 1136
    iget-object p4, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p4, v6, v0}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->dump(Lcom/android/server/am/BroadcastDispatcher$Dumper;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_c0

    .line 1138
    :cond_d2
    invoke-virtual {v6}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->didPrint()Z

    move-result p0

    or-int/2addr p0, p1

    return p0
.end method

.method public enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 5

    .line 595
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v0, :cond_77

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_77

    .line 600
    :cond_b
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 602
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mQueue:Lcom/android/server/am/BroadcastQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mDeferBootCompletedBroadcast:I

    .line 603
    invoke-virtual {p1, v2, v0}, Lcom/android/server/am/BroadcastRecord;->splitDeferredBootCompletedBroadcastLocked(Landroid/app/ActivityManagerInternal;I)Landroid/util/SparseArray;

    move-result-object v0

    .line 605
    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {p0, v2}, Lcom/android/server/am/BroadcastDispatcher;->getDeferredPerUser(I)Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->enqueueBootCompletedBroadcasts(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 607
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    .line 609
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 612
    :cond_3e
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 614
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mQueue:Lcom/android/server/am/BroadcastQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mDeferBootCompletedBroadcast:I

    .line 615
    invoke-virtual {p1, v2, v0}, Lcom/android/server/am/BroadcastRecord;->splitDeferredBootCompletedBroadcastLocked(Landroid/app/ActivityManagerInternal;I)Landroid/util/SparseArray;

    move-result-object v0

    .line 617
    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {p0, v2}, Lcom/android/server/am/BroadcastDispatcher;->getDeferredPerUser(I)Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->enqueueBootCompletedBroadcasts(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 619
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    .line 621
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 625
    :cond_71
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_76
    return-void

    .line 596
    :cond_77
    :goto_77
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final findUidLocked(I)Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    .registers 3

    .line 1023
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/android/server/am/BroadcastDispatcher;->findUidLocked(ILjava/util/ArrayList;)Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    move-result-object v0

    if-nez v0, :cond_e

    .line 1026
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Lcom/android/server/am/BroadcastDispatcher;->findUidLocked(ILjava/util/ArrayList;)Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;
    .registers 1

    .line 803
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    return-object p0
.end method

.method public final getBootCompletedBroadcastsReceiversSize(Ljava/lang/String;)I
    .registers 6

    .line 645
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_1a

    .line 646
    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    invoke-static {v3, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->-$$Nest$mgetBootCompletedBroadcastsReceiversSize(Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1a
    return v2
.end method

.method public final getBootCompletedBroadcastsUidsSize(Ljava/lang/String;)I
    .registers 6

    .line 634
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_1a

    .line 635
    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    invoke-static {v3, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->-$$Nest$mgetBootCompletedBroadcastsUidsSize(Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1a
    return v2
.end method

.method public final getDeferredPerUser(I)Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;
    .registers 3

    .line 457
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 458
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    return-object p0

    .line 460
    :cond_11
    new-instance v0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    invoke-direct {v0, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;-><init>(I)V

    .line 462
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getNextBroadcastLocked(J)Lcom/android/server/am/BroadcastRecord;
    .registers 11

    .line 815
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_5

    return-object v0

    .line 819
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 824
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastDispatcher;->dequeueDeferredBootCompletedBroadcast()Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    const-string v2, "BroadcastDispatcher"

    if-nez v1, :cond_3d

    .line 827
    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3d

    .line 828
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/am/BroadcastDispatcher;->popLocked(Ljava/util/ArrayList;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    .line 829
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v3, :cond_3d

    if-eqz v1, :cond_3d

    .line 830
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Next broadcast from alarm targets: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    const/4 v3, 0x0

    if-nez v1, :cond_b0

    .line 834
    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b0

    move v4, v3

    .line 840
    :goto_49
    iget-object v5, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_b0

    .line 841
    iget-object v5, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 842
    iget-wide v6, v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    cmp-long v6, p1, v6

    if-gez v6, :cond_62

    if-eqz v0, :cond_62

    goto :goto_b0

    .line 850
    :cond_62
    iget-object v6, v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_ad

    .line 851
    iget-object p1, v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 854
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 855
    iget-wide p1, v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastDispatcher;->calculateDeferral(J)J

    move-result-wide p1

    iput-wide p1, v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    .line 856
    iget-wide v6, v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    add-long/2addr v6, p1

    iput-wide v6, v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    .line 857
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-static {p1, v5}, Lcom/android/server/am/BroadcastDispatcher;->insertLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V

    .line 858
    sget-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz p1, :cond_b0

    .line 859
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Next broadcast from deferrals "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", deferUntil now "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    :cond_ad
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    :cond_b0
    :goto_b0
    if-nez v1, :cond_d5

    if-eqz v0, :cond_d5

    .line 868
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 869
    sget-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz p1, :cond_d5

    .line 870
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Next broadcast from main queue: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_d5
    iput-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    return-object v1
.end method

.method public isDeferringLocked(I)Z
    .registers 7

    .line 896
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->findUidLocked(I)Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_39

    .line 897
    iget-object v1, p1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 901
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_39

    .line 902
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v1, :cond_35

    .line 903
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No longer deferring broadcasts to uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastDispatcher"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_35
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->removeDeferral(Lcom/android/server/am/BroadcastDispatcher$Deferrals;)Z

    return v0

    :cond_39
    if-eqz p1, :cond_3c

    const/4 v0, 0x1

    :cond_3c
    return v0
.end method

.method public isEmpty()Z
    .registers 3

    .line 514
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastDispatcher;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 516
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastDispatcher;->getBootCompletedBroadcastsUidsSize(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 517
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastDispatcher;->getBootCompletedBroadcastsUidsSize(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    monitor-exit v0

    return p0

    :catchall_1e
    move-exception p0

    .line 518
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public isIdle()Z
    .registers 3

    .line 528
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 529
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    .line 530
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    .line 531
    invoke-static {v1}, Lcom/android/server/am/BroadcastDispatcher;->isDeferralsListEmpty(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    .line 532
    invoke-static {p0}, Lcom/android/server/am/BroadcastDispatcher;->isDeferralsListEmpty(Ljava/util/ArrayList;)Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    monitor-exit v0

    return p0

    :catchall_24
    move-exception p0

    .line 533
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public final removeDeferral(Lcom/android/server/am/BroadcastDispatcher$Deferrals;)Z
    .registers 3

    .line 1036
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1038
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    :cond_e
    return v0
.end method

.method public replaceBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;
    .registers 4

    .line 654
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/am/BroadcastDispatcher;->replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    if-nez v0, :cond_e

    .line 658
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/am/BroadcastDispatcher;->replaceDeferredBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    :cond_e
    if-nez v0, :cond_16

    .line 661
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/am/BroadcastDispatcher;->replaceDeferredBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    :cond_16
    return-object v0
.end method

.method public final replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;",
            "Lcom/android/server/am/BroadcastRecord;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/am/BroadcastRecord;"
        }
    .end annotation

    .line 683
    iget-object v0, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 686
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    if-ltz v1, :cond_57

    .line 687
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 688
    iget v3, v2, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v4, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v3, v4, :cond_54

    iget-object v3, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 689
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v3, :cond_4c

    .line 690
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***** Replacing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ["

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mQueue:Lcom/android/server/am/BroadcastQueue;

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "BroadcastDispatcher"

    invoke-static {p3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_4c
    iget-boolean p0, v2, Lcom/android/server/am/BroadcastRecord;->deferred:Z

    iput-boolean p0, p2, Lcom/android/server/am/BroadcastRecord;->deferred:Z

    .line 695
    invoke-virtual {p1, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_54
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_57
    const/4 p0, 0x0

    return-object p0
.end method

.method public final replaceDeferredBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;",
            "Lcom/android/server/am/BroadcastRecord;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/am/BroadcastRecord;"
        }
    .end annotation

    .line 669
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_19

    .line 671
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 672
    iget-object v2, v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/server/am/BroadcastDispatcher;->replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v2

    if-eqz v2, :cond_16

    return-object v2

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public retireBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 4

    .line 884
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eq p1, v0, :cond_24

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retiring broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t match current outgoing "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BroadcastDispatcher"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/4 p1, 0x0

    .line 888
    iput-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    return-void
.end method

.method public scheduleDeferralCheckLocked(Z)V
    .registers 6

    if-nez p1, :cond_6

    .line 984
    iget-boolean p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mRecheckScheduled:Z

    if-nez p1, :cond_4e

    :cond_6
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4e

    .line 985
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 986
    iget-object v0, p1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 987
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mScheduleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 988
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mScheduleRunnable:Ljava/lang/Runnable;

    iget-wide v2, p1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 989
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mRecheckScheduled:Z

    .line 990
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz p0, :cond_4e

    .line 991
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Scheduling deferred broadcast recheck at "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BroadcastDispatcher"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    return-void
.end method

.method public start()V
    .registers 2

    .line 506
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarm:Lcom/android/server/AlarmManagerInternal;

    .line 507
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmListener:Lcom/android/server/AlarmManagerInternal$InFlightListener;

    invoke-interface {v0, p0}, Lcom/android/server/AlarmManagerInternal;->registerInFlightListener(Lcom/android/server/AlarmManagerInternal$InFlightListener;)V

    return-void
.end method

.method public startDeferring(I)V
    .registers 11

    .line 918
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 919
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->findUidLocked(I)Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    move-result-object v1

    if-nez v1, :cond_57

    .line 924
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 925
    new-instance v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v6, v2, Lcom/android/server/am/BroadcastConstants;->DEFERRAL:J

    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmUids:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    .line 928
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    move-object v2, v1

    move v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;-><init>(IJJI)V

    .line 929
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v2, :cond_43

    const-string v2, "BroadcastDispatcher"

    .line 930
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Now deferring broadcasts to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " until "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_43
    iget p1, v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->alarmCount:I

    if-nez p1, :cond_51

    .line 936
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lcom/android/server/am/BroadcastDispatcher;->insertLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V

    const/4 p1, 0x1

    .line 937
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->scheduleDeferralCheckLocked(Z)V

    goto :goto_81

    .line 940
    :cond_51
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 945
    :cond_57
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v2, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL:J

    iput-wide v2, v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    .line 946
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz p0, :cond_81

    const-string p0, "BroadcastDispatcher"

    .line 947
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " slow again, deferral interval reset to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_81
    :goto_81
    monitor-exit v0

    return-void

    :catchall_83
    move-exception p0

    monitor-exit v0
    :try_end_85
    .catchall {:try_start_3 .. :try_end_85} :catchall_83

    throw p0
.end method

.method public updateUidReadyForBootCompletedBroadcastLocked(I)V
    .registers 3

    .line 473
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastDispatcher;->getDeferredPerUser(I)Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->updateUidReady(I)V

    return-void
.end method
