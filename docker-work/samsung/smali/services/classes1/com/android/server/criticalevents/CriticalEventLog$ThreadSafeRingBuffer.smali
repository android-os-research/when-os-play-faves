.class public Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;
.super Ljava/lang/Object;
.source "CriticalEventLog.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/criticalevents/CriticalEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadSafeRingBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final mBuffer:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final mCapacity:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput p2, p0, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;->mCapacity:I

    .line 389
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;->mBuffer:Lcom/android/internal/util/RingBuffer;

    return-void
.end method


# virtual methods
.method public declared-synchronized append(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 393
    :try_start_1
    iget-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;->mBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 394
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public capacity()I
    .registers 1

    .line 401
    iget p0, p0, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;->mCapacity:I

    return p0
.end method

.method public declared-synchronized toArray()[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    monitor-enter p0

    .line 397
    :try_start_1
    iget-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;->mBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
