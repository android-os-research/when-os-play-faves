.class Lcom/android/commands/am/Instrument$InstrumentationWatcher;
.super Landroid/app/IInstrumentationWatcher$Stub;
.source "Instrument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/am/Instrument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstrumentationWatcher"
.end annotation


# instance fields
.field private mFinished:Z

.field private final mReporter:Lcom/android/commands/am/Instrument$StatusReporter;

.field final synthetic this$0:Lcom/android/commands/am/Instrument;


# direct methods
.method public constructor <init>(Lcom/android/commands/am/Instrument;Lcom/android/commands/am/Instrument$StatusReporter;)V
    .registers 3
    .param p2, "reporter"    # Lcom/android/commands/am/Instrument$StatusReporter;

    .line 381
    iput-object p1, p0, Lcom/android/commands/am/Instrument$InstrumentationWatcher;->this$0:Lcom/android/commands/am/Instrument;

    invoke-direct {p0}, Landroid/app/IInstrumentationWatcher$Stub;-><init>()V

    .line 379
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/commands/am/Instrument$InstrumentationWatcher;->mFinished:Z

    .line 382
    iput-object p2, p0, Lcom/android/commands/am/Instrument$InstrumentationWatcher;->mReporter:Lcom/android/commands/am/Instrument$StatusReporter;

    .line 383
    return-void
.end method


# virtual methods
.method public instrumentationFinished(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "resultCode"    # I
    .param p3, "results"    # Landroid/os/Bundle;

    .line 395
    monitor-enter p0

    .line 396
    :try_start_1
    iget-object v0, p0, Lcom/android/commands/am/Instrument$InstrumentationWatcher;->mReporter:Lcom/android/commands/am/Instrument$StatusReporter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/commands/am/Instrument$StatusReporter;->onInstrumentationFinishedLocked(Landroid/content/ComponentName;ILandroid/os/Bundle;)V

    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/commands/am/Instrument$InstrumentationWatcher;->mFinished:Z

    .line 398
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 399
    monitor-exit p0

    .line 400
    return-void

    .line 399
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "resultCode"    # I
    .param p3, "results"    # Landroid/os/Bundle;

    .line 387
    monitor-enter p0

    .line 388
    :try_start_1
    iget-object v0, p0, Lcom/android/commands/am/Instrument$InstrumentationWatcher;->mReporter:Lcom/android/commands/am/Instrument$StatusReporter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/commands/am/Instrument$StatusReporter;->onInstrumentationStatusLocked(Landroid/content/ComponentName;ILandroid/os/Bundle;)V

    .line 389
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 390
    monitor-exit p0

    .line 391
    return-void

    .line 390
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public waitForFinish()Z
    .registers 3

    .line 403
    monitor-enter p0

    .line 404
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/commands/am/Instrument$InstrumentationWatcher;->mFinished:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_28

    if-nez v0, :cond_25

    .line 406
    :try_start_5
    iget-object v0, p0, Lcom/android/commands/am/Instrument$InstrumentationWatcher;->this$0:Lcom/android/commands/am/Instrument;

    invoke-static {v0}, Lcom/android/commands/am/Instrument;->-$$Nest$fgetmAm(Lcom/android/commands/am/Instrument;)Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_13} :catch_1e
    .catchall {:try_start_5 .. :try_end_13} :catchall_28

    if-nez v0, :cond_18

    .line 407
    const/4 v0, 0x0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_28

    return v0

    .line 409
    :cond_18
    const-wide/16 v0, 0x3e8

    :try_start_1a
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_1e
    .catchall {:try_start_1a .. :try_end_1d} :catchall_28

    .line 412
    goto :goto_1

    .line 410
    :catch_1e
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1f
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/commands/am/Instrument$InstrumentationWatcher;
    throw v1

    .line 414
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local p0    # "this":Lcom/android/commands/am/Instrument$InstrumentationWatcher;
    :cond_25
    monitor-exit p0

    .line 415
    const/4 v0, 0x1

    return v0

    .line 414
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_28

    throw v0
.end method
