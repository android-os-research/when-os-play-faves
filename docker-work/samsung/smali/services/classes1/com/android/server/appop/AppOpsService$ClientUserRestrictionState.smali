.class public final Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ClientUserRestrictionState"
.end annotation


# instance fields
.field public callingRestriction:I

.field public perUserExcludedPackageTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/PackageTagsList;",
            ">;"
        }
    .end annotation
.end field

.field public perUserRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[Z>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field public final token:Landroid/os/IBinder;


# direct methods
.method public static synthetic $r8$lambda$ydpUS9k7Xre_l9ovwZQWSFO4Ejw(Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->lambda$binderDied$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7436
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 7437
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 7438
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    return-void
.end method

.method private synthetic lambda$binderDied$0(I)V
    .registers 3

    .line 7574
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    const/4 v0, -0x2

    invoke-static {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mnotifyWatchersOfChange(Lcom/android/server/appop/AppOpsService;II)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 10

    .line 7562
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    .line 7563
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmOpUserRestrictions(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7564
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v1, :cond_14

    .line 7565
    monitor-exit v0

    return-void

    .line 7567
    :cond_14
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1a
    if-ge v3, v1, :cond_3e

    .line 7569
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Z

    .line 7570
    array-length v5, v4

    move v6, v2

    :goto_26
    if-ge v6, v5, :cond_3b

    .line 7572
    aget-boolean v7, v4, v6

    if-eqz v7, :cond_38

    .line 7574
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v7, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, v6}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;I)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_38
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 7578
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->destroy()V

    .line 7579
    monitor-exit v0

    return-void

    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public destroy()V
    .registers 3

    .line 7583
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

.method public hasRestriction(ILjava/lang/String;Ljava/lang/String;IZ)Z
    .registers 8

    .line 7517
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 7520
    :cond_6
    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    if-nez v0, :cond_f

    return v1

    .line 7524
    :cond_f
    aget-boolean p1, v0, p1

    if-nez p1, :cond_14

    return v1

    .line 7527
    :cond_14
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    const/4 p1, 0x1

    if-nez p0, :cond_1a

    return p1

    .line 7530
    :cond_1a
    invoke-virtual {p0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PackageTagsList;

    if-nez p0, :cond_23

    return p1

    :cond_23
    if-eqz p5, :cond_2b

    .line 7536
    invoke-virtual {p0, p2}, Landroid/os/PackageTagsList;->includes(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, p1

    return p0

    .line 7538
    :cond_2b
    invoke-virtual {p0, p2, p3}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, p1

    return p0
.end method

.method public isDefault()Z
    .registers 1

    .line 7557
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-gtz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public final isDefault([Z)Z
    .registers 6

    .line 7587
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Z)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_8

    return v0

    .line 7590
    :cond_8
    array-length p0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, p0, :cond_15

    aget-boolean v3, p1, v2

    if-eqz v3, :cond_12

    return v1

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_15
    return v0
.end method

.method public removeUser(I)V
    .registers 4

    .line 7542
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 7543
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7544
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_12

    .line 7545
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    .line 7548
    :cond_12
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v0, :cond_23

    .line 7549
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7550
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-gtz p1, :cond_23

    .line 7551
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    :cond_23
    return-void
.end method

.method public setRestriction(IZLandroid/os/PackageTagsList;I)Z
    .registers 14

    .line 7445
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v0, :cond_d

    if-eqz p2, :cond_d

    .line 7446
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    .line 7449
    :cond_d
    iget v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->callingRestriction:I

    const/4 v1, 0x1

    if-nez v0, :cond_24

    .line 7450
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->callingRestriction:I

    if-nez v0, :cond_24

    .line 7452
    iput v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->callingRestriction:I

    const-string v0, "AppOps"

    const-string/jumbo v2, "setRestriction() :: CallingUid is SS_SHELL_UID"

    .line 7453
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/4 v0, -0x1

    const/4 v2, 0x0

    if-ne p4, v0, :cond_4e

    .line 7461
    iget-object p4, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object p4, p4, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {p4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p4

    invoke-virtual {p4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p4

    .line 7463
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    move v3, v2

    .line 7464
    :goto_3b
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_52

    .line 7465
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :cond_4e
    new-array v0, v1, [I

    aput p4, v0, v2

    .line 7471
    :cond_52
    iget-object p4, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz p4, :cond_c1

    .line 7472
    array-length p4, v0

    move v3, v2

    move v4, v3

    :goto_59
    if-ge v3, p4, :cond_c0

    .line 7475
    aget v5, v0, v3

    .line 7477
    iget-object v6, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Z

    if-nez v6, :cond_72

    if-eqz p2, :cond_72

    const/16 v6, 0x79

    new-array v6, v6, [Z

    .line 7480
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v7, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_72
    const/4 v7, 0x0

    if-eqz v6, :cond_8a

    .line 7482
    aget-boolean v8, v6, p1

    if-eq v8, p2, :cond_8a

    .line 7483
    aput-boolean p2, v6, p1

    if-nez p2, :cond_89

    .line 7484
    invoke-virtual {p0, v6}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->isDefault([Z)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 7485
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    move-object v6, v7

    :cond_89
    move v4, v1

    :cond_8a
    if-eqz v6, :cond_bd

    if-eqz p3, :cond_97

    .line 7493
    invoke-virtual {p3}, Landroid/os/PackageTagsList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_95

    goto :goto_97

    :cond_95
    move v6, v2

    goto :goto_98

    :cond_97
    :goto_97
    move v6, v1

    .line 7494
    :goto_98
    iget-object v8, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    if-nez v8, :cond_a5

    if-nez v6, :cond_a5

    .line 7495
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    .line 7497
    :cond_a5
    iget-object v8, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    if-eqz v8, :cond_bd

    if-eqz v6, :cond_b9

    .line 7499
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 7500
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_bc

    .line 7501
    iput-object v7, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    goto :goto_bc

    .line 7504
    :cond_b9
    invoke-virtual {v8, v5, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_bc
    :goto_bc
    move v4, v1

    :cond_bd
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    :cond_c0
    move v2, v4

    :cond_c1
    return v2
.end method
