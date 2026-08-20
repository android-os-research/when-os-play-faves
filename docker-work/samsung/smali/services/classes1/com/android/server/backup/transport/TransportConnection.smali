.class public Lcom/android/server/backup/transport/TransportConnection;
.super Ljava/lang/Object;
.source "TransportConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;,
        Lcom/android/server/backup/transport/TransportConnection$State;,
        Lcom/android/server/backup/transport/TransportConnection$Transition;
    }
.end annotation


# static fields
.field public static final LOG_BUFFER_SIZE:I = 0x5

.field public static final TAG:Ljava/lang/String; = "TransportConnection"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final mBindIntent:Landroid/content/Intent;

.field public final mCloseGuard:Ldalvik/system/CloseGuard;

.field public final mConnection:Landroid/content/ServiceConnection;

.field public final mContext:Landroid/content/Context;

.field public final mCreatorLogString:Ljava/lang/String;

.field public final mIdentifier:Ljava/lang/String;

.field public final mListenerHandler:Landroid/os/Handler;

.field public final mListeners:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStateLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/backup/transport/TransportConnectionListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mLogBuffer:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLogBufferLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mLogBufferLock:Ljava/lang/Object;

.field public final mPrefixForLog:Ljava/lang/String;

.field public mState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStateLock"
        }
    .end annotation
.end field

.field public final mStateLock:Ljava/lang/Object;

.field public volatile mTransport:Lcom/android/server/backup/transport/BackupTransportClient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStateLock"
        }
    .end annotation
.end field

.field public final mTransportComponent:Landroid/content/ComponentName;

