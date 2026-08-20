.class public Lcom/android/internal/telephony/data/KeepaliveTracker;
.super Landroid/os/Handler;
.source "KeepaliveTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/KeepaliveTracker$KeepaliveRecord;
    }
.end annotation


# instance fields
.field private final blacklist mDataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

.field private final blacklist mKeepalives:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/data/KeepaliveTracker$KeepaliveRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLogTag:Ljava/lang/String;

.field private final blacklist mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static bridge synthetic blacklist -$$Nest$monStartSocketKeepaliveRequested(Lcom/android/internal/telephony/data/KeepaliveTracker;ILjava/time/Duration;Landroid/net/KeepalivePacketData;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/KeepaliveTracker;->onStartSocketKeepaliveRequested(ILjava/time/Duration;Landroid/net/KeepalivePacketData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monStopSocketKeepaliveRequested(Lcom/android/internal/telephony/data/KeepaliveTracker;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/KeepaliveTracker;->onStopSocketKeepaliveRequested(I)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkAgent;)V
    .registers 5

    .line 106
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 71
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mKeepalives:Landroid/util/SparseArray;

    .line 107
    iput-object p1, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 108
    iput-object p3, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mDataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    .line 109
    iput-object p4, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "KT-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mLogTag:Ljava/lang/String;

    .line 111
    new-instance p1, Lcom/android/internal/telephony/data/KeepaliveTracker$1;

    new-instance p2, Lcom/android/internal/telephony/data/KeepaliveTracker$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/data/KeepaliveTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/KeepaliveTracker;)V

    invoke-direct {p1, p0, p2}, Lcom/android/internal/telephony/data/KeepaliveTracker$1;-><init>(Lcom/android/internal/telephony/data/KeepaliveTracker;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p4, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->registerCallback(Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;)V

    return-void
.end method

.method private blacklist getHandleForSlot(I)I
    .registers 4

    const/4 v0, 0x0

    .line 243
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mKeepalives:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 244
    iget-object v1, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mKeepalives:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/KeepaliveTracker$KeepaliveRecord;

    .line 245
    iget v1, v1, Lcom/android/internal/telephony/data/KeepaliveTracker$KeepaliveRecord;->slotIndex:I

    if-ne v1, p1, :cond_1c

    iget-object p0, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mKeepalives:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist keepaliveStatusErrorToPacketKeepaliveError(I)I
    .registers 2

    if-eqz p1, :cond_11

    const/4 p0, 0x1

    if-eq p1, p0, :cond_e

    const/4 p0, 0x2

    if-eq p1, p0, :cond_b

    const/16 p0, -0x1f

    return p0

    :cond_b
    const/16 p0, -0x20

    return p0

    :cond_e
    const/16 p0, -0x1e

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 384
    iget-object p0, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 392
    iget-object p0, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist onKeepaliveStatus(Lcom/android/internal/telephony/data/KeepaliveStatus;)V
    .registers 8

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeepaliveStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/KeepaliveTracker;->log(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mKeepalives:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/internal/telephony/data/KeepaliveStatus;->sessionHandle:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/KeepaliveTracker$KeepaliveRecord;

    if-nez v0, :cond_35

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Discarding keepalive event for different data connection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/KeepaliveTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 314
    :cond_35
    iget v1, v0, Lcom/android/internal/telephony/data/KeepaliveTracker$KeepaliveRecord;->currentStatus:I

    const/4 v2, 0x0

    const-string v3, "Invalid Keepalive Status received, "

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_b1

    if-eq v1, v5, :cond_a2

    if-eq v1, v4, :cond_58

    .line 360
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/internal/telephony/data/KeepaliveTracker$KeepaliveRecord;->currentStatus:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/KeepaliveTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_e9

    .line 321
    :cond_58
    iget v1, p1, Lcom/android/internal/telephony/data/KeepaliveStatus;->statusCode:I

    if-eqz v1, :cond_93

    if-eq v1, v5, :cond_7c

    if-eq v1, v4, :cond_76

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/internal/telephony/data/KeepaliveStatus;->statusCode:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/KeepaliveTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_e9

    :cond_76
    const-string p1, "Invalid unsolicited Keepalive Pending Status!"

    .line 335
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/KeepaliveTracker;->loge(Ljava/lang/String;)V

    goto :goto_e9

    .line 323
    :cond_7c
    iget-object v1, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    iget v2, v0, Lcom/android/internal/telephony/data/KeepaliveTracker$KeepaliveRecord;->slotIndex:I

    iget v3, p1, Lcom/android/internal/telephony/data/KeepaliveStatus;->errorCode:I

    .line 324
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/KeepaliveTracker;->keepaliveStatusErrorToPacketKeepaliveError(I)I

    move-result v3

    .line 323
    invoke-virtual {v1, v2, v3}, Landroid/net/NetworkAgent;->sendSocketKeepaliveEvent(II)V

    .line 325
    iput v5, v0, Lcom/android/internal/telephony/data/KeepaliveTracker$KeepaliveRecord;->currentStatus:I

    .line 326
    iget-object p0, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mKeepalives:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/internal/telephony/data/KeepaliveStatus;->sessionHandle:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_e9

    :cond_93
    const-string p1, "Pending Keepalive received active status!"

    .line 329
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/KeepaliveTracker;->log(Ljava/lang/String;)V

    .line 330
    iput v2, v0, Lcom/android/internal/telephony/data/KeepaliveTracker$KeepaliveRecord;->currentStatus:I

    .line 331
    iget-object p0, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    iget p1, v0, Lcom/android/internal/telephony/data/KeepaliveTracker$KeepaliveRecord;->slotIndex:I

    invoke-virtual {p0, p1, v2}, Landroid/net/NetworkAgent;->sendSocketKeepaliveEvent(II)V

    goto :goto_e9

    :cond_a2
    const-string p1, "Inactive Keepalive received status!"

    .line 316
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/KeepaliveTracker;->log(Ljava/lang/String;)V

    .line 317
    iget-object p0, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    iget p1, v0, Lcom/android/internal/telephony/data/KeepaliveTracker$KeepaliveRecord;->slotIndex:I

    const/16 v0, -0x1f

    invoke-virtual {p0, p1, v0}, Landroid/net/NetworkAgent;->sendSocketKeepaliveEvent(II)V

    goto :goto_e9

    .line 342
    :cond_b1
    iget v1, p1, Lcom/android/internal/telephony/data/KeepaliveStatus;->statusCode:I

    if-eqz v1, :cond_e4

    if-eq v1, v5, :cond_ce

    if-eq v1, v4, :cond_e4

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/internal/telephony/data/KeepaliveStatus;->statusCode:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/KeepaliveTracker;->loge(Ljava/lang/String;)V

    goto :goto_e9

    :cond_ce
    const-string v1, "Keepalive received stopped status!"

    .line 344
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/KeepaliveTracker;->log(Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    iget v3, v0, Lcom/android/internal/telephony/data/KeepaliveTracker$KeepaliveRecord;->slotIndex:I

    invoke-virtual {v1, v3, v2}, Landroid/net/NetworkAgent;->sendSocketKeepaliveEvent(II)V

    .line 348
    iput v5, v0, Lcom/android/internal/telephony/data/KeepaliveTracker$KeepaliveRecord;->currentStatus:I

    .line 349
    iget-object p0, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mKeepalives:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/internal/telephony/data/KeepaliveStatus;->sessionHandle:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_e9

    :cond_e4
    const-string p1, "Active Keepalive received invalid status!"

    .line 353
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/KeepaliveTracker;->loge(Ljava/lang/String;)V

    :goto_e9
    return-void
.end method

.method private blacklist onSocketKeepaliveStarted(ILcom/android/internal/telephony/data/KeepaliveStatus;)V
    .registers 5

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSocketKeepaliveStarted: slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keepaliveStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/KeepaliveTracker;->log(Ljava/lang/String;)V

    .line 278
    iget v0, p2, Lcom/android/internal/telephony/data/KeepaliveStatus;->statusCode:I

    if-eqz v0, :cond_49

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4f

    .line 291
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid KeepaliveStatus Code: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/android/internal/telephony/data/KeepaliveStatus;->statusCode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/KeepaliveTracker;->log(Ljava/lang/String;)V

    goto :goto_7b

    .line 280
    :cond_3d
    iget-object v0, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    iget p2, p2, Lcom/android/internal/telephony/data/KeepaliveStatus;->errorCode:I

    .line 281
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/KeepaliveTracker;->keepaliveStatusErrorToPacketKeepaliveError(I)I

    move-result p0

    .line 280
    invoke-virtual {v0, p1, p0}, Landroid/net/NetworkAgent;->sendSocketKeepaliveEvent(II)V

    goto :goto_7b

    .line 284
    :cond_49
    iget-object v0, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/net/NetworkAgent;->sendSocketKeepaliveEvent(II)V

    .line 287
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding keepalive handle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/internal/telephony/data/KeepaliveStatus;->sessionHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " slotIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/KeepaliveTracker;->log(Ljava/lang/String;)V

    .line 288
    iget-object p0, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mKeepalives:Landroid/util/SparseArray;

    iget v0, p2, Lcom/android/internal/telephony/data/KeepaliveStatus;->sessionHandle:I

    new-instance v1, Lcom/android/internal/telephony/data/KeepaliveTracker$KeepaliveRecord;

    iget p2, p2, Lcom/android/internal/telephony/data/KeepaliveStatus;->statusCode:I

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/data/KeepaliveTracker$KeepaliveRecord;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_7b
    return-void
.end method

.method private blacklist onStartSocketKeepaliveRequested(ILjava/time/Duration;Landroid/net/KeepalivePacketData;)V
    .registers 10

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartSocketKeepaliveRequested: slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p2}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "s, packet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/KeepaliveTracker;->log(Ljava/lang/String;)V

    .line 193
    instance-of v0, p3, Landroid/net/NattKeepalivePacketData;

    if-eqz v0, :cond_5c

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mDataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_54

    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mDataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataNetwork;->getId()I

    move-result v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 196
    invoke-virtual {p2}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    long-to-int p2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 197
    invoke-virtual {p0, v1, p1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 195
    invoke-interface {v0, v2, p3, p2, p0}, Lcom/android/internal/telephony/CommandsInterface;->startNattKeepalive(ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V

    goto :goto_63

    .line 206
    :cond_54
    iget-object p0, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    const/16 p2, -0x14

    invoke-virtual {p0, p1, p2}, Landroid/net/NetworkAgent;->sendSocketKeepaliveEvent(II)V

    goto :goto_63

    .line 210
    :cond_5c
    iget-object p0, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    const/16 p2, -0x1e

    invoke-virtual {p0, p1, p2}, Landroid/net/NetworkAgent;->sendSocketKeepaliveEvent(II)V

    :goto_63
    return-void
.end method

.method private blacklist onStopSocketKeepaliveRequested(I)V
    .registers 6

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopSocketKeepaliveRequested: slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/KeepaliveTracker;->log(Ljava/lang/String;)V

    .line 222
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/KeepaliveTracker;->getHandleForSlot(I)I

    move-result v0

    if-gez v0, :cond_36

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No slot found for stopSocketKeepalive! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/KeepaliveTracker;->loge(Ljava/lang/String;)V

    .line 225
    iget-object p0, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    const/16 v0, -0x21

    invoke-virtual {p0, p1, v0}, Landroid/net/NetworkAgent;->sendSocketKeepaliveEvent(II)V

    return-void

    .line 230
    :cond_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping keepalive with handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/KeepaliveTracker;->log(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, p1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->stopNattKeepalive(ILandroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b3

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq v0, v2, :cond_65

    if-eq v0, v3, :cond_3a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_30

    const/4 v1, 0x5

    if-eq v0, v1, :cond_27

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/KeepaliveTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_e5

    .line 173
    :cond_27
    iget-object p1, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNattKeepaliveStatus(Landroid/os/Handler;)V

    goto/16 :goto_e5

    .line 170
    :cond_30
    iget-object p1, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForNattKeepaliveStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_e5

    .line 160
    :cond_3a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 161
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_5a

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_KEEPALIVE_STATUS: error in keepalive, e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/KeepaliveTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_e5

    .line 164
    :cond_5a
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_e5

    .line 165
    check-cast p1, Lcom/android/internal/telephony/data/KeepaliveStatus;

    .line 166
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/KeepaliveTracker;->onKeepaliveStatus(Lcom/android/internal/telephony/data/KeepaliveStatus;)V

    goto/16 :goto_e5

    .line 145
    :cond_65
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 146
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 148
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_96

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_KEEPALIVE_STOPPED: error stopping keepalive for handle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " e="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/KeepaliveTracker;->loge(Ljava/lang/String;)V

    .line 151
    new-instance p1, Lcom/android/internal/telephony/data/KeepaliveStatus;

    invoke-direct {p1, v3}, Lcom/android/internal/telephony/data/KeepaliveStatus;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/KeepaliveTracker;->onKeepaliveStatus(Lcom/android/internal/telephony/data/KeepaliveStatus;)V

    goto :goto_e5

    .line 154
    :cond_96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keepalive Stop Requested for handle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/KeepaliveTracker;->log(Ljava/lang/String;)V

    .line 155
    new-instance v0, Lcom/android/internal/telephony/data/KeepaliveStatus;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/data/KeepaliveStatus;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/KeepaliveTracker;->onKeepaliveStatus(Lcom/android/internal/telephony/data/KeepaliveStatus;)V

    goto :goto_e5

    .line 132
    :cond_b3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 133
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 134
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_c8

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_c2

    goto :goto_c8

    .line 141
    :cond_c2
    check-cast v1, Lcom/android/internal/telephony/data/KeepaliveStatus;

    .line 142
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/data/KeepaliveTracker;->onSocketKeepaliveStarted(ILcom/android/internal/telephony/data/KeepaliveStatus;)V

    goto :goto_e5

    .line 135
    :cond_c8
    :goto_c8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_KEEPALIVE_STARTED: error starting keepalive, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/KeepaliveTracker;->loge(Ljava/lang/String;)V

    .line 137
    iget-object p0, p0, Lcom/android/internal/telephony/data/KeepaliveTracker;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    const/16 v0, -0x1f

    invoke-virtual {p0, p1, v0}, Landroid/net/NetworkAgent;->sendSocketKeepaliveEvent(II)V

    :cond_e5
    :goto_e5
    return-void
.end method

.method public blacklist registerForKeepaliveStatus()V
    .registers 2

    const/4 v0, 0x4

    .line 369
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public blacklist unregisterForKeepaliveStatus()V
    .registers 2

    const/4 v0, 0x5

    .line 376
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
