.class public Lcom/android/server/pm/MovePackageHelper$1;
.super Ljava/lang/Object;
.source "MovePackageHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/MovePackageHelper;->startMovePackage(Lcom/android/server/pm/MovePackageHelper$SdcardParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/MovePackageHelper;

.field public final synthetic val$sdParams:Lcom/android/server/pm/MovePackageHelper$SdcardParams;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/MovePackageHelper;Lcom/android/server/pm/MovePackageHelper$SdcardParams;)V
    .registers 3

    .line 117
    iput-object p1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iput-object p2, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$sdParams:Lcom/android/server/pm/MovePackageHelper$SdcardParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$sdParams:Lcom/android/server/pm/MovePackageHelper$SdcardParams;

    iget-object v2, v1, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->volumeUuid:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->moveId:I

    iget v5, v1, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->callingUid:I

    iget-object v6, v1, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->user:Landroid/os/UserHandle;

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/MovePackageHelper;->movePackageInternal(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_16
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_7a

    :catch_17
    move-exception v0

    const-string v1, "PackageManager"

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to move "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$sdParams:Lcom/android/server/pm/MovePackageHelper$SdcardParams;

    iget-object v3, v3, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    iget-object v1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object v1, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iget-object v2, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$sdParams:Lcom/android/server/pm/MovePackageHelper$SdcardParams;

    iget v2, v2, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->moveId:I

    const/4 v3, -0x6

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    .line 126
    sget-object v1, Lcom/android/server/pm/MovePackageHelper;->mMoveIdMapForSd:Ljava/util/Map;

    monitor-enter v1

    .line 127
    :try_start_43
    sget-object v2, Lcom/android/server/pm/MovePackageHelper;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_51

    .line 128
    sget-object v2, Lcom/android/server/pm/MovePackageHelper;->mPendingMoves:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 129
    :cond_51
    iget v0, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    if-ne v0, v3, :cond_79

    .line 130
    sget-object v0, Lcom/android/server/pm/MovePackageHelper;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/MovePackageHelper$SdcardParams;

    .line 131
    iget-object v3, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object v3, v3, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iget v2, v2, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->moveId:I

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    goto :goto_5b

    .line 133
    :cond_74
    sget-object p0, Lcom/android/server/pm/MovePackageHelper;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 135
    :cond_79
    monitor-exit v1

    :goto_7a
    return-void

    :catchall_7b
    move-exception p0

    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_43 .. :try_end_7d} :catchall_7b

    throw p0
.end method
