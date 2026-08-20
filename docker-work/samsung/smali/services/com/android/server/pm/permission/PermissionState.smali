.class public final Lcom/android/server/pm/permission/PermissionState;
.super Ljava/lang/Object;
.source "PermissionState.java"


# instance fields
.field public mFlags:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mGranted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mPermission:Lcom/android/server/pm/permission/Permission;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/Permission;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/PermissionState;)V
    .registers 3

    .line 45
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionState;-><init>(Lcom/android/server/pm/permission/Permission;)V

    .line 47
    iget-boolean v0, p1, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    iput-boolean v0, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    .line 48
    iget p1, p1, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    iput p1, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    return-void
.end method


# virtual methods
.method public computeGids(I)[I
    .registers 2

    .line 63
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/Permission;->computeGids(I)[I

    move-result-object p0

    return-object p0
.end method

.method public getFlags()I
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_3
    iget p0, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 97
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPermission()Lcom/android/server/pm/permission/Permission;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    return-object p0
.end method

.method public grant()Z
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    if-eqz v1, :cond_a

    const/4 p0, 0x0

    .line 75
    monitor-exit v0

    return p0

    :cond_a
    const/4 v1, 0x1

    .line 77
    iput-boolean v1, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    .line 78
    invoke-static {}, Lcom/android/server/pm/permission/UidPermissionState;->invalidateCache()V

    .line 79
    monitor-exit v0

    return v1

    :catchall_12
    move-exception p0

    .line 80
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public isDefault()Z
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    if-nez v1, :cond_d

    iget p0, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    if-nez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 116
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public isGranted()Z
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 69
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public revoke()Z
    .registers 4

    .line 84
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 86
    monitor-exit v0

    return v2

    .line 88
    :cond_a
    iput-boolean v2, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    .line 89
    invoke-static {}, Lcom/android/server/pm/permission/UidPermissionState;->invalidateCache()V

    const/4 p0, 0x1

    .line 90
    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    .line 91
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public updateFlags(II)Z
    .registers 5

    .line 101
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    and-int/2addr p2, p1

    .line 105
    :try_start_4
    invoke-static {}, Lcom/android/server/pm/permission/UidPermissionState;->invalidateCache()V

    .line 107
    iget v1, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, v1

    or-int/2addr p1, p2

    .line 108
    iput p1, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    if-eq p1, v1, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    .line 109
    :goto_13
    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 110
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_15

    throw p0
.end method
