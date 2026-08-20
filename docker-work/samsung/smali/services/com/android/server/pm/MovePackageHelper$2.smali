.class public Lcom/android/server/pm/MovePackageHelper$2;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "MovePackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/MovePackageHelper;->movePackageInternal(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/MovePackageHelper;

.field public final synthetic val$freezer:Lcom/android/server/pm/PackageFreezer;

.field public final synthetic val$installedLatch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic val$isCurrentLocationExternal:Z

.field public final synthetic val$moveId:I

.field public final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/MovePackageHelper;Lcom/android/server/pm/PackageFreezer;Ljava/util/concurrent/CountDownLatch;ILjava/lang/String;Z)V
    .registers 7

    .line 363
    iput-object p1, p0, Lcom/android/server/pm/MovePackageHelper$2;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iput-object p2, p0, Lcom/android/server/pm/MovePackageHelper$2;->val$freezer:Lcom/android/server/pm/PackageFreezer;

    iput-object p3, p0, Lcom/android/server/pm/MovePackageHelper$2;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    iput p4, p0, Lcom/android/server/pm/MovePackageHelper$2;->val$moveId:I

    iput-object p5, p0, Lcom/android/server/pm/MovePackageHelper$2;->val$packageName:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/server/pm/MovePackageHelper$2;->val$isCurrentLocationExternal:Z

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 378
    iget-object p1, p0, Lcom/android/server/pm/MovePackageHelper$2;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 379
    iget-object p1, p0, Lcom/android/server/pm/MovePackageHelper$2;->val$freezer:Lcom/android/server/pm/PackageFreezer;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 381
    sget-boolean p1, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    const/4 p3, -0x6

    if-eqz p1, :cond_6c

    .line 382
    sget-object p1, Lcom/android/server/pm/MovePackageHelper;->mMoveIdMapForSd:Ljava/util/Map;

    monitor-enter p1

    .line 383
    :try_start_12
    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getPreMountState()Z

    move-result p4

    const/4 v0, 0x0

    if-nez p4, :cond_3f

    .line 384
    sget-object p4, Lcom/android/server/pm/MovePackageHelper;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_34

    .line 385
    iget-object p4, p0, Lcom/android/server/pm/MovePackageHelper$2;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object p4, p4, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p4, p4, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    sget-object v1, Lcom/android/server/pm/MovePackageHelper;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/MovePackageHelper$SdcardParams;

    iget v0, v0, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->moveId:I

    invoke-virtual {p4, v0, p3}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    .line 387
    :cond_34
    sget-object p4, Lcom/android/server/pm/MovePackageHelper;->mMoveIdMapForSd:Ljava/util/Map;

    invoke-interface {p4}, Ljava/util/Map;->clear()V

    .line 388
    sget-object p4, Lcom/android/server/pm/MovePackageHelper;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    goto :goto_67

    .line 389
    :cond_3f
    sget-object p4, Lcom/android/server/pm/MovePackageHelper;->mMoveIdMapForSd:Ljava/util/Map;

    iget v1, p0, Lcom/android/server/pm/MovePackageHelper$2;->val$moveId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_67

    .line 390
    sget-object p4, Lcom/android/server/pm/MovePackageHelper;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 391
    sget-object p4, Lcom/android/server/pm/MovePackageHelper;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_67

    .line 392
    sget-object p4, Lcom/android/server/pm/MovePackageHelper;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/pm/MovePackageHelper$SdcardParams;

    .line 393
    iget-object v0, p0, Lcom/android/server/pm/MovePackageHelper$2;->this$0:Lcom/android/server/pm/MovePackageHelper;

    invoke-static {v0, p4}, Lcom/android/server/pm/MovePackageHelper;->-$$Nest$mstartMovePackage(Lcom/android/server/pm/MovePackageHelper;Lcom/android/server/pm/MovePackageHelper$SdcardParams;)V

    .line 396
    :cond_67
    :goto_67
    monitor-exit p1

    goto :goto_6c

    :catchall_69
    move-exception p0

    monitor-exit p1
    :try_end_6b
    .catchall {:try_start_12 .. :try_end_6b} :catchall_69

    throw p0

    .line 399
    :cond_6c
    :goto_6c
    invoke-static {p2}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result p1

    if-eqz p1, :cond_8e

    const/4 p2, 0x6

    if-eq p1, p2, :cond_81

    .line 414
    iget-object p1, p0, Lcom/android/server/pm/MovePackageHelper$2;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object p1, p1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iget p0, p0, Lcom/android/server/pm/MovePackageHelper$2;->val$moveId:I

    invoke-virtual {p1, p0, p3}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    goto :goto_b1

    .line 410
    :cond_81
    iget-object p1, p0, Lcom/android/server/pm/MovePackageHelper$2;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object p1, p1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iget p0, p0, Lcom/android/server/pm/MovePackageHelper$2;->val$moveId:I

    const/4 p2, -0x1

    invoke-virtual {p1, p0, p2}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    goto :goto_b1

    .line 403
    :cond_8e
    iget-object p1, p0, Lcom/android/server/pm/MovePackageHelper$2;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object p1, p1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iget p2, p0, Lcom/android/server/pm/MovePackageHelper$2;->val$moveId:I

    const/16 p3, 0x64

    invoke-virtual {p1, p2, p3}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    .line 405
    iget-object p1, p0, Lcom/android/server/pm/MovePackageHelper$2;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object p1, p1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iget p2, p0, Lcom/android/server/pm/MovePackageHelper$2;->val$moveId:I

    const/16 p3, -0x64

    invoke-virtual {p1, p2, p3}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    .line 407
    iget-object p1, p0, Lcom/android/server/pm/MovePackageHelper$2;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object p2, p0, Lcom/android/server/pm/MovePackageHelper$2;->val$packageName:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/server/pm/MovePackageHelper$2;->val$isCurrentLocationExternal:Z

    invoke-static {p1, p2, p0}, Lcom/android/server/pm/MovePackageHelper;->-$$Nest$mlogAppMovedStorage(Lcom/android/server/pm/MovePackageHelper;Ljava/lang/String;Z)V

    :goto_b1
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 366
    iget-object p0, p0, Lcom/android/server/pm/MovePackageHelper$2;->val$freezer:Lcom/android/server/pm/PackageFreezer;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 367
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
