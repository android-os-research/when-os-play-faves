.class public Lcom/android/server/connectivity/DefaultNetworkMetrics;
.super Ljava/lang/Object;
.source "DefaultNetworkMetrics.java"


# static fields
.field public static final ROLLING_LOG_SIZE:I = 0x40


# instance fields
.field public final creationTimeMs:J

.field public mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mEvents:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/metrics/DefaultNetworkEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final mEventsLog:Lcom/android/internal/util/RingBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/net/metrics/DefaultNetworkEvent;",
            ">;"
        }
    .end annotation
.end field

.field public mIsCurrentlyValid:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mLastTransports:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mLastValidationTimeMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 9

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->creationTimeMs:J

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEvents:Ljava/util/List;

    .line 49
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v3, Landroid/net/metrics/DefaultNetworkEvent;

    const/16 v4, 0x40

    invoke-direct {v0, v3, v4}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEventsLog:Lcom/android/internal/util/RingBuffer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 66
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->newDefaultNetwork(JLandroid/net/Network;IZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public static fillLinkInfo(Landroid/net/metrics/DefaultNetworkEvent;Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .registers 8

    .line 180
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    iput p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    .line 181
    iget p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    int-to-long v0, p1

    invoke-virtual {p3}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v2

    or-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    .line 182
    iget-boolean p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv4:Z

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIpv4Address()Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_27

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIpv4DefaultRoute()Z

    move-result p3

    if-eqz p3, :cond_27

    move p3, v0

    goto :goto_28

    :cond_27
    move p3, v1

    :goto_28
    or-int/2addr p1, p3

    iput-boolean p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv4:Z

    .line 183
    iget-boolean p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasGlobalIpv6Address()Z

    move-result p3

    if-eqz p3, :cond_3a

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIpv6DefaultRoute()Z

    move-result p2

    if-eqz p2, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, v1

    :goto_3b
    or-int/2addr p1, v0

    iput-boolean p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    return-void
.end method

.method public static printEvent(JLjava/io/PrintWriter;Landroid/net/metrics/DefaultNetworkEvent;)V
    .registers 7

    .line 187
    iget-wide v0, p3, Landroid/net/metrics/DefaultNetworkEvent;->durationMs:J

    sub-long/2addr p0, v0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 188
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const/4 p0, 0x2

    aput-object p3, v0, p0

    const-string p0, "%tT.%tL: %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized flushEvents(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 98
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/DefaultNetworkEvent;

    .line 99
    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DefaultNetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 101
    :cond_1b
    iget-object p1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEvents:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 102
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized listEvents(Ljava/io/PrintWriter;)V
    .registers 10

    monitor-enter p0

    :try_start_1
    const-string v0, "default network events:"

    .line 70
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 73
    iget-object v4, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEventsLog:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v4}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/metrics/DefaultNetworkEvent;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_18
    if-ge v6, v5, :cond_22

    aget-object v7, v4, v6

    .line 74
    invoke-static {v0, v1, p1, v7}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->printEvent(JLjava/io/PrintWriter;Landroid/net/metrics/DefaultNetworkEvent;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 76
    :cond_22
    iget-object v4, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    invoke-virtual {v4, v2, v3}, Landroid/net/metrics/DefaultNetworkEvent;->updateDuration(J)V

    .line 79
    iget-boolean v4, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    if-eqz v4, :cond_30

    .line 80
    invoke-virtual {p0, v2, v3}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->updateValidationTime(J)V

    .line 81
    iput-wide v2, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastValidationTimeMs:J

    .line 83
    :cond_30
    iget-object v2, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->printEvent(JLjava/io/PrintWriter;Landroid/net/metrics/DefaultNetworkEvent;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    .line 84
    monitor-exit p0

    return-void

    :catchall_37
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized listEventsAsProto()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 90
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    iget-object v1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEventsLog:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/metrics/DefaultNetworkEvent;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    .line 92
    invoke-static {v4}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DefaultNetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_20

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 94
    :cond_1e
    monitor-exit p0

    return-object v0

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final logCurrentDefaultNetwork(JLandroid/net/Network;ILandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .registers 8

    .line 137
    iget-boolean v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    if-eqz v0, :cond_7

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->updateValidationTime(J)V

    .line 140
    :cond_7
    iget-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    .line 141
    invoke-virtual {v0, p1, p2}, Landroid/net/metrics/DefaultNetworkEvent;->updateDuration(J)V

    .line 142
    iget p1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastTransports:I

    iput p1, v0, Landroid/net/metrics/DefaultNetworkEvent;->previousTransports:I

    if-eqz p3, :cond_17

    .line 146
    invoke-static {v0, p3, p5, p6}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->fillLinkInfo(Landroid/net/metrics/DefaultNetworkEvent;Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    .line 147
    iput p4, v0, Landroid/net/metrics/DefaultNetworkEvent;->finalScore:I

    .line 153
    :cond_17
    iget p1, v0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    if-eqz p1, :cond_1d

    .line 154
    iput p1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastTransports:I

    .line 156
    :cond_1d
    iget-object p1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEvents:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object p0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEventsLog:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized logDefaultNetworkEvent(JLandroid/net/Network;IZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;ILandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .registers 20

    monitor-enter p0

    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    .line 130
    :try_start_b
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->logCurrentDefaultNetwork(JLandroid/net/Network;ILandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    .line 132
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->newDefaultNetwork(JLandroid/net/Network;IZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_13

    .line 133
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized logDefaultNetworkValidity(JZ)V
    .registers 5

    monitor-enter p0

    if-nez p3, :cond_10

    .line 106
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->updateValidationTime(J)V

    goto :goto_10

    :catchall_e
    move-exception p1

    goto :goto_1c

    :cond_10
    :goto_10
    if-eqz p3, :cond_1e

    .line 112
    iget-boolean p3, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    if-nez p3, :cond_1e

    const/4 p3, 0x1

    .line 113
    iput-boolean p3, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    .line 114
    iput-wide p1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastValidationTimeMs:J
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_e

    goto :goto_1e

    :goto_1c
    monitor-exit p0

    throw p1

    .line 116
    :cond_1e
    :goto_1e
    monitor-exit p0

    return-void
.end method

.method public final newDefaultNetwork(JLandroid/net/Network;IZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .registers 9

    .line 162
    new-instance v0, Landroid/net/metrics/DefaultNetworkEvent;

    invoke-direct {v0, p1, p2}, Landroid/net/metrics/DefaultNetworkEvent;-><init>(J)V

    .line 163
    iput-wide p1, v0, Landroid/net/metrics/DefaultNetworkEvent;->durationMs:J

    if-eqz p3, :cond_16

    .line 166
    invoke-static {v0, p3, p6, p7}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->fillLinkInfo(Landroid/net/metrics/DefaultNetworkEvent;Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    .line 167
    iput p4, v0, Landroid/net/metrics/DefaultNetworkEvent;->initialScore:I

    if-eqz p5, :cond_19

    const/4 p3, 0x1

    .line 169
    iput-boolean p3, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    .line 170
    iput-wide p1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastValidationTimeMs:J

    goto :goto_19

    :cond_16
    const/4 p1, 0x0

    .line 173
    iput-boolean p1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    .line 175
    :cond_19
    :goto_19
    iput-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    return-void
.end method

.method public final updateValidationTime(J)V
    .registers 8

    .line 119
    iget-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    iget-wide v1, v0, Landroid/net/metrics/DefaultNetworkEvent;->validatedMs:J

    iget-wide v3, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastValidationTimeMs:J

    sub-long/2addr p1, v3

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/net/metrics/DefaultNetworkEvent;->validatedMs:J

    return-void
.end method
