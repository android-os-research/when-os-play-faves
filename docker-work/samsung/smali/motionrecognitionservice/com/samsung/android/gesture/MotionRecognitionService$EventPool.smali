.class Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;
.super Ljava/lang/Object;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventPool"
.end annotation


# static fields
.field static final POOL_SIZE:I = 0xa


# instance fields
.field final events:[Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

.field final mLockEventPool:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 1555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1556
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;->mLockEventPool:Ljava/lang/Object;

    .line 1557
    const/16 v0, 0xa

    new-array v1, v0, [Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;->events:[Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    .line 1559
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_1f

    .line 1560
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;->events:[Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    new-instance v3, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    invoke-direct {v3}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;-><init>()V

    aput-object v3, v2, v1

    .line 1559
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1562
    .end local v1    # "i":I
    :cond_1f
    return-void
.end method


# virtual methods
.method public obtain()Lcom/samsung/android/gesture/SemMotionRecognitionEvent;
    .registers 6

    .line 1565
    const/4 v0, 0x0

    .line 1566
    .local v0, "motionEvent":Lcom/samsung/android/gesture/SemMotionRecognitionEvent;
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;->mLockEventPool:Ljava/lang/Object;

    monitor-enter v1

    .line 1567
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    const/16 v3, 0xa

    if-ge v2, v3, :cond_17

    .line 1568
    :try_start_9
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;->events:[Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    aget-object v4, v3, v2

    if-eqz v4, :cond_14

    .line 1569
    move-object v0, v4

    .line 1570
    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 1571
    goto :goto_17

    .line 1567
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1574
    .end local v2    # "i":I
    :cond_17
    :goto_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_21

    .line 1575
    if-nez v0, :cond_20

    .line 1576
    new-instance v1, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    invoke-direct {v1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;-><init>()V

    move-object v0, v1

    .line 1578
    :cond_20
    return-object v0

    .line 1574
    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v2
.end method

.method public recycle(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
    .registers 6
    .param p1, "motionEvent"    # Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    .line 1582
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;->mLockEventPool:Ljava/lang/Object;

    monitor-enter v0

    .line 1583
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    const/16 v2, 0xa

    if-ge v1, v2, :cond_14

    .line 1584
    :try_start_8
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;->events:[Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    aget-object v3, v2, v1

    if-nez v3, :cond_11

    .line 1585
    aput-object p1, v2, v1

    .line 1586
    goto :goto_14

    .line 1583
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1589
    .end local v1    # "i":I
    :cond_14
    :goto_14
    monitor-exit v0

    .line 1590
    return-void

    .line 1589
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v1
.end method
