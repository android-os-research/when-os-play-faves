.class public Landroid/telecom/Logging/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;,
        Landroid/telecom/Logging/SessionManager$ISessionListener;,
        Landroid/telecom/Logging/SessionManager$ICurrentThreadId;,
        Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_SESSION_TIMEOUT_MS:J = 0x7530L

.field private static final blacklist LOGGING_TAG:Ljava/lang/String; = "Logging"

.field private static final blacklist SESSION_ID_ROLLOVER_THRESHOLD:J = 0x40000L

.field private static final blacklist TIMEOUTS_PREFIX:Ljava/lang/String; = "telecom."


# instance fields
.field public blacklist mCleanStaleSessions:Ljava/lang/Runnable;

.field private blacklist mContext:Landroid/content/Context;

.field public blacklist mCurrentThreadId:Landroid/telecom/Logging/SessionManager$ICurrentThreadId;

.field private blacklist mSessionCleanupHandler:Landroid/os/Handler;

.field private blacklist mSessionCleanupTimeoutMs:Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;

.field private blacklist mSessionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Logging/SessionManager$ISessionListener;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telecom/Logging/Session;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist sCodeEntryCounter:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    new-instance v0, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda0;-><init>(Landroid/telecom/Logging/SessionManager;)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mCleanStaleSessions:Ljava/lang/Runnable;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupHandler:Landroid/os/Handler;

    .line 73
    new-instance v0, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mCurrentThreadId:Landroid/telecom/Logging/SessionManager$ICurrentThreadId;

    .line 76
    new-instance v0, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda2;-><init>(Landroid/telecom/Logging/SessionManager;)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupTimeoutMs:Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionListeners:Ljava/util/List;

    .line 106
    return-void
.end method

.method private blacklist endParentSessions(Landroid/telecom/Logging/Session;)V
    .registers 8
    .param p1, "subsession"    # Landroid/telecom/Logging/Session;

    .line 344
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->isSessionCompleted()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getChildSessions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_78

    .line 347
    :cond_11
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v0

    .line 348
    .local v0, "parentSession":Landroid/telecom/Logging/Session;
    if-eqz v0, :cond_38

    .line 349
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/telecom/Logging/Session;->setParentSession(Landroid/telecom/Logging/Session;)V

    .line 350
    invoke-virtual {v0, p1}, Landroid/telecom/Logging/Session;->removeChild(Landroid/telecom/Logging/Session;)V

    .line 353
    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->isExternal()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getExecutionStartTimeMilliseconds()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 356
    .local v1, "fullSessionTimeMs":J
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getShortMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1, v2}, Landroid/telecom/Logging/SessionManager;->notifySessionCompleteListeners(Ljava/lang/String;J)V

    .line 358
    .end local v1    # "fullSessionTimeMs":J
    :cond_34
    invoke-direct {p0, v0}, Landroid/telecom/Logging/SessionManager;->endParentSessions(Landroid/telecom/Logging/Session;)V

    goto :goto_77

    .line 363
    :cond_38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getExecutionStartTimeMilliseconds()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 364
    .restart local v1    # "fullSessionTimeMs":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "END_SESSION (dur: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 365
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 364
    const-string v5, "Logging"

    invoke-static {v5, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->isExternal()Z

    move-result v3

    if-nez v3, :cond_77

    .line 367
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getShortMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1, v2}, Landroid/telecom/Logging/SessionManager;->notifySessionCompleteListeners(Ljava/lang/String;J)V

    .line 370
    .end local v1    # "fullSessionTimeMs":J
    :cond_77
    :goto_77
    return-void

    .line 345
    .end local v0    # "parentSession":Landroid/telecom/Logging/Session;
    :cond_78
    :goto_78
    return-void
.end method

