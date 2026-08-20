.class public Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;
.super Landroid/app/admin/DevicePolicyCache;
.source "DevicePolicyCacheImpl.java"


# instance fields
.field public final mCanGrantSensorsPermissions:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mPasswordQuality:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mPermissionPolicy:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mScreenCaptureDisallowedUser:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyCache;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mLock:Ljava/lang/Object;

    const/16 v0, -0x2710

    .line 45
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mScreenCaptureDisallowedUser:I

    .line 48
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mPasswordQuality:Landroid/util/SparseIntArray;

    .line 51
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mPermissionPolicy:Landroid/util/SparseIntArray;

    .line 60
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mCanGrantSensorsPermissions:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public canAdminGrantSensorsPermissionsForUser(I)Z
    .registers 4

    .line 123
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mCanGrantSensorsPermissions:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 125
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 4

    const-string v0, "Device policy cache:"

    .line 137
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Screen capture disallowed user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mScreenCaptureDisallowedUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Password quality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mPasswordQuality:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission policy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mPermissionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Admin can grant sensors permission: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mCanGrantSensorsPermissions:Landroid/util/SparseBooleanArray;

    .line 143
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 142
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getPasswordQuality(I)I
    .registers 4

    .line 93
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mPasswordQuality:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 96
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public getPermissionPolicy(I)I
    .registers 4

    .line 108
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mPermissionPolicy:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 111
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public getScreenCaptureDisallowedUser()I
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_3
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mScreenCaptureDisallowedUser:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 82
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isScreenCaptureAllowed(I)Z
    .registers 4

    .line 73
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_3
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mScreenCaptureDisallowedUser:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_c

    if-eq p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 76
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public onUserRemoved(I)V
    .registers 4

    .line 64
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mPasswordQuality:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 66
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mPermissionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 67
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mCanGrantSensorsPermissions:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 68
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public setAdminCanGrantSensorsPermissions(IZ)V
    .registers 4

    .line 130
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mCanGrantSensorsPermissions:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 132
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setPasswordQuality(II)V
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mPasswordQuality:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 103
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setPermissionPolicy(II)V
    .registers 4

    .line 116
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mPermissionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 118
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setScreenCaptureDisallowedUser(I)V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_3
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mScreenCaptureDisallowedUser:I

    .line 88
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method
