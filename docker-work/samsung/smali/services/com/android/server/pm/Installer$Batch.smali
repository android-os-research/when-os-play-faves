.class public Lcom/android/server/pm/Installer$Batch;
.super Ljava/lang/Object;
.source "Installer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Installer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Batch"
.end annotation


# static fields
.field public static final CREATE_APP_DATA_BATCH_SIZE:I = 0x100


# instance fields
.field public final mArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/CreateAppDataArgs;",
            ">;"
        }
    .end annotation
.end field

.field public mExecuted:Z

.field public final mFutures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Installer$Batch;->mFutures:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized createAppData(Landroid/os/CreateAppDataArgs;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CreateAppDataArgs;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 371
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/pm/Installer$Batch;->mExecuted:Z

    if-nez v0, :cond_16

    .line 374
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 375
    iget-object v1, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object p1, p0, Lcom/android/server/pm/Installer$Batch;->mFutures:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1c

    .line 377
    monitor-exit p0

    return-object v0

    .line 372
    :cond_16
    :try_start_16
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized execute(Lcom/android/server/pm/Installer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    monitor-enter p0

    .line 388
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/pm/Installer$Batch;->mExecuted:Z

    if-nez v0, :cond_61

    const/4 v0, 0x1

    .line 389
    iput-boolean v0, p0, Lcom/android/server/pm/Installer$Batch;->mExecuted:Z

    .line 391
    iget-object v0, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_10
    if-ge v2, v0, :cond_5f

    sub-int v3, v0, v2

    const/16 v4, 0x100

    .line 393
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v4, v3, [Landroid/os/CreateAppDataArgs;

    move v5, v1

    :goto_1d
    if-ge v5, v3, :cond_2e

    .line 396
    iget-object v6, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    add-int v7, v2, v5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/CreateAppDataArgs;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 398
    :cond_2e
    invoke-virtual {p1, v4}, Lcom/android/server/pm/Installer;->createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;

    move-result-object v4

    move v5, v1

    :goto_33
    if-ge v5, v3, :cond_5c

    .line 400
    aget-object v6, v4, v5

    .line 401
    iget-object v7, p0, Lcom/android/server/pm/Installer$Batch;->mFutures:Ljava/util/List;

    add-int v8, v2, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/CompletableFuture;

    .line 402
    iget v8, v6, Landroid/os/CreateAppDataResult;->exceptionCode:I

    if-nez v8, :cond_4f

    .line 403
    iget-wide v8, v6, Landroid/os/CreateAppDataResult;->ceDataInode:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_59

    .line 405
    :cond_4f
    new-instance v8, Lcom/android/server/pm/Installer$InstallerException;

    iget-object v6, v6, Landroid/os/CreateAppDataResult;->exceptionMessage:Ljava/lang/String;

    invoke-direct {v8, v6}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z
    :try_end_59
    .catchall {:try_start_1 .. :try_end_59} :catchall_67

    :goto_59
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    :cond_5c
    add-int/lit16 v2, v2, 0x100

    goto :goto_10

    .line 410
    :cond_5f
    monitor-exit p0

    return-void

    .line 388
    :cond_61
    :try_start_61
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception p1

    monitor-exit p0

    throw p1
.end method
