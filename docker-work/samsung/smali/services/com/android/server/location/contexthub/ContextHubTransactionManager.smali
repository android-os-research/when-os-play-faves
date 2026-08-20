.class public Lcom/android/server/location/contexthub/ContextHubTransactionManager;
.super Ljava/lang/Object;
.source "ContextHubTransactionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;
    }
.end annotation


# static fields
.field public static final DATE_FORMAT:Ljava/text/DateFormat;

.field public static final MAX_PENDING_REQUESTS:I = 0x2710

.field public static final NUM_TRANSACTION_RECORDS:I = 0x14

.field public static final TAG:Ljava/lang/String; = "ContextHubTransactionManager"


# instance fields
.field public final mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

.field public final mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

.field public final mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

.field public final mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mTimeoutExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public final mTransactionQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/location/contexthub/ContextHubServiceTransaction;",
            ">;"
        }
    .end annotation
.end field

.field public final mTransactionRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque<",
            "Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$bIjQtoPMS72KRYMGAFhm7fO71vc(Lcom/android/server/location/contexthub/ContextHubTransactionManager;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->lambda$startNextTransaction$0(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmClientManager(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Lcom/android/server/location/contexthub/ContextHubClientManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContextHubProxy(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Lcom/android/server/location/contexthub/IContextHubWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNanoAppStateManager(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Lcom/android/server/location/contexthub/NanoAppStateManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mtoStatsTransactionResult(Lcom/android/server/location/contexthub/ContextHubTransactionManager;I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->toStatsTransactionResult(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDATE_FORMAT()Ljava/text/DateFormat;
    .registers 1

    sget-object v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->DATE_FORMAT:Ljava/text/DateFormat;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->DATE_FORMAT:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Lcom/android/server/location/contexthub/NanoAppStateManager;)V
    .registers 6

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 89
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 96
    new-instance v0, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    .line 122
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 123
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 124
    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    return-void
.end method

.method private synthetic lambda$startNextTransaction$0(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V
    .registers 5

    .line 469
    monitor-enter p0

    .line 470
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->isComplete()Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "ContextHubTransactionManager"

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " timed out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    .line 472
    invoke-virtual {p1, v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 475
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeTransactionAndStartNext()V

    .line 477
    :cond_24
    monitor-exit p0

    return-void

    :catchall_26
    move-exception p1

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_26

    throw p1
.end method


# virtual methods
.method public declared-synchronized addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 360
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0x2710

    if-eq v0, v1, :cond_2c

    .line 364
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 365
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    new-instance v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2a

    .line 368
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->startNextTransaction()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_34

    .line 370
    :cond_2a
    monitor-exit p0

    return-void

    .line 361
    :cond_2c
    :try_start_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Transaction queue is full (capacity = 10000)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_34

    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public createDisableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .registers 16

    .line 281
    new-instance v9, Lcom/android/server/location/contexthub/ContextHubTransactionManager$4;

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 282
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x3

    move-object v0, v9

    move-object v1, p0

    move-object v4, p5

    move v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$4;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IILjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;)V

    return-object v9
.end method

.method public createEnableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .registers 16

    .line 244
    new-instance v9, Lcom/android/server/location/contexthub/ContextHubTransactionManager$3;

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 245
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x2

    move-object v0, v9

    move-object v1, p0

    move-object v4, p5

    move v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$3;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IILjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;)V

    return-object v9
.end method

.method public createLoadTransaction(ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .registers 16

    .line 138
    new-instance v10, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 139
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 140
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v4

    const/4 v3, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v6, p4

    move v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IIJLjava/lang/String;ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;)V

    return-object v10
.end method

.method public createQueryTransaction(ILandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .registers 12

    .line 317
    new-instance v7, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 318
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x4

    move-object v0, v7

    move-object v1, p0

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IILjava/lang/String;ILandroid/hardware/location/IContextHubTransactionCallback;)V

    return-object v7
.end method

.method public createUnloadTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .registers 18

    .line 194
    new-instance v11, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;

    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 195
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x1

    move-object v0, v11

    move-wide v4, p2

    move-object/from16 v6, p5

    move v7, p1

    move-wide v8, p2

    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IIJLjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;)V

    return-object v11
.end method

