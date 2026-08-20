.class public final Lcom/android/server/storage/StorageSessionController;
.super Ljava/lang/Object;
.source "StorageSessionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "StorageSessionController"


# instance fields
.field public final mConnections:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/storage/StorageUserConnection;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public volatile mExternalStorageServiceAppId:I

.field public volatile mExternalStorageServiceComponent:Landroid/content/ComponentName;

.field public volatile mExternalStorageServicePackageName:Ljava/lang/String;

.field public volatile mIsResetting:Z

.field public final mLock:Ljava/lang/Object;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    .line 72
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/storage/StorageSessionController;->mContext:Landroid/content/Context;

    .line 73
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/storage/StorageSessionController;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public static isEmulatedOrPublic(Landroid/os/storage/VolumeInfo;)Z
    .registers 3

    .line 465
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    if-nez v0, :cond_e

    .line 466
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 p0, 0x1

    :goto_11
    return p0
.end method

.method public static isSupportedVolume(Landroid/os/storage/VolumeInfo;)Z
    .registers 2

    .line 485
    invoke-static {p0}, Lcom/android/server/storage/StorageSessionController;->isEmulatedOrPublic(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    if-nez v0, :cond_e

    iget p0, p0, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p0, 0x1

    :goto_f
    return p0
.end method


# virtual methods
.method public freeCache(Ljava/lang/String;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_3
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_22

    .line 184
    iget-object v3, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 185
    iget-object v4, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/storage/StorageUserConnection;

    if-eqz v3, :cond_1f

    .line 187
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/storage/StorageUserConnection;->freeCache(Ljava/lang/String;J)V

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 190
    :cond_22
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public getConnectionUserIdForVolume(Landroid/os/storage/VolumeInfo;)I
    .registers 5

    .line 85
    iget-object v0, p0, Lcom/android/server/storage/StorageSessionController;->mContext:Landroid/content/Context;

    iget v1, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 86
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 87
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 88
    invoke-virtual {v0}, Landroid/os/UserManager;->isMediaSharedWithParent()Z

    move-result v0

    .line 90
    iget-object p0, p0, Lcom/android/server/storage/StorageSessionController;->mUserManager:Landroid/os/UserManager;

    iget v1, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_28

    if-eqz v0, :cond_28

    .line 93
    iget p0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    return p0

    .line 95
    :cond_28
    iget p0, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    return p0
.end method

.method public getExternalStorageServiceComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 393
    iget-object p0, p0, Lcom/android/server/storage/StorageSessionController;->mExternalStorageServiceComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final initExternalStorageServiceComponent()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
        }
    .end annotation

    const-string v0, "StorageSessionController"

    const-string v1, "Initialialising..."

    .line 359
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "media"

    const/high16 v3, 0x1c0000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_7e

    .line 368
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/storage/StorageSessionController;->mExternalStorageServicePackageName:Ljava/lang/String;

    .line 369
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/storage/StorageSessionController;->mExternalStorageServiceAppId:I

    const/4 v1, 0x0

    .line 371
    invoke-virtual {p0, v1}, Lcom/android/server/storage/StorageSessionController;->resolveExternalStorageServiceAsUser(I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_76

    .line 377
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v3, "android.permission.BIND_EXTERNAL_STORAGE_SERVICE"

    .line 379
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 385
    iput-object v2, p0, Lcom/android/server/storage/StorageSessionController;->mExternalStorageServiceComponent:Landroid/content/ComponentName;

    .line 387
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mExternalStorageServiceComponent="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 380
    :cond_58
    new-instance p0, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not require permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 373
    :cond_76
    new-instance p0, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    const-string v0, "No valid ExternalStorageService component found"

    invoke-direct {p0, v0}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 365
    :cond_7e
    new-instance p0, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    const-string v0, "No valid MediaStore provider found"

    invoke-direct {p0, v0}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isAppIoBlocked(I)Z
    .registers 4

    .line 438
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 440
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 441
    :try_start_7
    iget-object p0, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/storage/StorageUserConnection;

    .line 442
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_19

    if-eqz p0, :cond_17

    .line 445
    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageUserConnection;->isAppIoBlocked(I)Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0

    :catchall_19
    move-exception p0

    .line 442
    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final killExternalStorageService(I)V
    .registers 5

    .line 451
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 453
    :try_start_4
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mExternalStorageServicePackageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/storage/StorageSessionController;->mExternalStorageServiceAppId:I

    const-string/jumbo v2, "storage_session_controller reset"

    invoke-interface {v0, v1, p0, p1, v2}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    goto :goto_25

    .line 456
    :catch_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to kill the ExtenalStorageService for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StorageSessionController"

    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    return-void
.end method

.method public notifyAnrDelayStarted(Ljava/lang/String;III)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
        }
    .end annotation

    .line 200
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 202
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_7
    iget-object p0, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/storage/StorageUserConnection;

    .line 204
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_16

    if-eqz p0, :cond_15

    .line 207
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/storage/StorageUserConnection;->notifyAnrDelayStarted(Ljava/lang/String;III)V

    :cond_15
    return-void

    :catchall_16
    move-exception p0

    .line 204
    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public notifyAppIoBlocked(Ljava/lang/String;III)V
    .registers 7

    .line 406
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 408
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 409
    :try_start_7
    iget-object p0, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/storage/StorageUserConnection;

    .line 410
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_16

    if-eqz p0, :cond_15

    .line 413
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/storage/StorageUserConnection;->notifyAppIoBlocked(Ljava/lang/String;III)V

    :cond_15
    return-void

    :catchall_16
    move-exception p0

    .line 410
    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public notifyAppIoResumed(Ljava/lang/String;III)V
    .registers 7

    .line 425
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 427
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 428
    :try_start_7
    iget-object p0, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/storage/StorageUserConnection;

    .line 429
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_16

    if-eqz p0, :cond_15

    .line 432
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/storage/StorageUserConnection;->notifyAppIoResumed(Ljava/lang/String;III)V

    :cond_15
    return-void

    :catchall_16
    move-exception p0

    .line 429
    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public notifyVolumeStateChanged(Landroid/os/storage/VolumeInfo;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
        }
    .end annotation

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageSessionController;->shouldHandle(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 153
    :cond_7
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageSessionController;->getConnectionUserIdForVolume(Landroid/os/storage/VolumeInfo;)I

    move-result v1

    .line 157
    iget-object v2, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 158
    :try_start_12
    iget-object v3, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/storage/StorageUserConnection;

    if-eqz v3, :cond_41

    const-string v1, "StorageSessionController"

    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notifying volume state changed for session with id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object p0, p0, Lcom/android/server/storage/StorageSessionController;->mContext:Landroid/content/Context;

    .line 162
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {p1, p0, v1, v4}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object p0

    .line 161
    invoke-virtual {v3, v0, p0}, Lcom/android/server/storage/StorageUserConnection;->notifyVolumeStateChanged(Ljava/lang/String;Landroid/os/storage/StorageVolume;)V

    goto :goto_57

    :cond_41
    const-string p0, "StorageSessionController"

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No available storage user connection for userId : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_57
    monitor-exit v2

    return-void

    :catchall_59
    move-exception p0

    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_12 .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public onReset(Landroid/os/IVold;Ljava/lang/Runnable;)V
    .registers 13

    const/4 v0, 0x0

    .line 309
    invoke-virtual {p0, v0}, Lcom/android/server/storage/StorageSessionController;->shouldHandle(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 313
    :cond_8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 314
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 315
    :try_start_11
    iput-boolean v2, p0, Lcom/android/server/storage/StorageSessionController;->mIsResetting:Z

    const-string v2, "StorageSessionController"

    const-string v3, "Started resetting external storage service..."

    .line 316
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move v3, v2

    .line 317
    :goto_1c
    iget-object v4, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_38

    .line 318
    iget-object v4, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/storage/StorageUserConnection;

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 320
    :cond_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_11 .. :try_end_39} :catchall_115

    move v1, v2

    .line 322
    :goto_3a
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_fc

    .line 323
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/storage/StorageUserConnection;

    .line 324
    invoke-virtual {v3}, Lcom/android/server/storage/StorageUserConnection;->getAllSessionIds()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :try_start_5a
    const-string v6, "StorageSessionController"

    .line 326
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unmounting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-interface {p1, v5}, Landroid/os/IVold;->unmount(Ljava/lang/String;)V

    const-string v6, "StorageSessionController"

    .line 328
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unmounted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catch Landroid/os/ServiceSpecificException; {:try_start_5a .. :try_end_89} :catch_8a
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_89} :catch_8a

    goto :goto_a1

    :catch_8a
    move-exception v6

    const-string v7, "StorageSessionController"

    .line 331
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to unmount volume: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a1
    :try_start_a1
    const-string v6, "StorageSessionController"

    .line 335
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exiting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {v3, v5}, Lcom/android/server/storage/StorageUserConnection;->removeSessionAndWait(Ljava/lang/String;)V

    const-string v6, "StorageSessionController"

    .line 337
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exited "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catch Ljava/lang/IllegalStateException; {:try_start_a1 .. :try_end_d0} :catch_d2
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_a1 .. :try_end_d0} :catch_d2

    goto/16 :goto_4e

    :catch_d2
    move-exception v4

    const-string v6, "StorageSessionController"

    .line 339
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to exit session: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Killing MediaProvider..."

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v4}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/storage/StorageSessionController;->killExternalStorageService(I)V

    .line 347
    :cond_f5
    invoke-virtual {v3}, Lcom/android/server/storage/StorageUserConnection;->close()V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3a

    .line 350
    :cond_fc
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 351
    iget-object p1, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 352
    :try_start_102
    iget-object p2, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 353
    iput-boolean v2, p0, Lcom/android/server/storage/StorageSessionController;->mIsResetting:Z

    const-string p0, "StorageSessionController"

    const-string p2, "Finished resetting external storage service"

    .line 354
    invoke-static {p0, p2}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    monitor-exit p1

    return-void

    :catchall_112
    move-exception p0

    monitor-exit p1
    :try_end_114
    .catchall {:try_start_102 .. :try_end_114} :catchall_112

    throw p0

    :catchall_115
    move-exception p0

    .line 320
    :try_start_116
    monitor-exit v1
    :try_end_117
    .catchall {:try_start_116 .. :try_end_117} :catchall_115

    throw p0
