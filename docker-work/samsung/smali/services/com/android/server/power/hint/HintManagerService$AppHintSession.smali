.class final Lcom/android/server/power/hint/HintManagerService$AppHintSession;
.super Landroid/os/IHintSession$Stub;
.source "HintManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/hint/HintManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AppHintSession"
.end annotation


# instance fields
.field public mHalSessionPtr:J

.field public final mPid:I

.field public mTargetDurationNanos:J

.field public final mThreadIds:[I

.field public final mToken:Landroid/os/IBinder;

.field public final mUid:I

.field public mUpdateAllowed:Z

.field public final synthetic this$0:Lcom/android/server/power/hint/HintManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/power/hint/HintManagerService$AppHintSession;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monProcStateChanged(Lcom/android/server/power/hint/HintManagerService$AppHintSession;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->onProcStateChanged()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/hint/HintManagerService;II[ILandroid/os/IBinder;JJ)V
    .registers 10

    .line 391
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-direct {p0}, Landroid/os/IHintSession$Stub;-><init>()V

    .line 392
    iput p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    .line 393
    iput p3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mPid:I

    .line 394
    iput-object p5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mToken:Landroid/os/IBinder;

    .line 395
    iput-object p4, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    .line 396
    iput-wide p6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    .line 397
    iput-wide p8, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTargetDurationNanos:J

    const/4 p2, 0x1

    .line 398
    iput-boolean p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowed:Z

    .line 399
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->updateHintAllowed()Z

    const/4 p2, 0x0

    .line 401
    :try_start_18
    invoke-interface {p5, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception p2

    .line 403
    invoke-static {p1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object p1

    iget-wide p3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {p1, p3, p4}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halCloseHintSession(J)V

    .line 404
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Client already dead"

    invoke-direct {p0, p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method


# virtual methods
.method public binderDied()V
    .registers 1

    .line 508
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->close()V

    return-void
.end method

.method public close()V
    .registers 8

    .line 457
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 458
    :try_start_7
    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_11

    monitor-exit v0

    return-void

    .line 459
    :cond_11
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v1, v5, v6}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halCloseHintSession(J)V

    .line 460
    iput-wide v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    .line 461
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 462
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    iget v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    const/4 v3, 0x1

    if-nez v1, :cond_4c

    const-string v1, "HintManagerService"

    const-string v4, "UID %d is not present in active session map"

    new-array v3, v3, [Ljava/lang/Object;

    .line 464
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v4, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    monitor-exit v0

    return-void

    .line 467
    :cond_4c
    iget-object v4, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    if-nez v4, :cond_69

    const-string v1, "HintManagerService"

    const-string v4, "Token %s is not present in token map"

    new-array v3, v3, [Ljava/lang/Object;

    .line 469
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v4, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    monitor-exit v0

    return-void

    .line 472
    :cond_69
    invoke-virtual {v4, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 473
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_77

    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    :cond_77
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    :cond_8c
    monitor-exit v0

    return-void

    :catchall_8e
    move-exception p0

    monitor-exit v0
    :try_end_90
    .catchall {:try_start_7 .. :try_end_90} :catchall_8e

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 497
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 498
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SessionPID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SessionUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SessionTIDs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SessionTargetDurationNanos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTargetDurationNanos:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "SessionAllowed: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->updateHintAllowed()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    monitor-exit v0

    return-void

    :catchall_8c
    move-exception p0

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_7 .. :try_end_8e} :catchall_8c

    throw p0
.end method

.method public final onProcStateChanged()V
    .registers 1

    .line 479
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->updateHintAllowed()Z

    return-void
.end method

.method public final pause()V
    .registers 6

    .line 483
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 484
    :try_start_7
    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_11

    monitor-exit v0

    return-void

    .line 485
    :cond_11
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halPauseHintSession(J)V

    .line 486
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public reportActualWorkDuration([J[J)V
    .registers 11

    .line 434
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 435
    :try_start_7
    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_67

    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->updateHintAllowed()Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_67

    .line 438
    :cond_16
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1d

    move v1, v2

    goto :goto_1e

    :cond_1d
    move v1, v5

    :goto_1e
    const-string/jumbo v6, "the count of hint durations shouldn\'t be 0."

    invoke-static {v1, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 440
    array-length v1, p1

    array-length v6, p2

    if-ne v1, v6, :cond_2a

    move v1, v2

    goto :goto_2b

    :cond_2a
    move v1, v5

    :goto_2b
    const-string v6, "The length of durations and timestamps should be the same."

    invoke-static {v1, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move v1, v5

    .line 442
    :goto_31
    array-length v6, p1

    if-ge v1, v6, :cond_5a

    .line 443
    aget-wide v6, p1, v1

    cmp-long v6, v6, v3

    if-lez v6, :cond_3d

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 444
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "durations[%d]=%d should be greater than 0"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 446
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aget-wide v4, p1, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v2

    .line 445
    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 449
    :cond_5a
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halReportActualWorkDuration(J[J[J)V

    .line 451
    monitor-exit v0

    return-void

    .line 436
    :cond_67
    :goto_67
    monitor-exit v0

    return-void

    :catchall_69
    move-exception p0

    .line 451
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_7 .. :try_end_6b} :catchall_69

    throw p0
.end method

.method public final resume()V
    .registers 6

    .line 490
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 491
    :try_start_7
    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_11

    monitor-exit v0

    return-void

    .line 492
    :cond_11
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halResumeHintSession(J)V

    .line 493
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public updateHintAllowed()Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 411
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v1, v1, Lcom/android/server/power/hint/HintManagerService;->mUidObserver:Lcom/android/server/power/hint/HintManagerService$UidObserver;

    iget v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v1, v2}, Lcom/android/server/power/hint/HintManagerService$UidObserver;->isUidForeground(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 412
    iget-boolean v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowed:Z

    if-nez v2, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->resume()V

    :cond_1a
    if-nez v1, :cond_23

    .line 413
    iget-boolean v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowed:Z

    if-eqz v2, :cond_23

    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->pause()V

    .line 414
    :cond_23
    iput-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowed:Z

    .line 415
    monitor-exit v0

    return v1

    :catchall_27
    move-exception p0

    .line 416
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public updateTargetWorkDuration(J)V
    .registers 8

    .line 421
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 422
    :try_start_7
    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_31

    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->updateHintAllowed()Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_31

    :cond_16
    cmp-long v1, p1, v3

    if-lez v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    const-string v2, "Expected the target duration to be greater than 0."

    .line 425
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 427
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halUpdateTargetWorkDuration(JJ)V

    .line 428
    iput-wide p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTargetDurationNanos:J

    .line 429
    monitor-exit v0

    return-void

    .line 423
    :cond_31
    :goto_31
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    .line 429
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_33

    throw p0
.end method
