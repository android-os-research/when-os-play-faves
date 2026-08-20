.class public Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;
.super Ljava/lang/Object;
.source "SoundTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumOps"
.end annotation


# instance fields
.field public mLastOpsHourSinceBoot:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mNumOps:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1441
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mLock:Ljava/lang/Object;

    const/16 v0, 0x18

    new-array v0, v0, [I

    .line 1443
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mNumOps:[I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService$NumOps-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;-><init>()V

    return-void
.end method


# virtual methods
.method public addOp(J)V
    .registers 7

    .line 1477
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1478
    :try_start_3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    .line 1480
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mNumOps:[I

    const-wide/16 v2, 0x18

    rem-long v2, p1, v2

    long-to-int v2, v2

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 1481
    iput-wide p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mLastOpsHourSinceBoot:J

    .line 1482
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public clearOldOps(J)V
    .registers 11

    .line 1457
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1458
    :try_start_3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    .line 1463
    iget-wide v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mLastOpsHourSinceBoot:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_25

    const-wide/16 v3, 0x1

    :goto_15
    add-long/2addr v1, v3

    cmp-long v5, v1, p1

    if-gtz v5, :cond_25

    .line 1465
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mNumOps:[I

    const-wide/16 v6, 0x18

    rem-long v6, v1, v6

    long-to-int v6, v6

    const/4 v7, 0x0

    aput v7, v5, v6

    goto :goto_15

    .line 1468
    :cond_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public getOpsAdded()I
    .registers 5

    .line 1491
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    const/16 v3, 0x18

    if-ge v1, v3, :cond_11

    .line 1494
    :try_start_9
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mNumOps:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1497
    :cond_11
    monitor-exit v0

    return v2

    :catchall_13
    move-exception p0

    .line 1498
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw p0
.end method
