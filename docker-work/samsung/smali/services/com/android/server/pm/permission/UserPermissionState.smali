.class public final Lcom/android/server/pm/permission/UserPermissionState;
.super Ljava/lang/Object;
.source "UserPermissionState.java"


# instance fields
.field public final mInstallPermissionsFixed:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mUidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/UserPermissionState;->mInstallPermissionsFixed:Landroid/util/ArraySet;

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/UserPermissionState;->mUidStates:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public areInstallPermissionsFixed(Ljava/lang/String;)Z
    .registers 2

    .line 44
    iget-object p0, p0, Lcom/android/server/pm/permission/UserPermissionState;->mInstallPermissionsFixed:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final checkAppId(I)V
    .registers 4

    .line 87
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 88
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid app ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createUidStateWithExisting(ILcom/android/server/pm/permission/UidPermissionState;)Lcom/android/server/pm/permission/UidPermissionState;
    .registers 4

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UserPermissionState;->checkAppId(I)V

    .line 76
    new-instance v0, Lcom/android/server/pm/permission/UidPermissionState;

    invoke-direct {v0, p2}, Lcom/android/server/pm/permission/UidPermissionState;-><init>(Lcom/android/server/pm/permission/UidPermissionState;)V

    .line 77
    iget-object p0, p0, Lcom/android/server/pm/permission/UserPermissionState;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getOrCreateUidState(I)Lcom/android/server/pm/permission/UidPermissionState;
    .registers 3

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UserPermissionState;->checkAppId(I)V

    .line 64
    iget-object v0, p0, Lcom/android/server/pm/permission/UserPermissionState;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/UidPermissionState;

    if-nez v0, :cond_17

    .line 66
    new-instance v0, Lcom/android/server/pm/permission/UidPermissionState;

    invoke-direct {v0}, Lcom/android/server/pm/permission/UidPermissionState;-><init>()V

    .line 67
    iget-object p0, p0, Lcom/android/server/pm/permission/UserPermissionState;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_17
    return-object v0
.end method

.method public getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UserPermissionState;->checkAppId(I)V

    .line 58
    iget-object p0, p0, Lcom/android/server/pm/permission/UserPermissionState;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/permission/UidPermissionState;

    return-object p0
.end method

.method public removeUidState(I)V
    .registers 2

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UserPermissionState;->checkAppId(I)V

    .line 83
    iget-object p0, p0, Lcom/android/server/pm/permission/UserPermissionState;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public setInstallPermissionsFixed(Ljava/lang/String;Z)V
    .registers 3

    if-eqz p2, :cond_8

    .line 49
    iget-object p0, p0, Lcom/android/server/pm/permission/UserPermissionState;->mInstallPermissionsFixed:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 51
    :cond_8
    iget-object p0, p0, Lcom/android/server/pm/permission/UserPermissionState;->mInstallPermissionsFixed:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :goto_d
    return-void
.end method
