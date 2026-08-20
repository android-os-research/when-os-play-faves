.class public Lcom/android/server/StorageManagerService$3;
.super Landroid/os/IVoldListener$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2

    .line 1667
    iput-object p1, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/os/IVoldListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiskCreated(Ljava/lang/String;I)V
    .registers 9

    .line 1670
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmLock(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    const-string/jumbo v1, "persist.sys.adoptable"

    .line 1671
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 1672
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x1bb67bb3

    const/4 v5, 0x1

    if-eq v3, v4, :cond_29

    const v4, 0x5b18fa1b

    if-eq v3, v4, :cond_1f

    goto :goto_32

    :cond_1f
    const-string v3, "force_off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    move v2, v5

    goto :goto_32

    :cond_29
    const-string v3, "force_on"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v2, 0x0

    :cond_32
    :goto_32
    if-eqz v2, :cond_3a

    if-eq v2, v5, :cond_37

    goto :goto_3c

    :cond_37
    and-int/lit8 p2, p2, -0x2

    goto :goto_3c

    :cond_3a
    or-int/lit8 p2, p2, 0x1

    .line 1680
    :goto_3c
    iget-object p0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmDisks(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    new-instance v1, Landroid/os/storage/DiskInfo;

    invoke-direct {v1, p1, p2}, Landroid/os/storage/DiskInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1681
    monitor-exit v0

    return-void

    :catchall_4c
    move-exception p0

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_7 .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public onDiskDestroyed(Ljava/lang/String;)V
    .registers 4

    .line 1709
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmLock(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1710
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmDisks(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/DiskInfo;

    if-eqz p1, :cond_1e

    .line 1712
    iget-object p0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmCallbacks(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$Callbacks;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->-$$Nest$mnotifyDiskDestroyed(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;)V

    .line 1714
    :cond_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public onDiskMetadataChanged(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1697
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmLock(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1698
    :try_start_7
    iget-object p0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmDisks(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/DiskInfo;

    if-eqz p0, :cond_1b

    .line 1700
    iput-wide p2, p0, Landroid/os/storage/DiskInfo;->size:J

    .line 1701
    iput-object p4, p0, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    .line 1702
    iput-object p5, p0, Landroid/os/storage/DiskInfo;->sysPath:Ljava/lang/String;

    .line 1704
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public onDiskScanned(Ljava/lang/String;)V
    .registers 4

    .line 1686
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmLock(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1687
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmDisks(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/DiskInfo;

    if-eqz p1, :cond_1a

    .line 1689
    iget-object p0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0, p1}, Lcom/android/server/StorageManagerService;->-$$Nest$monDiskScannedLocked(Lcom/android/server/StorageManagerService;Landroid/os/storage/DiskInfo;)V

    .line 1691
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public onEncryptionStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1824
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmLock(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    const-string v1, "StorageManagerService"

    .line 1826
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEncryptionStateChanged state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    iget-object v1, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVolumes(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/VolumeInfo;

    if-eqz p1, :cond_80

    const-string p1, "encryptable"

    .line 1829
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 1831
    new-instance p1, Lcom/samsung/android/security/SemSdCardEncryption;

    iget-object p0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmContext(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    .line 1834
    new-instance p0, Landroid/os/PersistableBundle;

    invoke-direct {p0}, Landroid/os/PersistableBundle;-><init>()V

    const-string/jumbo v1, "status"

    const/4 v2, 0x0

    .line 1835
    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "description"

    .line 1836
    invoke-virtual {p0, v1, p3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_7 .. :try_end_58} :catchall_82

    .line 1838
    :try_start_58
    invoke-virtual {p1}, Lcom/samsung/android/security/SemSdCardEncryption;->getListener()Landroid/os/IVoldTaskListener;

    move-result-object p1

    const/16 p3, 0x2b4

    invoke-interface {p1, p3, p0}, Landroid/os/IVoldTaskListener;->onStatus(ILandroid/os/PersistableBundle;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_61} :catch_62
    .catchall {:try_start_58 .. :try_end_61} :catchall_82

    goto :goto_6a

    :catch_62
    move-exception p0

    :try_start_63
    const-string p1, "StorageManagerService"

    const-string p3, "failed to send onStatus()"

    .line 1840
    invoke-static {p1, p3, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6a
    const-string p3, "block"

    :cond_6c
    const-string/jumbo p0, "sec.fle.encryption.status"

    .line 1844
    invoke-static {p0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "sec.vold.ext_encrypted_type"

    .line 1845
    invoke-static {p0, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "StorageManagerService"

    const-string/jumbo p1, "onEncryptionStateChanged status updated "

    .line 1846
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    :cond_80
    monitor-exit v0

    return-void

    :catchall_82
    move-exception p0

    monitor-exit v0
    :try_end_84
    .catchall {:try_start_63 .. :try_end_84} :catchall_82

    throw p0
.end method

.method public onVolumeCreated(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .line 1720
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmLock(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1721
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmDisks(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/storage/DiskInfo;

    .line 1722
    new-instance v1, Landroid/os/storage/VolumeInfo;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 1723
    iput p5, v1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1724
    iget-object p2, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p2}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVolumes(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    iget-object p0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0, v1}, Lcom/android/server/StorageManagerService;->-$$Nest$monVolumeCreatedLocked(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V

    .line 1726
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public onVolumeDestroyed(Ljava/lang/String;)V
    .registers 5

    .line 1783
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmLock(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1784
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVolumes(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/VolumeInfo;

    .line 1785
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_4a

    if-eqz p1, :cond_49

    .line 1788
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmStorageSessionController(Lcom/android/server/StorageManagerService;)Lcom/android/server/storage/StorageSessionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/storage/StorageSessionController;->onVolumeRemove(Landroid/os/storage/VolumeInfo;)Lcom/android/server/storage/StorageUserConnection;

    .line 1790
    :try_start_1f
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_49

    .line 1791
    iget-object p0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmInstaller(Lcom/android/server/StorageManagerService;)Lcom/android/server/pm/Installer;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Installer;->onPrivateVolumeRemoved(Ljava/lang/String;)V
    :try_end_31
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1f .. :try_end_31} :catch_32

    goto :goto_49

    :catch_32
    move-exception p0

    const-string v0, "StorageManagerService"

    .line 1794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed when private volume unmounted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_49
    :goto_49
    return-void

    :catchall_4a
    move-exception p0

    .line 1785
    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method public onVolumeInternalPathChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1772
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmLock(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1773
    :try_start_7
    iget-object p0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVolumes(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/VolumeInfo;

    if-eqz p0, :cond_17

    .line 1775
    iput-object p2, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    .line 1777
    :cond_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public onVolumeMetadataChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1750
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmLock(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1751
    :try_start_7
    iget-object p0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVolumes(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/VolumeInfo;

    if-eqz p0, :cond_1b

    .line 1753
    iput-object p2, p0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    .line 1754
    iput-object p3, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 1755
    iput-object p4, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    .line 1757
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public onVolumePathChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1762
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmLock(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1763
    :try_start_7
    iget-object p0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVolumes(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/VolumeInfo;

    if-eqz p0, :cond_17

    .line 1765
    iput-object p2, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 1767
    :cond_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public onVolumeStateChanged(Ljava/lang/String;I)V
    .registers 8

    .line 1731
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmLock(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1732
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVolumes(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/VolumeInfo;

    if-eqz p1, :cond_3c

    .line 1734
    iget v1, p1, Landroid/os/storage/VolumeInfo;->state:I

    .line 1735
    iput p2, p1, Landroid/os/storage/VolumeInfo;->state:I

    .line 1736
    new-instance v2, Landroid/os/storage/VolumeInfo;

    invoke-direct {v2, p1}, Landroid/os/storage/VolumeInfo;-><init>(Landroid/os/storage/VolumeInfo;)V

    .line 1737
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p1

    .line 1738
    iput-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1739
    iput v1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1740
    iput p2, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1741
    iget-object v3, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1742
    iget-object p0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0, v2, v1, p2}, Lcom/android/server/StorageManagerService;->-$$Nest$monVolumeStateChangedLocked(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;II)V

    .line 1744
    :cond_3c
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_7 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public sendVoldMessage(Ljava/lang/String;)V
    .registers 5

    .line 1802
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.EXTERNAL_STORAGE_WARNING_SEC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "StorageManagerService"

    if-nez p1, :cond_25

    .line 1805
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Intent["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] cannot be sent"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_25
    const-string/jumbo v2, "message"

    .line 1809
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "BAD_REMOVAL_SDCARD"

    .line 1811
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2}, Lcom/android/server/StorageManagerService;->-$$Nest$misExtSDCardTrayRemoved(Lcom/android/server/StorageManagerService;)Z

    move-result v2

    if-nez v2, :cond_6d

    :cond_3b
    const-string v2, "BAD_REMOVAL_USB"

    .line 1812
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    const-string v2, "REBOOT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    goto :goto_6d

    .line 1816
    :cond_4c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Don\'t send the Intent["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] extras: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 1813
    :cond_6d
    :goto_6d
    iget-object p0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmContext(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object p0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1814
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] Bad Removal broadcasting "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " extras: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a0
    return-void
.end method
