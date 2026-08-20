.class public final Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;
.super Landroid/os/storage/StorageManagerInternal;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StorageManagerInternalImpl"
.end annotation


# instance fields
.field public final mCloudProviderChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mResetListeners:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mResetListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/storage/StorageManagerInternal$ResetListener;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCloudProviderChangeListeners(Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mCloudProviderChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2

    .line 5456
    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/os/storage/StorageManagerInternal;-><init>()V

    .line 5457
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mResetListeners:Ljava/util/List;

    .line 5461
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mCloudProviderChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$StorageManagerInternalImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;-><init>(Lcom/android/server/StorageManagerService;)V

    return-void
.end method


# virtual methods
.method public addResetListener(Landroid/os/storage/StorageManagerInternal$ResetListener;)V
    .registers 3

    .line 5535
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mResetListeners:Ljava/util/List;

    monitor-enter v0

    .line 5536
    :try_start_3
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mResetListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5537
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public freeCache(Ljava/lang/String;J)V
    .registers 4

    .line 5597
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmStorageSessionController(Lcom/android/server/StorageManagerService;)Lcom/android/server/storage/StorageSessionController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/storage/StorageSessionController;->freeCache(Ljava/lang/String;J)V
    :try_end_9
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_21

    :catch_a
    move-exception p0

    .line 5599
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to free cache of vol : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StorageManagerService"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    return-void
.end method

.method public getExternalStorageMountMode(ILjava/lang/String;)I
    .registers 5

    .line 5508
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/StorageManagerService;->-$$Nest$mgetMountModeInternal(Lcom/android/server/StorageManagerService;ILjava/lang/String;)I

    move-result p0

    .line 5509
    invoke-static {}, Lcom/android/server/StorageManagerService;->-$$Nest$sfgetLOCAL_LOGV()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 5510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resolved mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5511
    invoke-static {p1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StorageManagerService"

    .line 5510
    invoke-static {p2, p1}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return p0
.end method

.method public getPrimaryVolumeIds()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5661
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5662
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmLock(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x0

    .line 5663
    :goto_d
    :try_start_d
    iget-object v3, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVolumes(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 5664
    iget-object v3, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVolumes(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 5665
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 5666
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 5669
    :cond_35
    monitor-exit v1

    return-object v0

    :catchall_37
    move-exception p0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_d .. :try_end_39} :catchall_37

    throw p0
.end method

.method public hasExternalStorage(ILjava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_6

    return v0

    .line 5610
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public hasExternalStorageAccess(ILjava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    .line 5519
    :try_start_1
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmIAppOpsService(Lcom/android/server/StorageManagerService;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    const/16 v2, 0x5c

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v2, :cond_21

    .line 5522
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmIPackageManager(Lcom/android/server/StorageManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object p0

    const-string v1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-interface {p0, v1, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1d} :catch_25

    if-nez p0, :cond_20

    move v0, v3

    :cond_20
    return v0

    :cond_21
    if-nez v1, :cond_24

    move v0, v3

    :cond_24
    return v0

    :catch_25
    move-exception p0

    .line 5528
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to check MANAGE_EXTERNAL_STORAGE access for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public hasLegacyExternalStorage(I)Z
    .registers 3

    .line 5557
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmLock(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5558
    :try_start_7
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmUidsWithLegacyExternalStorage(Lcom/android/server/StorageManagerService;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_17
    move-exception p0

    .line 5559
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public isCeStoragePrepared(I)Z
    .registers 3

    .line 5682
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmLock(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5683
    :try_start_7
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmCeStoragePreparedUsers(Lcom/android/server/StorageManagerService;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_17
    move-exception p0

    .line 5684
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public isExternalStorageService(I)Z
    .registers 2

    .line 5591
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmMediaStoreAuthorityAppId(Lcom/android/server/StorageManagerService;)I

    move-result p0

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    if-ne p0, p1, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isFuseMounted(I)Z
    .registers 3

    .line 5466
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmLock(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5467
    :try_start_7
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmFuseMountedUser(Lcom/android/server/StorageManagerService;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_17
    move-exception p0

    .line 5468
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public final killAppForOpChange(II)V
    .registers 5

    .line 5615
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    .line 5617
    :try_start_4
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    const/4 v0, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5618
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " changed."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5617
    invoke-interface {p0, p2, v0, p1}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_21

    :catch_21
    return-void
.end method

.method public markCeStoragePrepared(I)V
    .registers 3

    .line 5675
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmLock(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5676
    :try_start_7
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmCeStoragePreparedUsers(Lcom/android/server/StorageManagerService;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5677
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public onAppOpsChanged(IILjava/lang/String;II)V
    .registers 9

    .line 5625
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/16 v2, 0x42

    if-eq p1, v2, :cond_2d

    const/16 p5, 0x57

    if-eq p1, p5, :cond_1d

    const/16 p3, 0x5c

    if-eq p1, p3, :cond_14

    .line 5655
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_14
    if-eqz p4, :cond_19

    .line 5647
    :try_start_16
    invoke-virtual {p0, p1, p2}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->killAppForOpChange(II)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_2b

    .line 5655
    :cond_19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 5651
    :cond_1d
    :try_start_1d
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    if-nez p4, :cond_23

    const/4 p1, 0x1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    invoke-static {p0, p3, p2, p1}, Lcom/android/server/StorageManagerService;->-$$Nest$mupdateLegacyStorageApps(Lcom/android/server/StorageManagerService;Ljava/lang/String;IZ)V
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_2b

    .line 5655
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2b
    move-exception p0

    goto :goto_35

    :cond_2d
    if-nez p5, :cond_39

    if-eqz p4, :cond_39

    .line 5637
    :try_start_31
    invoke-virtual {p0, p1, p2}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->killAppForOpChange(II)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_2b

    goto :goto_39

    .line 5655
    :goto_35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5656
    throw p0

    .line 5655
    :cond_39
    :goto_39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public onReset(Landroid/os/IVold;)V
    .registers 4

    .line 5541
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mResetListeners:Ljava/util/List;

    monitor-enter v0

    .line 5542
    :try_start_3
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mResetListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManagerInternal$ResetListener;

    .line 5543
    invoke-interface {v1, p1}, Landroid/os/storage/StorageManagerInternal$ResetListener;->onReset(Landroid/os/IVold;)V

    goto :goto_9

    .line 5545
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public prepareAppDataAfterInstall(Ljava/lang/String;I)V
    .registers 10

    .line 5564
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5565
    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v1, v0}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 5569
    invoke-virtual {v1, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 5570
    array-length v1, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_88

    aget-object v3, v0, v2

    .line 5571
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 5572
    invoke-static {}, Landroid/os/Environment;->getDataPreloadsMediaDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 5571
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "StorageManagerService"

    if-eqz v4, :cond_3c

    .line 5573
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping app data preparation for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 5577
    :cond_3c
    :try_start_3c
    iget-object v4, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v4}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVold(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, p2}, Landroid/os/IVold;->fixupAppDir(Ljava/lang/String;I)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_5a} :catch_71
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_5a} :catch_5b
    .catch Landroid/os/ServiceSpecificException; {:try_start_3c .. :try_end_5a} :catch_5b

    goto :goto_85

    :catch_5b
    move-exception v3

    .line 5584
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to fixup app dir for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_85

    .line 5579
    :catch_71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get canonical path for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_85
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_88
    return-void
.end method

.method public prepareStorageDirs(ILjava/util/Set;Ljava/lang/String;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 5478
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmLock(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5479
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmFuseMountedUser(Lcom/android/server/StorageManagerService;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_35

    const-string p0, "StorageManagerService"

    .line 5480
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "User "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not unlocked yet so skip mounting obb"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5481
    monitor-exit v0

    return v2

    .line 5483
    :cond_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_aa

    :try_start_36
    const-string/jumbo v0, "vold"

    .line 5486
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 5485
    invoke-static {v0}, Landroid/os/IVold$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVold;

    move-result-object v0

    .line 5487
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_45
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_91

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5488
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "/storage/emulated/%d/Android/obb/%s/"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    .line 5490
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    aput-object v1, v7, v3

    .line 5489
    invoke-static {v4, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "/storage/emulated/%d/Android/data/%s/"

    new-array v8, v6, [Ljava/lang/Object;

    .line 5493
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    aput-object v1, v8, v3

    .line 5492
    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5496
    iget-object v7, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v7}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmPmInternal(Lcom/android/server/StorageManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v1

    invoke-static {p1, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v2

    aput-object v4, v6, v3

    .line 5497
    invoke-interface {v0, v6, v1}, Landroid/os/IVold;->ensureAppDirsCreated([Ljava/lang/String;I)V
    :try_end_90
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_36 .. :try_end_90} :catch_92
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_90} :catch_92

    goto :goto_45

    :cond_91
    return v3

    :catch_92
    move-exception p0

    const-string p1, "StorageManagerService"

    .line 5500
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to create obb and data directories for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :catchall_aa
    move-exception p0

    .line 5483
    :try_start_ab
    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    throw p0
.end method

.method public registerCloudProviderChangeListener(Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;)V
    .registers 3

    .line 5690
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mCloudProviderChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 5691
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    return-void
.end method

.method public resetUser(I)V
    .registers 2

    .line 5552
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    move-result-object p0

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
