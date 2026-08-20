.class public abstract Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;
.super Ljava/lang/Object;
.source "AbstractRemoteService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/infra/AbstractRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BasePendingRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/android/internal/infra/AbstractRemoteService<",
        "TS;TI;>;I::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field blacklist mCancelled:Z

.field blacklist mCompleted:Z

.field protected final blacklist mLock:Ljava/lang/Object;

.field protected final blacklist mTag:Ljava/lang/String;

.field final blacklist mWeakService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/infra/AbstractRemoteService;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 561
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    .local p1, "service":Lcom/android/internal/infra/AbstractRemoteService;, "TS;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mTag:Ljava/lang/String;

    .line 551
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mLock:Ljava/lang/Object;

    .line 562
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mWeakService:Ljava/lang/ref/WeakReference;

    .line 563
    return-void
.end method


# virtual methods
.method public blacklist cancel()Z
    .registers 3

    .line 618
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 619
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mCancelled:Z

    if-nez v1, :cond_14

    iget-boolean v1, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mCompleted:Z

    if-eqz v1, :cond_c

    goto :goto_14

    .line 622
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mCancelled:Z

    .line 623
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_17

    .line 625
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->onCancel()V

    .line 626
    return v1

    .line 620
    :cond_14
    :goto_14
    const/4 v1, 0x0

    :try_start_15
    monitor-exit v0

    return v1

    .line 623
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_17

    throw v1
.end method

.method protected final blacklist finish()Z
    .registers 3

    .line 579
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mCompleted:Z

    if-nez v1, :cond_21

    iget-boolean v1, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mCancelled:Z

    if-eqz v1, :cond_c

    goto :goto_21

    .line 583
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mCompleted:Z

    .line 584
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_24

    .line 586
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/AbstractRemoteService;

    .line 587
    .local v0, "service":Lcom/android/internal/infra/AbstractRemoteService;, "TS;"
    if-eqz v0, :cond_1d

    .line 588
    invoke-virtual {v0, p0}, Lcom/android/internal/infra/AbstractRemoteService;->finishRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    .line 591
    :cond_1d
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->onFinished()V

    .line 593
    return v1

    .line 581
    .end local v0    # "service":Lcom/android/internal/infra/AbstractRemoteService;, "TS;"
    :cond_21
    :goto_21
    const/4 v1, 0x0

    :try_start_22
    monitor-exit v0

    return v1

    .line 584
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_24

    throw v1
.end method

.method protected final blacklist getService()Lcom/android/internal/infra/AbstractRemoteService;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 569
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/AbstractRemoteService;

    return-object v0
.end method

.method protected final blacklist isCancelledLocked()Z
    .registers 2

    .line 609
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mCancelled:Z

    return v0
.end method

.method protected blacklist isFinal()Z
    .registers 2

    .line 635
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist isRequestCompleted()Z
    .registers 3

    .line 639
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 640
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mCompleted:Z

    monitor-exit v0

    return v1

    .line 641
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method blacklist onCancel()V
    .registers 1

    .line 629
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    return-void
.end method

.method protected blacklist onFailed()V
    .registers 1

    .line 602
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    return-void
.end method

.method blacklist onFinished()V
    .registers 1

    .line 596
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    return-void
.end method