.end method

.method public onUnlockUser(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "On user unlock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageSessionController"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1c

    const/16 v0, 0x4d

    if-ne p1, v0, :cond_1f

    .line 272
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/storage/StorageSessionController;->initExternalStorageServiceComponent()V

    :cond_1f
    return-void
.end method

.method public onUserStopping(I)V
    .registers 5

    const/4 v0, 0x0

    .line 285
    invoke-virtual {p0, v0}, Lcom/android/server/storage/StorageSessionController;->shouldHandle(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 289
    :cond_8
    iget-object v0, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_b
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/storage/StorageUserConnection;

    .line 291
    iget-object p0, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 292
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_4c

    if-eqz v1, :cond_35

    const-string p0, "StorageSessionController"

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing all sessions for user: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v1}, Lcom/android/server/storage/StorageUserConnection;->removeAllSessions()V

    goto :goto_4b

    :cond_35
    const-string p0, "StorageSessionController"

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No connection found for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4b
    return-void

    :catchall_4c
    move-exception p0

    .line 292
    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public onVolumeMount(Landroid/os/ParcelFileDescriptor;Landroid/os/storage/VolumeInfo;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0, p2}, Lcom/android/server/storage/StorageSessionController;->shouldHandle(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "StorageSessionController"

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On volume mount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p0, p2}, Lcom/android/server/storage/StorageSessionController;->getConnectionUserIdForVolume(Landroid/os/storage/VolumeInfo;)I

    move-result v1

    .line 125
    iget-object v2, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 126
    :try_start_28
    iget-object v3, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/storage/StorageUserConnection;

    if-nez v3, :cond_54

    const-string v3, "StorageSessionController"

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating connection for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v3, Lcom/android/server/storage/StorageUserConnection;

    iget-object v4, p0, Lcom/android/server/storage/StorageSessionController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1, p0}, Lcom/android/server/storage/StorageUserConnection;-><init>(Landroid/content/Context;ILcom/android/server/storage/StorageSessionController;)V

    .line 130
    iget-object p0, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_54
    const-string p0, "StorageSessionController"

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating and starting session with id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 134
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getInternalPath()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 133
    invoke-virtual {v3, v0, p1, p0, p2}, Lcom/android/server/storage/StorageUserConnection;->startSession(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    monitor-exit v2

    return-void

    :catchall_7f
    move-exception p0

    monitor-exit v2
    :try_end_81
    .catchall {:try_start_28 .. :try_end_81} :catchall_7f

    throw p0
.end method

.method public onVolumeRemove(Landroid/os/storage/VolumeInfo;)Lcom/android/server/storage/StorageUserConnection;
    .registers 6

    .line 220
    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageSessionController;->shouldHandle(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    const-string v0, "StorageSessionController"

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "On volume remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageSessionController;->getConnectionUserIdForVolume(Landroid/os/storage/VolumeInfo;)I

    move-result p1

    .line 228
    iget-object v2, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 229
    :try_start_29
    iget-object p0, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/storage/StorageUserConnection;

    if-eqz p0, :cond_4e

    const-string p1, "StorageSessionController"

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed session for vol with id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/server/storage/StorageUserConnection;->removeSession(Ljava/lang/String;)Lcom/android/server/storage/StorageUserConnection$Session;

    .line 233
    monitor-exit v2

    return-object p0

    :cond_4e
    const-string p0, "StorageSessionController"

    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session already removed for vol with id: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    monitor-exit v2

    return-object v1

    :catchall_66
    move-exception p0

    .line 238
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_29 .. :try_end_68} :catchall_66

    throw p0
.end method

.method public onVolumeUnmount(Landroid/os/storage/VolumeInfo;)V
    .registers 5

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageSessionController;->onVolumeRemove(Landroid/os/storage/VolumeInfo;)Lcom/android/server/storage/StorageUserConnection;

    move-result-object p0

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "On volume unmount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageSessionController"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_39

    .line 256
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    .line 259
    :try_start_20
    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageUserConnection;->removeSessionAndWait(Ljava/lang/String;)V
    :try_end_23
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_39

    :catch_24
    move-exception p0

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to end session for vol with id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_39
    :goto_39
    return-void
.end method

.method public final resolveExternalStorageServiceAsUser(I)Landroid/content/pm/ServiceInfo;
    .registers 4

    .line 501
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.storage.ExternalStorageService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mExternalStorageServicePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    iget-object p0, p0, Lcom/android/server/storage/StorageSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v1, 0xc0084

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_1d

    const/4 p0, 0x0

    return-object p0

    .line 509
    :cond_1d
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object p0
.end method

.method public final shouldHandle(Landroid/os/storage/VolumeInfo;)Z
    .registers 2

    .line 489
    iget-boolean p0, p0, Lcom/android/server/storage/StorageSessionController;->mIsResetting:Z

    if-nez p0, :cond_e

    if-eqz p1, :cond_c

    invoke-static {p1}, Lcom/android/server/storage/StorageSessionController;->isSupportedVolume(Landroid/os/storage/VolumeInfo;)Z

    move-result p0

    if-eqz p0, :cond_e

    :cond_c
    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public supportsExternalStorage(I)Z
    .registers 2

    .line 497
    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageSessionController;->resolveExternalStorageServiceAsUser(I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method
