.class public final Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;
.super Lcom/android/internal/util/RingBuffer;
.source "BroadcastResponseStatsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/BroadcastResponseStatsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;",
        ">",
        "Lcom/android/internal/util/RingBuffer<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method public getContent(Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;)Ljava/lang/String;
    .registers 2

    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public logBroadcastDispatchEvent(ILjava/lang/String;Landroid/os/UserHandle;JJI)V
    .registers 9

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;

    if-nez p0, :cond_9

    return-void

    .line 108
    :cond_9
    invoke-interface {p0}, Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;->reset()V

    .line 109
    check-cast p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;

    .line 110
    iput p1, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->sourceUid:I

    .line 111
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iput p1, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->targetUserId:I

    .line 112
    iput p8, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->targetUidProcessState:I

    .line 113
    iput-object p2, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->targetPackage:Ljava/lang/String;

    .line 114
    iput-wide p4, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->idForResponseEvent:J

    .line 115
    iput-wide p6, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->timestampMs:J

    return-void
.end method

.method public logNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V
    .registers 6

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;

    if-nez p0, :cond_9

    return-void

    .line 124
    :cond_9
    invoke-interface {p0}, Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;->reset()V

    .line 125
    check-cast p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;

    .line 126
    iput p1, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->type:I

    .line 127
    iput-object p2, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->packageName:Ljava/lang/String;

    .line 128
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iput p1, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->userId:I

    .line 129
    iput-wide p4, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->timestampMs:J

    return-void
.end method

.method public reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;

    .line 134
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_1a

    .line 135
    aget-object v2, v0, v1

    if-nez v2, :cond_10

    goto :goto_17

    .line 138
    :cond_10
    invoke-virtual {p0, v2}, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;->getContent(Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_1a
    return-void
.end method
