.class public Lcom/android/internal/telephony/ClientWakelockAccountant;
.super Ljava/lang/Object;
.source "ClientWakelockAccountant.java"


# static fields
.field public static final blacklist LOG_TAG:Ljava/lang/String; = "ClientWakelockAccountant: "


# instance fields
.field public blacklist mPendingRilWakelocks:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/RilWakelockInfo;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mRequestStats:Landroid/telephony/ClientRequestStats;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/telephony/ClientRequestStats;

    invoke-direct {v0}, Landroid/telephony/ClientRequestStats;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    .line 36
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {p0, p1}, Landroid/telephony/ClientRequestStats;->setCallingPackage(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist completeRequest(Lcom/android/internal/telephony/RilWakelockInfo;J)V
    .registers 6

    .line 88
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/RilWakelockInfo;->setResponseTime(J)V

    .line 89
    iget-object p2, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    monitor-enter p2

    .line 90
    :try_start_6
    iget-object p3, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RilWakelockInfo;->getWakelockTimeAttributedToClient()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/telephony/ClientRequestStats;->addCompletedWakelockTime(J)V

    .line 91
    iget-object p3, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {p3}, Landroid/telephony/ClientRequestStats;->incrementCompletedRequestsCount()V

    .line 92
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RilWakelockInfo;->getRilRequestSent()I

    move-result p3

    .line 93
    invoke-virtual {p1}, Lcom/android/internal/telephony/RilWakelockInfo;->getWakelockTimeAttributedToClient()J

    move-result-wide v0

    long-to-int p1, v0

    .line 92
    invoke-virtual {p0, p3, p1}, Landroid/telephony/ClientRequestStats;->updateRequestHistograms(II)V

    .line 94
    monitor-exit p2

    return-void

    :catchall_24
    move-exception p0

    monitor-exit p2
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_24

    throw p0
.end method

.method private blacklist removePendingWakelock(II)Lcom/android/internal/telephony/RilWakelockInfo;
    .registers 8

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 121
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/RilWakelockInfo;

    .line 122
    invoke-virtual {v3}, Lcom/android/internal/telephony/RilWakelockInfo;->getTokenNumber()I

    move-result v4

    if-ne v4, p2, :cond_a

    .line 123
    invoke-virtual {v3}, Lcom/android/internal/telephony/RilWakelockInfo;->getRilRequestSent()I

    move-result v4

    if-ne v4, p1, :cond_a

    move-object v2, v3

    goto :goto_a

    :cond_24
    if-eqz v2, :cond_2b

    .line 128
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 130
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_57

    if-nez v2, :cond_56

    const-string v0, "ClientWakelockAccountant: "

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking for Request<"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "> in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    return-object v2

    :catchall_57
    move-exception p0

    .line 130
    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw p0
.end method


# virtual methods
.method public blacklist changeConcurrentRequests(IJ)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 81
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RilWakelockInfo;

    .line 82
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/RilWakelockInfo;->updateConcurrentRequests(IJ)V

    goto :goto_9

    .line 84
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public blacklist getPendingRequestCount()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 99
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public blacklist startAttributingWakelock(IIIJ)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 43
    new-instance v6, Lcom/android/internal/telephony/RilWakelockInfo;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/RilWakelockInfo;-><init>(IIIJ)V

    .line 44
    iget-object p1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    monitor-enter p1

    .line 45
    :try_start_d
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    monitor-exit p1

    return-void

    :catchall_14
    move-exception p0

    monitor-exit p1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw p0
.end method

.method public blacklist stopAllPendingRequests(J)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 71
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/RilWakelockInfo;

    .line 72
    invoke-direct {p0, v2, p1, p2}, Lcom/android/internal/telephony/ClientWakelockAccountant;->completeRequest(Lcom/android/internal/telephony/RilWakelockInfo;J)V

    goto :goto_9

    .line 74
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 75
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public blacklist stopAttributingWakelock(IIJ)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ClientWakelockAccountant;->removePendingWakelock(II)Lcom/android/internal/telephony/RilWakelockInfo;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 53
    invoke-direct {p0, p1, p3, p4}, Lcom/android/internal/telephony/ClientWakelockAccountant;->completeRequest(Lcom/android/internal/telephony/RilWakelockInfo;J)V

    :cond_9
    return-void
.end method

.method public blacklist stopAttributingWakelockInt(IIJ)I
    .registers 5

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ClientWakelockAccountant;->removePendingWakelock(II)Lcom/android/internal/telephony/RilWakelockInfo;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 61
    invoke-direct {p0, p1, p3, p4}, Lcom/android/internal/telephony/ClientWakelockAccountant;->completeRequest(Lcom/android/internal/telephony/RilWakelockInfo;J)V

    .line 62
    invoke-virtual {p1}, Lcom/android/internal/telephony/RilWakelockInfo;->getWakelockTimeAttributedToClient()J

    move-result-wide p0

    long-to-int p0, p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist toSimpleString()Ljava/lang/String;
    .registers 3

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{CallingPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {p0}, Landroid/telephony/ClientRequestStats;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientWakelockAccountant{mRequestStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPendingRilWakelocks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized blacklist updatePendingRequestWakelockTime(J)J
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 105
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_3d

    .line 106
    :try_start_6
    iget-object v3, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/RilWakelockInfo;

    .line 107
    invoke-virtual {v4, p1, p2}, Lcom/android/internal/telephony/RilWakelockInfo;->updateTime(J)V

    .line 108
    invoke-virtual {v4}, Lcom/android/internal/telephony/RilWakelockInfo;->getWakelockTimeAttributedToClient()J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_c

    .line 110
    :cond_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_3a

    .line 111
    :try_start_22
    iget-object p1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    monitor-enter p1
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_3d

    .line 112
    :try_start_25
    iget-object p2, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ClientWakelockAccountant;->getPendingRequestCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p2, v2, v3}, Landroid/telephony/ClientRequestStats;->setPendingRequestsCount(J)V

    .line 113
    iget-object p2, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {p2, v0, v1}, Landroid/telephony/ClientRequestStats;->setPendingRequestsWakelockTime(J)V

    .line 114
    monitor-exit p1
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_37

    .line 115
    monitor-exit p0

    return-wide v0

    :catchall_37
    move-exception p2

    .line 114
    :try_start_38
    monitor-exit p1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    :try_start_39
    throw p2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3d

    :catchall_3a
    move-exception p1

    .line 110
    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw p1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
