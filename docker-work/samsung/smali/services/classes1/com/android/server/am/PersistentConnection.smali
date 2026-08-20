.class public abstract Lcom/android/server/am/PersistentConnection;
.super Ljava/lang/Object;
.source "PersistentConnection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false


# instance fields
.field public final mBindForBackoffRunnable:Ljava/lang/Runnable;

.field public mBound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsConnected:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mLastConnectedTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mNextBackoffMs:J

.field public mNumBindingDied:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mNumConnected:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mNumDisconnected:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mRebindBackoffIncrease:D

.field public final mRebindBackoffMs:J

.field public final mRebindMaxBackoffMs:J

.field public mRebindScheduled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mReconnectTime:J

.field public final mResetBackoffDelay:J

.field public mService:Ljava/lang/Object;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final mServiceConnection:Landroid/content/ServiceConnection;

.field public mShouldBeBound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mStableCheck:Ljava/lang/Runnable;

.field public final mTag:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$0Uc1BLpcIBcXfSfpGEj9PLYt4UA(Lcom/android/server/am/PersistentConnection;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->stableConnectionCheck()V

    return-void
.end method

.method public static synthetic $r8$lambda$NDr0QkTwLudk3QjjkXGtybRrWsM(Lcom/android/server/am/PersistentConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBound(Lcom/android/server/am/PersistentConnection;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmComponentName(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/am/PersistentConnection;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNumBindingDied(Lcom/android/server/am/PersistentConnection;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/PersistentConnection;->mNumBindingDied:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNumConnected(Lcom/android/server/am/PersistentConnection;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/PersistentConnection;->mNumConnected:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNumDisconnected(Lcom/android/server/am/PersistentConnection;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/PersistentConnection;->mNumDisconnected:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTag(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/am/PersistentConnection;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsConnected(Lcom/android/server/am/PersistentConnection;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastConnectedTime(Lcom/android/server/am/PersistentConnection;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/PersistentConnection;->mLastConnectedTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNumBindingDied(Lcom/android/server/am/PersistentConnection;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/PersistentConnection;->mNumBindingDied:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNumConnected(Lcom/android/server/am/PersistentConnection;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/PersistentConnection;->mNumConnected:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNumDisconnected(Lcom/android/server/am/PersistentConnection;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/PersistentConnection;->mNumDisconnected:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmService(Lcom/android/server/am/PersistentConnection;Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/PersistentConnection;->mService:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcleanUpConnectionLocked(Lcom/android/server/am/PersistentConnection;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->cleanUpConnectionLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleStableCheckLocked(Lcom/android/server/am/PersistentConnection;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->scheduleStableCheckLocked()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ILandroid/content/ComponentName;JDJJ)V
    .registers 15

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    .line 118
    new-instance v0, Lcom/android/server/am/PersistentConnection$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/PersistentConnection$1;-><init>(Lcom/android/server/am/PersistentConnection;)V

    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 179
    new-instance v0, Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/PersistentConnection;)V

    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    .line 395
    new-instance v0, Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/PersistentConnection;)V

    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mStableCheck:Ljava/lang/Runnable;

    .line 185
    iput-object p1, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    .line 186
    iput-object p2, p0, Lcom/android/server/am/PersistentConnection;->mContext:Landroid/content/Context;

    .line 187
    iput-object p3, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    .line 188
    iput p4, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    .line 189
    iput-object p5, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    const-wide/16 p1, 0x3e8

    mul-long/2addr p6, p1

    .line 191
    iput-wide p6, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffMs:J

    .line 192
    iput-wide p8, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffIncrease:D

    mul-long/2addr p10, p1

    .line 193
    iput-wide p10, p0, Lcom/android/server/am/PersistentConnection;->mRebindMaxBackoffMs:J

    mul-long/2addr p12, p1

    .line 194
    iput-wide p12, p0, Lcom/android/server/am/PersistentConnection;->mResetBackoffDelay:J

    .line 196
    iput-wide p6, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 1

    .line 179
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->bindForBackoff()V

    return-void
.end method


# virtual methods
.method public abstract asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public final bind()V
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 253
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    .line 255
    invoke-virtual {p0, v1}, Lcom/android/server/am/PersistentConnection;->bindInnerLocked(Z)V

    .line 256
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final bindForBackoff()V
    .registers 3

    .line 327
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    if-nez v1, :cond_9

    .line 330
    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x0

    .line 333
    invoke-virtual {p0, v1}, Lcom/android/server/am/PersistentConnection;->bindInnerLocked(Z)V

    .line 334
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final bindInnerLocked(Z)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 297
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleRebindLocked()V

    .line 299
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-eqz v0, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x1

    .line 302
    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    .line 304
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleStableCheckLocked()V

    if-eqz p1, :cond_13

    .line 307
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->resetBackoffLocked()V

    .line 310
    :cond_13
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 316
    iget-object v2, p0, Lcom/android/server/am/PersistentConnection;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 317
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->getBindFlags()I

    move-result v1

    or-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    iget v0, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    .line 318
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    move-object v3, p1

    .line 316
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 321
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " u"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " failed."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    return-void
.end method

.method public final cleanUpConnectionLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 339
    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    const/4 v0, 0x0

    .line 340
    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mService:Ljava/lang/Object;

    .line 342
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleStableCheckLocked()V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8

    .line 426
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 427
    :try_start_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " u"

    .line 429
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 430
    iget v1, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 431
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-eqz v1, :cond_20

    const-string v1, " [bound]"

    goto :goto_22

    :cond_20
    const-string v1, " [not bound]"

    :goto_22
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 432
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    if-eqz v1, :cond_2c

    const-string v1, " [connected]"

    goto :goto_2e

    :cond_2c
    const-string v1, " [not connected]"

    :goto_2e
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 433
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    if-eqz v1, :cond_44

    const-string v1, " reconnect in "

    .line 434
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 435
    iget-wide v1, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 437
    :cond_44
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 439
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  Next backoff(sec): "

    .line 440
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 441
    iget-wide v1, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 442
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 444
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  Connected: "

    .line 445
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 446
    iget p1, p0, Lcom/android/server/am/PersistentConnection;->mNumConnected:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, "  Disconnected: "

    .line 447
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 448
    iget p1, p0, Lcom/android/server/am/PersistentConnection;->mNumDisconnected:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, "  Died: "

    .line 449
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 450
    iget p1, p0, Lcom/android/server/am/PersistentConnection;->mNumBindingDied:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 451
    iget-boolean p1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    if-eqz p1, :cond_8e

    const-string p1, "  Duration: "

    .line 452
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v1

    iget-wide p0, p0, Lcom/android/server/am/PersistentConnection;->mLastConnectedTime:J

    sub-long/2addr v1, p0

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 455
    :cond_8e
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 456
    monitor-exit v0

    return-void

    :catchall_93
    move-exception p0

    monitor-exit v0
    :try_end_95
    .catchall {:try_start_3 .. :try_end_95} :catchall_93

    throw p0
.end method

.method public abstract getBindFlags()I
.end method

.method public getBindForBackoffRunnableForTest()Ljava/lang/Runnable;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 491
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getNextBackoffMs()J
    .registers 4

    .line 261
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    monitor-exit v0

    return-wide v1

    :catchall_7
    move-exception p0

    .line 263
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getNextBackoffMsForTest()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 476
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    return-wide v0
.end method

.method public getNumBindingDied()I
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_3
    iget p0, p0, Lcom/android/server/am/PersistentConnection;->mNumBindingDied:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 284
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getNumConnected()I
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_3
    iget p0, p0, Lcom/android/server/am/PersistentConnection;->mNumConnected:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 270
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getNumDisconnected()I
    .registers 2

    .line 275
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_3
    iget p0, p0, Lcom/android/server/am/PersistentConnection;->mNumDisconnected:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 277
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getReconnectTimeForTest()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 481
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    return-wide v0
.end method

.method public final getServiceBinder()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mService:Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 245
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getServiceConnectionForTest()Landroid/content/ServiceConnection;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 486
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public getStableCheckRunnableForTest()Ljava/lang/Runnable;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 496
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mStableCheck:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getUserId()I
    .registers 1

    .line 204
    iget p0, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    return p0
.end method

.method public injectPostAtTime(Ljava/lang/Runnable;J)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 466
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public injectRemoveCallbacks(Ljava/lang/Runnable;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 461
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public injectUptimeMillis()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 471
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final isBound()Z
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 218
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final isConnected()Z
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 236
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final isRebindScheduled()Z
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 227
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final resetBackoffLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 289
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_22

    .line 290
    iput-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    .line 291
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backoff reset to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-void
.end method

.method public scheduleRebindLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 379
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unbindLocked()V

    .line 381
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    if-nez v0, :cond_44

    .line 382
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling to reconnect in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms (uptime)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    .line 386
    iget-object v2, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/am/PersistentConnection;->injectPostAtTime(Ljava/lang/Runnable;J)V

    .line 388
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindMaxBackoffMs:J

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffIncrease:D

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    const/4 v0, 0x1

    .line 391
    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    :cond_44
    return-void
.end method

.method public final scheduleStableCheckLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 418
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleStableCheckLocked()V

    .line 419
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mStableCheck:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/am/PersistentConnection;->mResetBackoffDelay:J

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/PersistentConnection;->injectPostAtTime(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public shouldBeBoundForTest()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 501
    iget-boolean p0, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    return p0
.end method

.method public final stableConnectionCheck()V
    .registers 8

    .line 398
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v1

    .line 400
    iget-wide v3, p0, Lcom/android/server/am/PersistentConnection;->mLastConnectedTime:J

    iget-wide v5, p0, Lcom/android/server/am/PersistentConnection;->mResetBackoffDelay:J

    add-long/2addr v3, v5

    sub-long/2addr v3, v1

    .line 405
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    if-eqz v1, :cond_1e

    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-gtz v1, :cond_1e

    .line 406
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->resetBackoffLocked()V

    .line 408
    :cond_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public final unbind()V
    .registers 3

    .line 349
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 350
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    .line 352
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unbindLocked()V

    .line 353
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleStableCheckLocked()V

    .line 354
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final unbindLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 359
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleRebindLocked()V

    .line 361
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-nez v0, :cond_8

    return-void

    .line 364
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 365
    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    .line 366
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 368
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->cleanUpConnectionLocked()V

    return-void
.end method

.method public unscheduleRebindLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/server/am/PersistentConnection;->injectRemoveCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 374
    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    return-void
.end method

.method public final unscheduleStableCheckLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mStableCheck:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/server/am/PersistentConnection;->injectRemoveCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
