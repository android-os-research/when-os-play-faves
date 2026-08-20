.class abstract Lcom/android/commands/bmgr/Bmgr$Observer;
.super Landroid/app/backup/IBackupObserver$Stub;
.source "Bmgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/bmgr/Bmgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Observer"
.end annotation


# instance fields
.field private volatile done:Z

.field private final trigger:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 329
    invoke-direct {p0}, Landroid/app/backup/IBackupObserver$Stub;-><init>()V

    .line 330
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/commands/bmgr/Bmgr$Observer;->trigger:Ljava/lang/Object;

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/bmgr/Bmgr$Observer;->done:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/bmgr/Bmgr$Observer-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr$Observer;-><init>()V

    return-void
.end method


# virtual methods
.method public backupFinished(I)V
    .registers 4
    .param p1, "status"    # I

    .line 345
    iget-object v0, p0, Lcom/android/commands/bmgr/Bmgr$Observer;->trigger:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/commands/bmgr/Bmgr$Observer;->done:Z

    .line 347
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr$Observer;->trigger:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 348
    monitor-exit v0

    .line 349
    return-void

    .line 348
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public done()Z
    .registers 2

    .line 352
    iget-boolean v0, p0, Lcom/android/commands/bmgr/Bmgr$Observer;->done:Z

    return v0
.end method

.method public onResult(Ljava/lang/String;I)V
    .registers 3
    .param p1, "currentPackage"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 341
    return-void
.end method

.method public onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    .registers 3
    .param p1, "currentPackage"    # Ljava/lang/String;
    .param p2, "backupProgress"    # Landroid/app/backup/BackupProgress;

    .line 337
    return-void
.end method

.method public waitForCompletion()V
    .registers 3

    .line 357
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/commands/bmgr/Bmgr$Observer;->waitForCompletion(J)V

    .line 358
    return-void
.end method

.method public waitForCompletion(J)V
    .registers 9
    .param p1, "timeout"    # J

    .line 364
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 365
    .local v0, "targetTime":J
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr$Observer;->trigger:Ljava/lang/Object;

    monitor-enter v2

    .line 367
    :goto_8
    :try_start_8
    iget-boolean v3, p0, Lcom/android/commands/bmgr/Bmgr$Observer;->done:Z

    if-nez v3, :cond_24

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_1a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_26

    cmp-long v3, v3, v0

    if-gez v3, :cond_24

    .line 369
    :cond_1a
    :try_start_1a
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr$Observer;->trigger:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_21} :catch_22
    .catchall {:try_start_1a .. :try_end_21} :catchall_26

    goto :goto_23

    .line 370
    :catch_22
    move-exception v3

    .line 371
    :goto_23
    goto :goto_8

    .line 373
    :cond_24
    :try_start_24
    monitor-exit v2

    .line 374
    return-void

    .line 373
    :catchall_26
    move-exception v3

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_26

    throw v3
.end method
