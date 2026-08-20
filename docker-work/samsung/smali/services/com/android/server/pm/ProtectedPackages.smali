.class public Lcom/android/server/pm/ProtectedPackages;
.super Ljava/lang/Object;
.source "ProtectedPackages.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDeviceOwnerPackage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mDeviceOwnerUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mDeviceProvisioningPackage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mOwnerProtectedPackages:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mProfileOwnerPackages:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mOwnerProtectedPackages:Landroid/util/SparseArray;

    .line 64
    iput-object p1, p0, Lcom/android/server/pm/ProtectedPackages;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1040337

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceProvisioningPackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 111
    :try_start_1
    iget v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerUserId:I

    if-ne v0, p1, :cond_9

    .line 112
    iget-object p1, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerPackage:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_18

    monitor-exit p0

    return-object p1

    .line 114
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mProfileOwnerPackages:Landroid/util/SparseArray;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_18

    if-nez v0, :cond_10

    const/4 p1, 0x0

    .line 115
    monitor-exit p0

    return-object p1

    .line 117
    :cond_10
    :try_start_10
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object p1

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized hasDeviceOwnerOrProfileOwner(ILjava/lang/String;)Z
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p2, :cond_6

    .line 94
    monitor-exit p0

    return v0

    .line 96
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerPackage:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    .line 97
    iget v3, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerUserId:I

    if-ne v3, p1, :cond_17

    .line 98
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_29

    if-eqz v1, :cond_17

    .line 99
    monitor-exit p0

    return v2

    .line 102
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mProfileOwnerPackages:Landroid/util/SparseArray;

    if-eqz v1, :cond_27

    .line 103
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_29

    if-eqz p1, :cond_27

    .line 104
    monitor-exit p0

    return v2

    .line 107
    :cond_27
    monitor-exit p0

    return v0

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized isOwnerProtectedPackage(ILjava/lang/String;)Z
    .registers 4

    monitor-enter p0

    const/4 v0, -0x1

    .line 137
    :try_start_2
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/ProtectedPackages;->isPackageProtectedForUser(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->isPackageProtectedForUser(ILjava/lang/String;)Z

    move-result p1
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_14

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    .line 137
    :goto_12
    monitor-exit p0

    return p1

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isPackageDataProtected(ILjava/lang/String;)Z
    .registers 4

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->hasDeviceOwnerOrProfileOwner(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 163
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->isProtectedPackage(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public final declared-synchronized isPackageProtectedForUser(ILjava/lang/String;)Z
    .registers 4

    monitor-enter p0

    .line 142
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mOwnerProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_19

    .line 143
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mOwnerProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1c

    if-eqz p1, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    monitor-exit p0

    return p1

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isPackageStateProtected(ILjava/lang/String;)Z
    .registers 4

    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->hasDeviceOwnerOrProfileOwner(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->isProtectedPackage(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public final declared-synchronized isProtectedPackage(ILjava/lang/String;)Z
    .registers 4

    monitor-enter p0

    if-eqz p2, :cond_16

    .line 127
    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceProvisioningPackage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->isOwnerProtectedPackage(ILjava/lang/String;)Z

    move-result p1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    if-eqz p1, :cond_16

    :cond_11
    const/4 p1, 0x1

    goto :goto_17

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_16
    const/4 p1, 0x0

    .line 127
    :goto_17
    monitor-exit p0

    return p1
.end method

.method public declared-synchronized setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 75
    :try_start_1
    iput p1, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerUserId:I

    const/16 v0, -0x2710

    const/4 v1, 0x0

    if-ne p1, v0, :cond_9

    move-object p2, v1

    .line 77
    :cond_9
    iput-object p2, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerPackage:Ljava/lang/String;

    if-nez p3, :cond_e

    goto :goto_12

    .line 79
    :cond_e
    invoke-virtual {p3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    :goto_12
    iput-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mProfileOwnerPackages:Landroid/util/SparseArray;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 80
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setOwnerProtectedPackages(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 85
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 86
    iget-object p2, p0, Lcom/android/server/pm/ProtectedPackages;->mOwnerProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_17

    .line 88
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mOwnerProtectedPackages:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 90
    :goto_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method