.field public final mTransportStats:Lcom/android/server/backup/transport/TransportStats;

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$0VZ8sZ9Ao1icvh_L9stwB6JPWwM(Ljava/util/concurrent/CompletableFuture;Lcom/android/server/backup/transport/BackupTransportClient;Lcom/android/server/backup/transport/TransportConnection;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/backup/transport/TransportConnection;->lambda$connect$0(Ljava/util/concurrent/CompletableFuture;Lcom/android/server/backup/transport/BackupTransportClient;Lcom/android/server/backup/transport/TransportConnection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R_3brUf_15qZ7goqOoQYlP3LXB4(Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/server/backup/transport/BackupTransportClient;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/transport/TransportConnection;->lambda$notifyListener$1(Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/server/backup/transport/BackupTransportClient;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monBindingDied(Lcom/android/server/backup/transport/TransportConnection;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/backup/transport/TransportConnection;->onBindingDied()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monServiceConnected(Lcom/android/server/backup/transport/TransportConnection;Landroid/os/IBinder;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportConnection;->onServiceConnected(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monServiceDisconnected(Lcom/android/server/backup/transport/TransportConnection;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/backup/transport/TransportConnection;->onServiceDisconnected()V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/android/server/backup/transport/TransportStats;Landroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17

    .line 119
    new-instance v8, Landroid/os/Handler;

    .line 127
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 119
    invoke-direct/range {v0 .. v8}, Lcom/android/server/backup/transport/TransportConnection;-><init>(ILandroid/content/Context;Lcom/android/server/backup/transport/TransportStats;Landroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/android/server/backup/transport/TransportStats;Landroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBufferLock:Ljava/lang/Object;

    .line 96
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 98
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBuffer:Ljava/util/List;

    .line 101
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    const/4 v1, 0x1

    .line 104
    iput v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    .line 140
    iput p1, p0, Lcom/android/server/backup/transport/TransportConnection;->mUserId:I

    .line 141
    iput-object p2, p0, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    .line 142
    iput-object p3, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    .line 143
    iput-object p5, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransportComponent:Landroid/content/ComponentName;

    .line 144
    iput-object p4, p0, Lcom/android/server/backup/transport/TransportConnection;->mBindIntent:Landroid/content/Intent;

    .line 145
    iput-object p6, p0, Lcom/android/server/backup/transport/TransportConnection;->mIdentifier:Ljava/lang/String;

    .line 146
    iput-object p7, p0, Lcom/android/server/backup/transport/TransportConnection;->mCreatorLogString:Ljava/lang/String;

    .line 147
    iput-object p8, p0, Lcom/android/server/backup/transport/TransportConnection;->mListenerHandler:Landroid/os/Handler;

    .line 148
    new-instance p1, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p0, p3}, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;-><init>(Landroid/content/Context;Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor-IA;)V

    iput-object p1, p0, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    .line 151
    invoke-virtual {p5}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p1

    const-string p2, ".*\\."

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 152
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/transport/TransportConnection;->mPrefixForLog:Ljava/lang/String;

    const-string/jumbo p0, "markAsDisposed"

    .line 154
    invoke-virtual {v0, p0}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$connect$0(Ljava/util/concurrent/CompletableFuture;Lcom/android/server/backup/transport/BackupTransportClient;Lcom/android/server/backup/transport/TransportConnection;)V
    .registers 3

    .line 338
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$notifyListener$1(Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/server/backup/transport/BackupTransportClient;)V
    .registers 3

    .line 509
    invoke-interface {p1, p2, p0}, Lcom/android/server/backup/transport/TransportConnectionListener;->onTransportConnectionResult(Lcom/android/server/backup/transport/BackupTransportClient;Lcom/android/server/backup/transport/TransportConnection;)V

    return-void
.end method


# virtual methods
.method public final checkState(ZLjava/lang/String;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x6

    .line 593
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final checkStateIntegrityLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStateLock"
        }
    .end annotation

    .line 566
    iget v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4a

    if-eq v0, v2, :cond_61

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3f

    const/4 v3, 0x3

    if-eq v0, v3, :cond_29

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    invoke-virtual {p0, v2}, Lcom/android/server/backup/transport/TransportConnection;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    goto :goto_76

    .line 581
    :cond_29
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v3, "Unexpected listeners when state = CONNECTED"

    invoke-virtual {p0, v0, v3}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    if-eqz v0, :cond_39

    move v1, v2

    :cond_39
    const-string v0, "Transport expected to be non-null when state = CONNECTED"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    goto :goto_76

    .line 576
    :cond_3f
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    if-nez v0, :cond_44

    move v1, v2

    :cond_44
    const-string v0, "Transport expected to be null when state = BOUND_AND_CONNECTING"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    goto :goto_76

    .line 568
    :cond_4a
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v3, "Unexpected listeners when state = UNUSABLE"

    invoke-virtual {p0, v0, v3}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    if-nez v0, :cond_5b

    move v0, v2

    goto :goto_5c

    :cond_5b
    move v0, v1

    :goto_5c
    const-string v3, "Transport expected to be null when state = UNUSABLE"

    invoke-virtual {p0, v0, v3}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    .line 572
    :cond_61
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v3, "Unexpected listeners when state = IDLE"

    invoke-virtual {p0, v0, v3}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    if-nez v0, :cond_71

    move v1, v2

    :cond_71
    const-string v0, "Transport expected to be null when state = IDLE"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    :goto_76
    return-void
.end method

.method public connect(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;
    .registers 11

    .line 319
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Can\'t call connect() on main thread"

    .line 318
    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    const/4 v2, 0x3

    if-eqz v0, :cond_1a

    const-string v1, "Sync connect: reusing transport"

    .line 323
    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 328
    :cond_1a
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :try_start_1d
    iget v3, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    const/4 v4, 0x0

    if-nez v3, :cond_2a

    const/4 v1, 0x5

    const-string v2, "Sync connect: UNUSABLE client"

    .line 330
    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 331
    monitor-exit v0

    return-object v4

    .line 333
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_8e

    .line 335
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 336
    new-instance v3, Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 340
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-string v7, "Sync connect: calling async"

    .line 341
    invoke-virtual {p0, v2, p1, v7}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0, v3, p1}, Lcom/android/server/backup/transport/TransportConnection;->connectAsync(Lcom/android/server/backup/transport/TransportConnectionListener;Ljava/lang/String;)V

    .line 345
    :try_start_41
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/transport/BackupTransportClient;

    .line 346
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 347
    iget-object v3, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    iget-object v5, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransportComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v5, v7, v8}, Lcom/android/server/backup/transport/TransportStats;->registerConnectionTime(Landroid/content/ComponentName;J)V

    .line 348
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Connect took %d ms"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v6

    invoke-static {v3, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_67} :catch_68
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_41 .. :try_end_67} :catch_68

    return-object v0

    :catch_68
    move-exception v0

    .line 351
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " while waiting for transport: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, p1, v0}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-object v4

    :catchall_8e
    move-exception p0

    .line 333
    :try_start_8f
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw p0
.end method

.method public connectAsync(Lcom/android/server/backup/transport/TransportConnectionListener;Ljava/lang/String;)V
    .registers 12

    .line 211
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/backup/transport/TransportConnection;->checkStateIntegrityLocked()V

    .line 214
    iget v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    const/4 v2, 0x0

    if-eqz v1, :cond_5c

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eq v1, v4, :cond_2b

    if-eq v1, v3, :cond_20

    if-eq v1, v5, :cond_15

    goto :goto_65

    :cond_15
    const-string v1, "Async connect: reusing transport"

    .line 248
    invoke-virtual {p0, v5, p2, v1}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/backup/transport/TransportConnection;->notifyListener(Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/server/backup/transport/BackupTransportClient;Ljava/lang/String;)V

    goto :goto_65

    :cond_20
    const-string v1, "Async connect: already connecting, adding listener"

    .line 241
    invoke-virtual {p0, v5, p2, v1}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object p0, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    .line 220
    :cond_2b
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/backup/transport/TransportConnection;->mBindIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    iget v8, p0, Lcom/android/server/backup/transport/TransportConnection;->mUserId:I

    .line 225
    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 221
    invoke-virtual {v1, v6, v7, v4, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "Async connect: service bound, connecting"

    .line 230
    invoke-virtual {p0, v5, p2, v1}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0, v3, v2}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    .line 232
    iget-object p0, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    :cond_4b
    const/4 v1, 0x6

    const-string v3, "Async connect: bindService returned false"

    .line 234
    invoke-virtual {p0, v1, v3}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 237
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/backup/transport/TransportConnection;->notifyListener(Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/server/backup/transport/BackupTransportClient;Ljava/lang/String;)V

    goto :goto_65

    :cond_5c
    const/4 v1, 0x5

    const-string v3, "Async connect: UNUSABLE client"

    .line 216
    invoke-virtual {p0, v1, p2, v3}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/backup/transport/TransportConnection;->notifyListener(Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/server/backup/transport/BackupTransportClient;Ljava/lang/String;)V

    .line 252
    :goto_65
    monitor-exit v0

    return-void

    :catchall_67
    move-exception p0

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_67

    throw p0
.end method

.method public connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotAvailableException;
        }
    .end annotation

    .line 371
    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportConnection;->connect(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    const/4 v0, 0x6

    const-string v1, "Transport connection failed"

    .line 373
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 374
    new-instance p0, Lcom/android/server/backup/transport/TransportNotAvailableException;

    invoke-direct {p0}, Lcom/android/server/backup/transport/TransportNotAvailableException;-><init>()V

    throw p0
.end method

.method public finalize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 410
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 411
    iget v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2e

    const-string v1, "TransportClient.finalize()"

    const/4 v2, 0x6

    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dangling TransportClient created in ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/transport/TransportConnection;->mCreatorLogString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] being GC\'ed. Left bound, unbinding..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_30

    .line 419
    :try_start_2b
    invoke-virtual {p0, v1}, Lcom/android/server/backup/transport/TransportConnection;->unbind(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_2b .. :try_end_2e} :catch_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_30

    .line 427
    :catch_2e
    :cond_2e
    :try_start_2e
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_30

    throw p0
.end method

.method public getConnectedTransport(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotAvailableException;
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/4 v0, 0x6

    const-string v1, "Transport not connected"

    .line 392
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 393
    new-instance p0, Lcom/android/server/backup/transport/TransportNotAvailableException;

    invoke-direct {p0}, Lcom/android/server/backup/transport/TransportNotAvailableException;-><init>()V

    throw p0
.end method

.method public getLogBuffer()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 634
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 635
    :try_start_3
    iget-object p0, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBuffer:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 636
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getTransportComponent()Landroid/content/ComponentName;
    .registers 1

    .line 158
    iget-object p0, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransportComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final log(ILjava/lang/String;)V
    .registers 6

    .line 613
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mPrefixForLog:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TransportConnection"

    invoke-static {p1, v2, v0}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-static {v1, v1, p2}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportConnection;->saveLogEntry(Ljava/lang/String;)V

    return-void
.end method

.method public final log(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 618
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mPrefixForLog:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransportConnection"

    invoke-static {p1, v1, v0}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 619
    invoke-static {p1, p2, p3}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportConnection;->saveLogEntry(Ljava/lang/String;)V

    return-void
.end method

.method public markAsDisposed()V
    .registers 4

    .line 286
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_3
    iget v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    const-string v2, "Can\'t mark as disposed if still bound"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 289
    iget-object p0, p0, Lcom/android/server/backup/transport/TransportConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {p0}, Ldalvik/system/CloseGuard;->close()V

    .line 290
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public final notifyListener(Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/server/backup/transport/BackupTransportClient;Ljava/lang/String;)V
    .registers 8

    if-eqz p2, :cond_5

    const-string v0, "BackupTransportClient"

    goto :goto_8

    :cond_5
    const-string/jumbo v0, "null"

    :goto_8
    const/4 v1, 0x4

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] transport = "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v1, p3}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    .line 509
    iget-object p3, p0, Lcom/android/server/backup/transport/TransportConnection;->mListenerHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/server/backup/transport/BackupTransportClient;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final notifyListenersAndClearLocked(Lcom/android/server/backup/transport/BackupTransportClient;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStateLock"
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 515
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/transport/TransportConnectionListener;

    .line 516
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 517
    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/backup/transport/TransportConnection;->notifyListener(Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/server/backup/transport/BackupTransportClient;Ljava/lang/String;)V

    goto :goto_a

    .line 519
    :cond_26
    iget-object p0, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final onBindingDied()V
    .registers 7

    .line 475
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/backup/transport/TransportConnection;->checkStateIntegrityLocked()V

    const-string v1, "Binding died: client UNUSABLE"

    const/4 v2, 0x6

    .line 478
    invoke-virtual {p0, v2, v1}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    .line 479
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    if-eqz v1, :cond_15

    .line 480
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    invoke-virtual {v1}, Lcom/android/server/backup/transport/BackupTransportClient;->onBecomingUnusable()V

    .line 483
    :cond_15
    iget v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v1, v3, :cond_3c

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2e

    const/4 v2, 0x3

    if-eq v1, v2, :cond_23

    goto :goto_44

    .line 496
    :cond_23
    invoke-virtual {p0, v4, v5}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    .line 497
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_44

    .line 491
    :cond_2e
    invoke-virtual {p0, v4, v5}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    .line 492
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 493
    invoke-virtual {p0, v5}, Lcom/android/server/backup/transport/TransportConnection;->notifyListenersAndClearLocked(Lcom/android/server/backup/transport/BackupTransportClient;)V

    goto :goto_44

    :cond_3c
    const-string v1, "Unexpected state transition IDLE => UNUSABLE"

    .line 487
    invoke-virtual {p0, v2, v1}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    .line 488
    invoke-virtual {p0, v4, v5}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    .line 500
    :goto_44
    monitor-exit v0

    return-void

    :catchall_46
    move-exception p0

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public final onServiceConnected(Landroid/os/IBinder;)V
    .registers 5

    .line 431
    invoke-static {p1}, Lcom/android/internal/backup/IBackupTransport$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object p1

    .line 432
    new-instance v0, Lcom/android/server/backup/transport/BackupTransportClient;

    invoke-direct {v0, p1}, Lcom/android/server/backup/transport/BackupTransportClient;-><init>(Lcom/android/internal/backup/IBackupTransport;)V

    .line 433
    iget-object p1, p0, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 434
    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/backup/transport/TransportConnection;->checkStateIntegrityLocked()V

    .line 436
    iget v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    if-eqz v1, :cond_1f

    const-string v1, "Transport connected"

    const/4 v2, 0x3

    .line 437
    invoke-virtual {p0, v2, v1}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    .line 438
    invoke-virtual {p0, v2, v0}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    .line 439
    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/TransportConnection;->notifyListenersAndClearLocked(Lcom/android/server/backup/transport/BackupTransportClient;)V

    .line 441
    :cond_1f
    monitor-exit p1

    return-void

    :catchall_21
    move-exception p0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_21

    throw p0
.end method

.method public final onServiceDisconnected()V
    .registers 6

    .line 450
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x6

    :try_start_4
    const-string v2, "Service disconnected: client UNUSABLE"

    .line 451
    invoke-virtual {p0, v1, v2}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    .line 452
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    if-eqz v1, :cond_12

    .line 453
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    invoke-virtual {v1}, Lcom/android/server/backup/transport/BackupTransportClient;->onBecomingUnusable()V

    :cond_12
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 455
    invoke-virtual {p0, v1, v2}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_3b

    .line 458
    :try_start_17
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_1e} :catch_1f
    .catchall {:try_start_17 .. :try_end_1e} :catchall_3b

    goto :goto_39

    :catch_1f
    move-exception v1

    const/4 v2, 0x5

    .line 463
    :try_start_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception trying to unbind onServiceDisconnected(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 463
    invoke-virtual {p0, v2, v1}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    .line 467
    :goto_39
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception p0

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_21 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public final onStateTransition(II)V
    .registers 8

    .line 531
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransportComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 532
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/backup/transport/TransportConnection;->transitionThroughState(III)I

    move-result v2

    const/4 v3, 0x3

    .line 533
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/backup/transport/TransportConnection;->transitionThroughState(III)I

    move-result p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz v2, :cond_28

    if-ne v2, p2, :cond_18

    move v2, p2

    goto :goto_19

    :cond_18
    move v2, p1

    :goto_19
    const/16 v3, 0xb22

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, p1

    .line 536
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, p2

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_28
    if-eqz p0, :cond_3e

    if-ne p0, p2, :cond_2e

    move p0, p2

    goto :goto_2f

    :cond_2e
    move p0, p1

    :goto_2f
    const/16 v2, 0xb23

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, p1

    .line 540
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, p2

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_3e
    return-void
.end method

.method public final saveLogEntry(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    .line 623
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 625
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 626
    :try_start_22
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBuffer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_36

    .line 627
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBuffer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 629
    :cond_36
    iget-object p0, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBuffer:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 630
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_22 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public final setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStateLock"
        }
    .end annotation

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    invoke-virtual {p0, v1}, Lcom/android/server/backup/transport/TransportConnection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportConnection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    .line 525
    iget v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/transport/TransportConnection;->onStateTransition(II)V

    .line 526
    iput p1, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    .line 527
    iput-object p2, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    return-void
.end method

.method public final stateToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_2b

    const/4 p0, 0x1

    if-eq p1, p0, :cond_28

    const/4 p0, 0x2

    if-eq p1, p0, :cond_25

    const/4 p0, 0x3

    if-eq p1, p0, :cond_22

    .line 608
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<UNKNOWN = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    const-string p0, "CONNECTED"

    return-object p0

    :cond_25
    const-string p0, "BOUND_AND_CONNECTING"

    return-object p0

    :cond_28
    const-string p0, "IDLE"

    return-object p0

    :cond_2b
    const-string p0, "UNUSABLE"

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransportClient{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransportComponent:Landroid/content/ComponentName;

    .line 401
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/backup/transport/TransportConnection;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final transitionThroughState(III)I
    .registers 4

    if-ge p1, p3, :cond_6

    if-gt p3, p2, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    if-lt p1, p3, :cond_c

    if-le p3, p2, :cond_c

    const/4 p0, -0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public unbind(Ljava/lang/String;)V
    .registers 7

    .line 262
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/backup/transport/TransportConnection;->checkStateIntegrityLocked()V

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unbind requested (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    invoke-virtual {p0, v2}, Lcom/android/server/backup/transport/TransportConnection;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 266
    iget p1, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v1, :cond_3b

    if-eq p1, v2, :cond_30

    goto :goto_48

    .line 277
    :cond_30
    invoke-virtual {p0, v3, v4}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    .line 278
    iget-object p1, p0, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_48

    .line 271
    :cond_3b
    invoke-virtual {p0, v3, v4}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    .line 273
    iget-object p1, p0, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 274
    invoke-virtual {p0, v4}, Lcom/android/server/backup/transport/TransportConnection;->notifyListenersAndClearLocked(Lcom/android/server/backup/transport/BackupTransportClient;)V

    .line 281
    :goto_48
    monitor-exit v0

    return-void

    :catchall_4a
    move-exception p0

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw p0
.end method