.method private blacklist getBase64Encoding(I)Ljava/lang/String;
    .registers 5
    .param p1, "number"    # I

    .line 403
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 404
    .local v1, "idByteArray":[B
    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 405
    .end local v1    # "idByteArray":[B
    .local v0, "idByteArray":[B
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getCallingThreadId()I
    .registers 2

    .line 409
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mCurrentThreadId:Landroid/telecom/Logging/SessionManager$ICurrentThreadId;

    invoke-interface {v0}, Landroid/telecom/Logging/SessionManager$ICurrentThreadId;->get()I

    move-result v0

    return v0
.end method

.method private blacklist getCleanupTimeout(Landroid/content/Context;)J
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 457
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 458
    .local v0, "cr":Landroid/content/ContentResolver;
    nop

    .line 460
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1

    .line 458
    const-string/jumbo v2, "telecom.stale_session_cleanup_timeout_millis"

    const-wide/16 v3, 0x7530

    invoke-static {v0, v2, v3, v4, v1}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v1

    return-wide v1
.end method

.method private declared-synchronized blacklist getNextSessionID()Ljava/lang/String;
    .registers 6

    monitor-enter p0

    .line 390
    :try_start_1
    iget v0, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 391
    .local v0, "nextId":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0x40000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_25

    .line 392
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->restartSessionCounter()V

    .line 393
    iget v1, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    .line 395
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telecom/Logging/SessionManager;->getBase64Encoding(I)Ljava/lang/String;

    move-result-object v1
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return-object v1

    .line 389
    .end local v0    # "nextId":Ljava/lang/Integer;
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private blacklist getSessionCleanupTimeoutMs()J
    .registers 3

    .line 109
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupTimeoutMs:Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;

    invoke-interface {v0}, Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist notifySessionCompleteListeners(Ljava/lang/String;J)V
    .registers 6
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "sessionTimeMs"    # J

    .line 373
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/SessionManager$ISessionListener;

    .line 374
    .local v1, "l":Landroid/telecom/Logging/SessionManager$ISessionListener;
    invoke-interface {v1, p1, p2, p3}, Landroid/telecom/Logging/SessionManager$ISessionListener;->sessionComplete(Ljava/lang/String;J)V

    .line 375
    .end local v1    # "l":Landroid/telecom/Logging/SessionManager$ISessionListener;
    goto :goto_6

    .line 376
    :cond_16
    return-void
.end method

.method private declared-synchronized blacklist resetStaleSessionTimer()V
    .registers 5

    monitor-enter p0

    .line 113
    :try_start_1
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mCleanStaleSessions:Ljava/lang/Runnable;

    if-eqz v0, :cond_14

    .line 116
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupHandler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getSessionCleanupTimeoutMs()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 118
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_14
    monitor-exit p0

    return-void

    .line 112
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized blacklist restartSessionCounter()V
    .registers 2

    monitor-enter p0

    .line 399
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 400
    monitor-exit p0

    return-void

    .line 398
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized blacklist cancelSubsession(Landroid/telecom/Logging/Session;)V
    .registers 4
    .param p1, "subsession"    # Landroid/telecom/Logging/Session;

    monitor-enter p0

    .line 271
    if-nez p1, :cond_5

    .line 272
    monitor-exit p0

    return-void

    .line 275
    :cond_5
    const-wide/16 v0, -0x1

    :try_start_7
    invoke-virtual {p1, v0, v1}, Landroid/telecom/Logging/Session;->markSessionCompleted(J)V

    .line 276
    invoke-direct {p0, p1}, Landroid/telecom/Logging/SessionManager;->endParentSessions(Landroid/telecom/Logging/Session;)V
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_f

    .line 277
    monitor-exit p0

    return-void

    .line 270
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    .end local p1    # "subsession":Landroid/telecom/Logging/Session;
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist cleanupStaleSessions(J)V
    .registers 12
    .param p1, "timeoutMs"    # J

    monitor-enter p0

    .line 428
    :try_start_1
    const-string v0, "Stale Sessions Cleaned:\n"

    .line 429
    .local v0, "logMessage":Ljava/lang/String;
    const/4 v1, 0x0

    .line 430
    .local v1, "isSessionsStale":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 435
    .local v2, "currentTimeMs":J
    iget-object v4, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    .line 436
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telecom/Logging/Session;>;>;"
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 437
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 438
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telecom/Logging/Session;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/Logging/Session;

    .line 439
    .local v6, "session":Landroid/telecom/Logging/Session;
    invoke-virtual {v6}, Landroid/telecom/Logging/Session;->getExecutionStartTimeMilliseconds()J

    move-result-wide v7

    sub-long v7, v2, v7

    cmp-long v7, v7, p1

    if-lez v7, :cond_4e

    .line 440
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 441
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/telecom/Logging/Session;->printFullSessionTree()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 442
    const/4 v1, 0x1

    .line 444
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telecom/Logging/Session;>;"
    .end local v6    # "session":Landroid/telecom/Logging/Session;
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_4e
    goto :goto_12

    .line 445
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telecom/Logging/Session;>;>;"
    :cond_4f
    const/4 v4, 0x0

    if-eqz v1, :cond_5a

    .line 446
    const-string v5, "Logging"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v4}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_63

    .line 448
    :cond_5a
    const-string v5, "Logging"

    const-string v6, "No stale logging sessions needed to be cleaned..."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v6, v4}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_65

    .line 450
    :goto_63
    monitor-exit p0

    return-void

    .line 427
    .end local v0    # "logMessage":Ljava/lang/String;
    .end local v1    # "isSessionsStale":Z
    .end local v2    # "currentTimeMs":J
    .end local p1    # "timeoutMs":J
    :catchall_65
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V
    .registers 8
    .param p1, "subsession"    # Landroid/telecom/Logging/Session;
    .param p2, "shortMethodName"    # Ljava/lang/String;

    monitor-enter p0

    .line 285
    if-nez p1, :cond_5

    .line 286
    monitor-exit p0

    return-void

    .line 288
    :cond_5
    :try_start_5
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->resetStaleSessionTimer()V

    .line 289
    invoke-virtual {p1, p2}, Landroid/telecom/Logging/Session;->setShortMethodName(Ljava/lang/String;)V

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/telecom/Logging/Session;->setExecutionStartTimeMs(J)V

    .line 291
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v0

    .line 292
    .local v0, "parentSession":Landroid/telecom/Logging/Session;
    const/4 v1, 0x0

    if-nez v0, :cond_35

    .line 293
    const-string v2, "Logging"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log.continueSession was called with no session active for method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_6e

    .line 295
    monitor-exit p0

    return-void

    .line 298
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_35
    :try_start_35
    iget-object v2, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->isStartedFromActiveSession()Z

    move-result v2

    if-nez v2, :cond_52

    .line 300
    const-string v2, "Logging"

    const-string v3, "CONTINUE_SUBSESSION"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6c

    .line 302
    :cond_52
    const-string v2, "Logging"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CONTINUE_SUBSESSION (Invisible Subsession) with Method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6c
    .catchall {:try_start_35 .. :try_end_6c} :catchall_6e

    .line 305
    :goto_6c
    monitor-exit p0

    return-void

    .line 284
    .end local v0    # "parentSession":Landroid/telecom/Logging/Session;
    .end local p1    # "subsession":Landroid/telecom/Logging/Session;
    .end local p2    # "shortMethodName":Ljava/lang/String;
    :catchall_6e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist createSubsession()Landroid/telecom/Logging/Session;
    .registers 2

    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Logging/SessionManager;->createSubsession(Z)Landroid/telecom/Logging/Session;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized blacklist createSubsession(Z)Landroid/telecom/Logging/Session;
    .registers 13
    .param p1, "isStartedFromActiveSession"    # Z

    monitor-enter p0

    .line 219
    :try_start_1
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v0

    .line 220
    .local v0, "threadId":I
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session;

    .line 221
    .local v1, "threadSession":Landroid/telecom/Logging/Session;
    const/4 v2, 0x0

    if-nez v1, :cond_20

    .line 222
    const-string v3, "Logging"

    const-string v4, "Log.createSubsession was called with no session active."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_6a

    .line 224
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 227
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_20
    :try_start_20
    new-instance v10, Landroid/telecom/Logging/Session;

    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getNextChildId()Ljava/lang/String;

    move-result-object v4

    .line 228
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getShortMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 229
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getOwnerInfo()Ljava/lang/String;

    move-result-object v9

    move-object v3, v10

    move v8, p1

    invoke-direct/range {v3 .. v9}, Landroid/telecom/Logging/Session;-><init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    move-object v3, v10

    .line 230
    .local v3, "newSubsession":Landroid/telecom/Logging/Session;
    invoke-virtual {v1, v3}, Landroid/telecom/Logging/Session;->addChild(Landroid/telecom/Logging/Session;)V

    .line 231
    invoke-virtual {v3, v1}, Landroid/telecom/Logging/Session;->setParentSession(Landroid/telecom/Logging/Session;)V

    .line 233
    if-nez p1, :cond_5f

    .line 234
    const-string v4, "Logging"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CREATE_SUBSESSION "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 235
    invoke-virtual {v3}, Landroid/telecom/Logging/Session;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    .line 234
    invoke-static {v4, v5, v2}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_68

    .line 237
    :cond_5f
    const-string v4, "Logging"

    const-string v5, "CREATE_SUBSESSION (Invisible subsession)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v2}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_68
    .catchall {:try_start_20 .. :try_end_68} :catchall_6a

    .line 240
    :goto_68
    monitor-exit p0

    return-object v3

    .line 218
    .end local v0    # "threadId":I
    .end local v1    # "threadSession":Landroid/telecom/Logging/Session;
    .end local v3    # "newSubsession":Landroid/telecom/Logging/Session;
    .end local p1    # "isStartedFromActiveSession":Z
    :catchall_6a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist endSession()V
    .registers 8

    monitor-enter p0

    .line 312
    :try_start_1
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v0

    .line 313
    .local v0, "threadId":I
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session;

    .line 314
    .local v1, "completedSession":Landroid/telecom/Logging/Session;
    const/4 v2, 0x0

    if-nez v1, :cond_1f

    .line 315
    const-string v3, "Logging"

    const-string v4, "Log.endSession was called with no session active."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_9e

    .line 316
    monitor-exit p0

    return-void

    .line 319
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_1f
    :try_start_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/telecom/Logging/Session;->markSessionCompleted(J)V

    .line 320
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->isStartedFromActiveSession()Z

    move-result v3

    if-nez v3, :cond_51

    .line 321
    const-string v3, "Logging"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "END_SUBSESSION (dur: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 322
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getLocalExecutionTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mS)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    .line 321
    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_75

    .line 324
    :cond_51
    const-string v3, "Logging"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "END_SUBSESSION (Invisible Subsession) (dur: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 325
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getLocalExecutionTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    .line 324
    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    :goto_75
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v2

    .line 330
    .local v2, "parentSession":Landroid/telecom/Logging/Session;
    iget-object v3, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-direct {p0, v1}, Landroid/telecom/Logging/SessionManager;->endParentSessions(Landroid/telecom/Logging/Session;)V

    .line 334
    if-eqz v2, :cond_9c

    invoke-virtual {v2}, Landroid/telecom/Logging/Session;->isSessionCompleted()Z

    move-result v3

    if-nez v3, :cond_9c

    .line 335
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->isStartedFromActiveSession()Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 336
    iget-object v3, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9c
    .catchall {:try_start_1f .. :try_end_9c} :catchall_9e

    .line 338
    :cond_9c
    monitor-exit p0

    return-void

    .line 311
    .end local v0    # "threadId":I
    .end local v1    # "completedSession":Landroid/telecom/Logging/Session;
    .end local v2    # "parentSession":Landroid/telecom/Logging/Session;
    :catchall_9e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist getExternalSession()Landroid/telecom/Logging/Session$Info;
    .registers 2

    monitor-enter p0

    .line 244
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Landroid/telecom/Logging/SessionManager;->getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 244
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;
    .registers 7
    .param p1, "ownerInfo"    # Ljava/lang/String;

    monitor-enter p0

    .line 255
    :try_start_1
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v0

    .line 256
    .local v0, "threadId":I
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session;

    .line 257
    .local v1, "threadSession":Landroid/telecom/Logging/Session;
    if-nez v1, :cond_20

    .line 258
    const-string v2, "Logging"

    const-string v3, "Log.getExternalSession was called with no session active."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_26

    .line 260
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 262
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_20
    :try_start_20
    invoke-virtual {v1, p1}, Landroid/telecom/Logging/Session;->getExternalInfo(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object v2
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_26

    monitor-exit p0

    return-object v2

    .line 254
    .end local v0    # "threadId":I
    .end local v1    # "threadSession":Landroid/telecom/Logging/Session;
    .end local p1    # "ownerInfo":Ljava/lang/String;
    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist getSessionId()Ljava/lang/String;
    .registers 3

    .line 379
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/Session;

    .line 380
    .local v0, "currentSession":Landroid/telecom/Logging/Session;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_17
    const-string v1, ""

    :goto_19
    return-object v1
.end method

.method synthetic blacklist lambda$new$0$android-telecom-Logging-SessionManager()V
    .registers 3

    .line 60
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getSessionCleanupTimeoutMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telecom/Logging/SessionManager;->cleanupStaleSessions(J)V

    return-void
.end method

.method synthetic blacklist lambda$new$1$android-telecom-Logging-SessionManager()J
    .registers 3

    .line 79
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_7

    .line 80
    const-wide/16 v0, 0x7530

    return-wide v0

    .line 82
    :cond_7
    invoke-direct {p0, v0}, Landroid/telecom/Logging/SessionManager;->getCleanupTimeout(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized blacklist printActiveSessions()Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 418
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    .local v0, "message":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 420
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telecom/Logging/Session;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session;

    invoke-virtual {v3}, Landroid/telecom/Logging/Session;->printFullSessionTree()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    nop

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telecom/Logging/Session;>;"
    goto :goto_10

    .line 423
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    monitor-exit p0

    return-object v1

    .line 417
    .end local v0    # "message":Ljava/lang/StringBuilder;
    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist registerSessionListener(Landroid/telecom/Logging/SessionManager$ISessionListener;)V
    .registers 3
    .param p1, "l"    # Landroid/telecom/Logging/SessionManager$ISessionListener;

    monitor-enter p0

    .line 384
    if-eqz p1, :cond_c

    .line 385
    :try_start_3
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    goto :goto_c

    .line 383
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    .end local p1    # "l":Landroid/telecom/Logging/SessionManager$ISessionListener;
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1

    .line 387
    .restart local p0    # "this":Landroid/telecom/Logging/SessionManager;
    .restart local p1    # "l":Landroid/telecom/Logging/SessionManager$ISessionListener;
    :cond_c
    :goto_c
    monitor-exit p0

    return-void
.end method

.method public blacklist setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    iput-object p1, p0, Landroid/telecom/Logging/SessionManager;->mContext:Landroid/content/Context;

    .line 103
    return-void
.end method

.method public declared-synchronized blacklist startExternalSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V
    .registers 15
    .param p1, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .param p2, "shortMethodName"    # Ljava/lang/String;

    monitor-enter p0

    .line 167
    if-nez p1, :cond_5

    .line 168
    monitor-exit p0

    return-void

    .line 171
    :cond_5
    :try_start_5
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v0

    .line 172
    .local v0, "threadId":I
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session;

    .line 173
    .local v1, "threadSession":Landroid/telecom/Logging/Session;
    const/4 v2, 0x0

    if-eqz v1, :cond_24

    .line 176
    const-string v3, "Logging"

    const-string/jumbo v4, "trying to start an external session with a session already active."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_6c

    .line 178
    monitor-exit p0

    return-void

    .line 182
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_24
    :try_start_24
    const-string v3, "Logging"

    const-string v4, "START_EXTERNAL_SESSION"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    new-instance v2, Landroid/telecom/Logging/Session;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "E-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/telecom/Logging/Session$Info;->sessionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Landroid/telecom/Logging/Session$Info;->methodPath:Ljava/lang/String;

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    iget-object v11, p1, Landroid/telecom/Logging/Session$Info;->ownerInfo:Ljava/lang/String;

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Landroid/telecom/Logging/Session;-><init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    .line 186
    .local v2, "externalSession":Landroid/telecom/Logging/Session;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/telecom/Logging/Session;->setIsExternal(Z)V

    .line 189
    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/telecom/Logging/Session;->markSessionCompleted(J)V

    .line 192
    iget-object v3, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {p0}, Landroid/telecom/Logging/SessionManager;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v3

    .line 195
    .local v3, "childSession":Landroid/telecom/Logging/Session;
    invoke-virtual {p0, v3, p2}, Landroid/telecom/Logging/SessionManager;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_24 .. :try_end_6a} :catchall_6c

    .line 196
    monitor-exit p0

    return-void

    .line 166
    .end local v0    # "threadId":I
    .end local v1    # "threadSession":Landroid/telecom/Logging/Session;
    .end local v2    # "externalSession":Landroid/telecom/Logging/Session;
    .end local v3    # "childSession":Landroid/telecom/Logging/Session;
    .end local p1    # "sessionInfo":Landroid/telecom/Logging/Session$Info;
    .end local p2    # "shortMethodName":Ljava/lang/String;
    :catchall_6c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "info"    # Landroid/telecom/Logging/Session$Info;
    .param p2, "shortMethodName"    # Ljava/lang/String;
    .param p3, "callerIdentification"    # Ljava/lang/String;

    monitor-enter p0

    .line 128
    if-nez p1, :cond_7

    .line 129
    :try_start_3
    invoke-virtual {p0, p2, p3}, Landroid/telecom/Logging/SessionManager;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 131
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_7
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Logging/SessionManager;->startExternalSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 133
    :goto_a
    monitor-exit p0

    return-void

    .line 127
    .end local p1    # "info":Landroid/telecom/Logging/Session$Info;
    .end local p2    # "shortMethodName":Ljava/lang/String;
    .end local p3    # "callerIdentification":Ljava/lang/String;
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist startSession(Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "shortMethodName"    # Ljava/lang/String;
    .param p2, "callerIdentification"    # Ljava/lang/String;

    monitor-enter p0

    .line 141
    :try_start_1
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->resetStaleSessionTimer()V

    .line 142
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v0

    .line 143
    .local v0, "threadId":I
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session;

    .line 146
    .local v1, "activeSession":Landroid/telecom/Logging/Session;
    if-eqz v1, :cond_20

    .line 147
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/telecom/Logging/SessionManager;->createSubsession(Z)Landroid/telecom/Logging/Session;

    move-result-object v2

    .line 148
    .local v2, "childSession":Landroid/telecom/Logging/Session;
    invoke-virtual {p0, v2, p1}, Landroid/telecom/Logging/SessionManager;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_46

    .line 149
    monitor-exit p0

    return-void

    .line 152
    .end local v2    # "childSession":Landroid/telecom/Logging/Session;
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_20
    :try_start_20
    const-string v2, "Logging"

    const-string v3, "START_SESSION"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    new-instance v2, Landroid/telecom/Logging/Session;

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getNextSessionID()Ljava/lang/String;

    move-result-object v6

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v5, v2

    move-object v7, p1

    move-object v11, p2

    invoke-direct/range {v5 .. v11}, Landroid/telecom/Logging/Session;-><init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    .line 156
    .local v2, "newSession":Landroid/telecom/Logging/Session;
    iget-object v3, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_20 .. :try_end_44} :catchall_46

    .line 157
    monitor-exit p0

    return-void

    .line 140
    .end local v0    # "threadId":I
    .end local v1    # "activeSession":Landroid/telecom/Logging/Session;
    .end local v2    # "newSession":Landroid/telecom/Logging/Session;
    .end local p1    # "shortMethodName":Ljava/lang/String;
    .end local p2    # "callerIdentification":Ljava/lang/String;
    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method
