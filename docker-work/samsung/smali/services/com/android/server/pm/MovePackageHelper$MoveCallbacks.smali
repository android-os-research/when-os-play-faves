.class public Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;
.super Landroid/os/Handler;
.source "MovePackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/MovePackageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoveCallbacks"
.end annotation


# static fields
.field public static final MSG_CREATED:I = 0x1

.field public static final MSG_STATUS_CHANGED:I = 0x2


# instance fields
.field public final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/content/pm/IPackageMoveObserver;",
            ">;"
        }
    .end annotation
.end field

.field public final mLastStatus:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 584
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 578
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 581
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 597
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 598
    iget-object v1, p0, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    .line 600
    iget-object v3, p0, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IPackageMoveObserver;

    .line 602
    :try_start_15
    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v3, v4, v0}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->invokeCallback(Landroid/content/pm/IPackageMoveObserver;ILcom/android/internal/os/SomeArgs;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1a

    :catch_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 606
    :cond_1d
    iget-object p0, p0, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 607
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void
.end method

.method public final invokeCallback(Landroid/content/pm/IPackageMoveObserver;ILcom/android/internal/os/SomeArgs;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x1

    if-eq p2, p0, :cond_17

    const/4 p0, 0x2

    if-eq p2, p0, :cond_7

    goto :goto_20

    .line 618
    :cond_7
    iget p0, p3, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget p2, p3, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget-object p3, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, p0, p2, v0, v1}, Landroid/content/pm/IPackageMoveObserver;->onStatusChanged(IIJ)V

    goto :goto_20

    .line 614
    :cond_17
    iget p0, p3, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p2, Landroid/os/Bundle;

    invoke-interface {p1, p0, p2}, Landroid/content/pm/IPackageMoveObserver;->onCreated(ILandroid/os/Bundle;)V

    :goto_20
    return-void
.end method

.method public notifyCreated(ILandroid/os/Bundle;)V
    .registers 5

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Move "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 628
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 629
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 630
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyStatusChanged(II)V
    .registers 5

    const-wide/16 v0, -0x1

    .line 634
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(IIJ)V

    return-void
.end method

.method public notifyStatusChanged(IIJ)V
    .registers 9

    const-string v0, "PackageManager"

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Move "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    if-eqz v0, :cond_9b

    .line 641
    sget-object v0, Lcom/android/server/pm/MovePackageHelper;->mMoveIdMapForSd:Ljava/util/Map;

    monitor-enter v0

    .line 642
    :try_start_25
    sget-object v1, Lcom/android/server/pm/MovePackageHelper;->mMoveIdMapForSd:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_98

    if-eqz v1, :cond_96

    .line 644
    :try_start_31
    sget-object v1, Lcom/android/server/pm/MovePackageHelper;->mMoveIdMapForSd:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IMemorySaverPackageMoveObserver;

    .line 645
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/pm/IMemorySaverPackageMoveObserver;->onStatusChanged(IIJ)V

    const/16 v1, -0x64

    if-eq p2, v1, :cond_4a

    const/4 v1, -0x1

    if-eq p2, v1, :cond_4a

    const/4 v1, -0x6

    if-ne p2, v1, :cond_96

    :cond_4a
    const-string v1, "PackageManager"

    .line 648
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multi move id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mPendingMoves "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/pm/MovePackageHelper;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mMoveIdMapForSd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/pm/MovePackageHelper;->mMoveIdMapForSd:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    sget-object v1, Lcom/android/server/pm/MovePackageHelper;->mMoveIdMapForSd:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_85} :catch_86
    .catchall {:try_start_31 .. :try_end_85} :catchall_98

    goto :goto_96

    :catch_86
    :try_start_86
    const-string v1, "PackageManager"

    const-string v2, "Exception while multi sd move"

    .line 652
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    sget-object v1, Lcom/android/server/pm/MovePackageHelper;->mMoveIdMapForSd:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    :cond_96
    :goto_96
    monitor-exit v0

    goto :goto_9b

    :catchall_98
    move-exception p0

    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_86 .. :try_end_9a} :catchall_98

    throw p0

    .line 659
    :cond_9b
    :goto_9b
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 660
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 661
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 662
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    const/4 p3, 0x2

    .line 663
    invoke-virtual {p0, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 665
    iget-object p3, p0, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    monitor-enter p3

    .line 666
    :try_start_b4
    iget-object p0, p0, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 667
    monitor-exit p3

    return-void

    :catchall_bb
    move-exception p0

    monitor-exit p3
    :try_end_bd
    .catchall {:try_start_b4 .. :try_end_bd} :catchall_bb

    throw p0
.end method

.method public register(Landroid/content/pm/IPackageMoveObserver;)V
    .registers 2

    .line 588
    iget-object p0, p0, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public unregister(Landroid/content/pm/IPackageMoveObserver;)V
    .registers 2

    .line 592
    iget-object p0, p0, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