.method public declared-synchronized onHubReset()V
    .registers 2

    monitor-enter p0

    .line 422
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_12

    if-nez v0, :cond_d

    .line 424
    monitor-exit p0

    return-void

    .line 427
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeTransactionAndStartNext()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    .line 428
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onQueryResponse(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 403
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    if-nez v0, :cond_14

    const-string p1, "ContextHubTransactionManager"

    const-string v0, "Received unexpected query response (no transaction pending)"

    .line 405
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_41

    .line 406
    monitor-exit p0

    return-void

    .line 408
    :cond_14
    :try_start_14
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_38

    const-string p1, "ContextHubTransactionManager"

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unexpected query response (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_14 .. :try_end_36} :catchall_41

    .line 410
    monitor-exit p0

    return-void

    :cond_38
    const/4 v1, 0x0

    .line 413
    :try_start_39
    invoke-virtual {v0, v1, p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onQueryResponse(ILjava/util/List;)V

    .line 414
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeTransactionAndStartNext()V
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_41

    .line 415
    monitor-exit p0

    return-void

    :catchall_41
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onTransactionResponse(IZ)V
    .registers 6

    monitor-enter p0

    .line 380
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    if-nez v0, :cond_14

    const-string p1, "ContextHubTransactionManager"

    const-string p2, "Received unexpected transaction response (no transaction pending)"

    .line 382
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_50

    .line 383
    monitor-exit p0

    return-void

    .line 385
    :cond_14
    :try_start_14
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionId()I

    move-result v1

    if-eq v1, p1, :cond_43

    const-string p2, "ContextHubTransactionManager"

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unexpected transaction response (expected ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", received ID = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 386
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_14 .. :try_end_41} :catchall_50

    .line 388
    monitor-exit p0

    return-void

    :cond_43
    if-eqz p2, :cond_47

    const/4 p1, 0x0

    goto :goto_48

    :cond_47
    const/4 p1, 0x5

    .line 391
    :goto_48
    :try_start_48
    invoke-virtual {v0, p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 393
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeTransactionAndStartNext()V
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_50

    .line 394
    monitor-exit p0

    return-void

    :catchall_50
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final removeTransactionAndStartNext()V
    .registers 3

    .line 441
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 443
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 444
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setComplete()V

    .line 446
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 447
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->startNextTransaction()V

    :cond_1c
    return-void
.end method

.method public final startNextTransaction()V
    .registers 7

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_44

    .line 463
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    .line 464
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 465
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransact()I

    move-result v1

    if-nez v1, :cond_36

    .line 468
    new-instance v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 480
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTimeout(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 482
    :try_start_24
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2c} :catch_2d

    goto :goto_42

    :catch_2d
    move-exception v0

    const-string v2, "ContextHubTransactionManager"

    const-string v3, "Error when schedule a timer"

    .line 485
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    .line 489
    :cond_36
    invoke-static {v1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result v2

    .line 488
    invoke-virtual {v0, v2}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 490
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    :goto_42
    move v0, v1

    goto :goto_1

    :cond_44
    return-void
.end method

.method public final toStatsTransactionResult(I)I
    .registers 2

    if-eqz p1, :cond_16

    packed-switch p1, :pswitch_data_18

    const/4 p0, 0x1

    return p0

    :pswitch_7
    const/16 p0, 0x8

    return p0

    :pswitch_a
    const/4 p0, 0x7

    return p0

    :pswitch_c
    const/4 p0, 0x6

    return p0

    :pswitch_e
    const/4 p0, 0x5

    return p0

    :pswitch_10
    const/4 p0, 0x4

    return p0

    :pswitch_12
    const/4 p0, 0x3

    return p0

    :pswitch_14
    const/4 p0, 0x2

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0

    :pswitch_data_18
    .packed-switch 0x2
        :pswitch_14
        :pswitch_12
        :pswitch_10
        :pswitch_e
        :pswitch_c
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 523
    monitor-enter p0

    .line 524
    :try_start_8
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;

    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;

    .line 525
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_67

    .line 526
    :goto_14
    array-length v3, v1

    if-ge v2, v3, :cond_38

    .line 527
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_38
    const-string v1, "Transaction History:\n"

    .line 530
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    .line 532
    :goto_43
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43

    .line 535
    :cond_62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_67
    move-exception v0

    .line 525
    :try_start_68
    monitor-exit p0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v0
.end method
