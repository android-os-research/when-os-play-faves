.class public Lcom/android/server/pm/SilentUpdatePolicy;
.super Ljava/lang/Object;
.source "SilentUpdatePolicy.java"


# static fields
.field public static final SILENT_UPDATE_THROTTLE_TIME_MS:J


# instance fields
.field public mAllowUnlimitedSilentUpdatesInstaller:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSilentUpdateInfos"
        }
    .end annotation
.end field

.field public final mSilentUpdateInfos:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSilentUpdateInfos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mSilentUpdateThrottleTimeMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSilentUpdateInfos"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/SilentUpdatePolicy;->SILENT_UPDATE_THROTTLE_TIME_MS:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    .line 48
    sget-wide v0, Lcom/android/server/pm/SilentUpdatePolicy;->SILENT_UPDATE_THROTTLE_TIME_MS:J

    iput-wide v0, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateThrottleTimeMs:J

    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8

    .line 148
    iget-object v0, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 149
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 150
    monitor-exit v0

    return-void

    :cond_d
    const-string v1, "Last silent updated Infos:"

    .line 152
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 154
    iget-object v1, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_4b

    .line 156
    iget-object v3, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    if-nez v3, :cond_29

    goto :goto_48

    :cond_29
    const-string/jumbo v4, "installerPackageName"

    .line 160
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v4, "packageName"

    .line 161
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v3, "silentUpdatedMillis"

    .line 162
    iget-object v4, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 163
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 165
    :cond_4b
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 166
    monitor-exit v0

    return-void

    :catchall_50
    move-exception p0

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw p0
.end method

.method public final getTimestampMs(Ljava/lang/String;Ljava/lang/String;)J
    .registers 3

    .line 139
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 141
    iget-object p2, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    monitor-enter p2

    .line 142
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    .line 143
    monitor-exit p2
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_1a

    if-eqz p0, :cond_17

    .line 144
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    goto :goto_19

    :cond_17
    const-wide/16 p0, -0x1

    :goto_19
    return-wide p0

    :catchall_1a
    move-exception p0

    .line 143
    :try_start_1b
    monitor-exit p2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public isSilentUpdateAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 64
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/SilentUpdatePolicy;->getTimestampMs(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    .line 66
    iget-object v1, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 67
    :try_start_b
    iget-wide v2, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateThrottleTimeMs:J

    .line 68
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_1a

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p1

    cmp-long p0, v4, v2

    if-lez p0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :catchall_1a
    move-exception p0

    .line 68
    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public final pruneLocked(J)V
    .registers 8

    .line 125
    iget-object v0, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_26

    .line 127
    iget-object v1, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, p1, v1

    .line 128
    iget-wide v3, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateThrottleTimeMs:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_23

    .line 129
    iget-object v1, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_26
    return-void
.end method

.method public setAllowUnlimitedSilentUpdates(Ljava/lang/String;)V
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    monitor-enter v0

    if-nez p1, :cond_a

    .line 104
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 106
    :cond_a
    iput-object p1, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mAllowUnlimitedSilentUpdatesInstaller:Ljava/lang/String;

    .line 107
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public setSilentUpdatesThrottleTime(J)V
    .registers 6

    .line 117
    iget-object v0, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    monitor-enter v0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_10

    .line 119
    :try_start_9
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    goto :goto_12

    .line 120
    :cond_10
    sget-wide p1, Lcom/android/server/pm/SilentUpdatePolicy;->SILENT_UPDATE_THROTTLE_TIME_MS:J

    :goto_12
    iput-wide p1, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateThrottleTimeMs:J

    .line 121
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public track(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 85
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mAllowUnlimitedSilentUpdatesInstaller:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 86
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 87
    monitor-exit v0

    return-void

    .line 89
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 90
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/SilentUpdatePolicy;->pruneLocked(J)V

    .line 92
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 93
    iget-object p0, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_28

    throw p0
.end method
