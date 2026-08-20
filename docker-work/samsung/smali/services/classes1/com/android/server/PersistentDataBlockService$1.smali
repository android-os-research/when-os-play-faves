.class public Lcom/android/server/PersistentDataBlockService$1;
.super Landroid/service/persistentdata/IPersistentDataBlockService$Stub;
.source "PersistentDataBlockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PersistentDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/PersistentDataBlockService;


# direct methods
.method public constructor <init>(Lcom/android/server/PersistentDataBlockService;)V
    .registers 2

    .line 473
    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-direct {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final enforcePersistentDataBlockAccess()V
    .registers 3

    .line 655
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmContext(Lcom/android/server/PersistentDataBlockService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_PDB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    .line 657
    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$menforceUid(Lcom/android/server/PersistentDataBlockService;I)V

    :cond_17
    return-void
.end method

.method public getDataBlockSize()I
    .registers 6

    .line 632
    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    const/4 v0, 0x0

    .line 636
    :try_start_4
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v4}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmDataBlockFile(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_19} :catch_41

    .line 643
    :try_start_19
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v2}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_20} :catch_30
    .catchall {:try_start_19 .. :try_end_20} :catchall_2e

    .line 644
    :try_start_20
    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {p0, v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mgetTotalDataSizeLocked(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I

    move-result p0

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2b

    .line 650
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return p0

    :catchall_2b
    move-exception p0

    .line 645
    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw p0
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2e} :catch_30
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    goto :goto_3d

    .line 647
    :catch_30
    :try_start_30
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v2, "error reading data block size"

    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_2e

    .line 650
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v0

    :goto_3d
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 651
    throw p0

    .line 638
    :catch_41
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "partition not available"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getFlashLockState()I
    .registers 2

    .line 618
    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$menforceOemUnlockReadPermission(Lcom/android/server/PersistentDataBlockService;)V

    const-string/jumbo p0, "ro.boot.flash.locked"

    .line 619
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 620
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    const/4 p0, -0x1

    return p0

    :cond_21
    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public getMaximumDataBlockSize()J
    .registers 3

    .line 663
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$menforceUid(Lcom/android/server/PersistentDataBlockService;I)V

    .line 664
    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mdoGetMaximumDataBlockSize(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOemUnlockEnabled()Z
    .registers 2

    .line 612
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$menforceOemUnlockReadPermission(Lcom/android/server/PersistentDataBlockService;)V

    .line 613
    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mdoGetOemUnlockEnabled(Lcom/android/server/PersistentDataBlockService;)Z

    move-result p0

    return p0
.end method

.method public getPersistentDataPackageName()Ljava/lang/String;
    .registers 2

    .line 728
    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    .line 729
    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmContext(Lcom/android/server/PersistentDataBlockService;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x104037f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasFrpCredentialHandle()Z
    .registers 3

    .line 717
    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    .line 719
    :try_start_3
    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmInternalService(Lcom/android/server/PersistentDataBlockService;)Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/PersistentDataBlockManagerInternal;->getFrpCredentialHandle()[B

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_d} :catch_13

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0

    :catch_13
    move-exception p0

    .line 721
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error reading frp handle"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 722
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "cannot read frp credential"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isEnabled()Z
    .registers 6

    .line 672
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_2c

    .line 675
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not allowed to access PST"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 679
    :cond_2c
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$menforceChecksumValidity(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v0

    if-nez v0, :cond_35

    return v1

    .line 685
    :cond_35
    :try_start_35
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v4}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmDataBlockFile(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_4a} :catch_a9

    .line 692
    :try_start_4a
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v2}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_51} :catch_83
    .catchall {:try_start_4a .. :try_end_51} :catchall_81

    .line 693
    :try_start_51
    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService$1;->getOemUnlockEnabled()Z

    move-result v3

    .line 694
    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {p0, v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mgetTotalDataSizeLocked(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I

    move-result p0

    if-lez p0, :cond_6f

    if-nez v3, :cond_6f

    const/4 p0, 0x1

    .line 697
    monitor-exit v2
    :try_end_61
    .catchall {:try_start_51 .. :try_end_61} :catchall_7e

    .line 708
    :try_start_61
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_6e

    .line 710
    :catch_65
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failed to close OutputStream"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6e
    return p0

    .line 700
    :cond_6f
    :try_start_6f
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_7e

    .line 708
    :try_start_70
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_7d

    .line 710
    :catch_74
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "failed to close OutputStream"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7d
    return v1

    :catchall_7e
    move-exception p0

    .line 702
    :try_start_7f
    monitor-exit v2
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    :try_start_80
    throw p0
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_81} :catch_83
    .catchall {:try_start_80 .. :try_end_81} :catchall_81

    :catchall_81
    move-exception p0

    goto :goto_9b

    :catch_83
    move-exception p0

    .line 704
    :try_start_84
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "failed to read status"

    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8d
    .catchall {:try_start_84 .. :try_end_8d} :catchall_81

    .line 708
    :try_start_8d
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_9a

    .line 710
    :catch_91
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "failed to close OutputStream"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9a
    return v1

    .line 708
    :goto_9b
    :try_start_9b
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9f

    goto :goto_a8

    .line 710
    :catch_9f
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failed to close OutputStream"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :goto_a8
    throw p0

    :catch_a9
    move-exception p0

    .line 687
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "partition not available?"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public read()[B
    .registers 8

    .line 530
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$menforceUid(Lcom/android/server/PersistentDataBlockService;I)V

    .line 531
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$menforceChecksumValidity(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    new-array p0, v1, [B

    return-object p0

    :cond_15
    const/4 v0, 0x0

    .line 537
    :try_start_16
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmDataBlockFile(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_2b} :catch_bc

    .line 544
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_32} :catch_96
    .catchall {:try_start_2b .. :try_end_32} :catchall_94

    .line 545
    :try_start_32
    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {p0, v2}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mgetTotalDataSizeLocked(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I

    move-result p0

    if-nez p0, :cond_4b

    new-array p0, v1, [B

    .line 548
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_91

    .line 566
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_4a

    .line 568
    :catch_41
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failed to close OutputStream"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4a
    return-object p0

    .line 551
    :cond_4b
    :try_start_4b
    new-array v4, p0, [B

    .line 552
    invoke-virtual {v2, v4, v1, p0}, Ljava/io/DataInputStream;->read([BII)I

    move-result v1

    if-ge v1, p0, :cond_82

    .line 555
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to read entire data block. bytes read: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    monitor-exit v3
    :try_end_74
    .catchall {:try_start_4b .. :try_end_74} :catchall_91

    .line 566
    :try_start_74
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_81

    .line 568
    :catch_78
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v1, "failed to close OutputStream"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_81
    return-object v0

    .line 559
    :cond_82
    :try_start_82
    monitor-exit v3
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_91

    .line 566
    :try_start_83
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_90

    .line 568
    :catch_87
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "failed to close OutputStream"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_90
    return-object v4

    :catchall_91
    move-exception p0

    .line 560
    :try_start_92
    monitor-exit v3
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    :try_start_93
    throw p0
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_94} :catch_96
    .catchall {:try_start_93 .. :try_end_94} :catchall_94

    :catchall_94
    move-exception p0

    goto :goto_ae

    :catch_96
    move-exception p0

    .line 562
    :try_start_97
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v3, "failed to read data"

    invoke-static {v1, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a0
    .catchall {:try_start_97 .. :try_end_a0} :catchall_94

    .line 566
    :try_start_a0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_a4

    goto :goto_ad

    .line 568
    :catch_a4
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v1, "failed to close OutputStream"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ad
    return-object v0

    .line 566
    :goto_ae
    :try_start_ae
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b2

    goto :goto_bb

    .line 568
    :catch_b2
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failed to close OutputStream"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :goto_bb
    throw p0

    :catch_bc
    move-exception p0

    .line 539
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "partition not available?"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public setOemUnlockEnabled(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 592
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 596
    :cond_7
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$menforceOemUnlockWritePermission(Lcom/android/server/PersistentDataBlockService;)V

    .line 597
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$menforceIsAdmin(Lcom/android/server/PersistentDataBlockService;)V

    if-eqz p1, :cond_23

    .line 601
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    const-string/jumbo v1, "no_oem_unlock"

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$menforceUserRestriction(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    const-string/jumbo v1, "no_factory_reset"

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$menforceUserRestriction(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)V

    .line 604
    :cond_23
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 605
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1, p1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mdoSetOemUnlockEnabledLocked(Lcom/android/server/PersistentDataBlockService;Z)V

    .line 606
    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mcomputeAndWriteDigestLocked(Lcom/android/server/PersistentDataBlockService;)Z

    .line 607
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_36

    throw p0
.end method

.method public wipe()V
    .registers 4

    .line 575
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$menforceOemUnlockWritePermission(Lcom/android/server/PersistentDataBlockService;)V

    .line 577
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 578
    :try_start_c
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmDataBlockFile(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mnativeWipe(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_22

    .line 581
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v1, "failed to wipe persistent partition"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 583
    :cond_22
    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fputmIsWritable(Lcom/android/server/PersistentDataBlockService;Z)V

    .line 584
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "persistent partition now wiped and unwritable"

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :goto_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_c .. :try_end_36} :catchall_34

    throw p0
.end method

.method public write([B)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$menforceUid(Lcom/android/server/PersistentDataBlockService;I)V

    .line 486
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mdoGetMaximumDataBlockSize(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    .line 487
    array-length v2, p1

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_18

    neg-long p0, v0

    long-to-int p0, p0

    return p0

    :cond_18
    const/4 v0, -0x1

    .line 494
    :try_start_19
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mgetBlockOutputChannel(Lcom/android/server/PersistentDataBlockService;)Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1f} :catch_72

    .line 500
    array-length v2, p1

    add-int/lit8 v2, v2, 0x8

    const/16 v3, 0x20

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    new-array v3, v3, [B

    .line 502
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const v3, 0x19901873

    .line 503
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 504
    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 505
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 506
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 507
    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 508
    :try_start_45
    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v4}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmIsWritable(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 509
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_6f

    return v0

    .line 513
    :cond_4f
    :try_start_4f
    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v2, 0x1

    .line 514
    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_56} :catch_63
    .catchall {:try_start_4f .. :try_end_56} :catchall_6f

    .line 520
    :try_start_56
    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mcomputeAndWriteDigestLocked(Lcom/android/server/PersistentDataBlockService;)Z

    move-result p0

    if-eqz p0, :cond_61

    .line 521
    array-length p0, p1

    monitor-exit v3

    return p0

    .line 523
    :cond_61
    monitor-exit v3

    return v0

    :catch_63
    move-exception p0

    .line 516
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "failed writing to the persistent data block"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 517
    monitor-exit v3

    return v0

    :catchall_6f
    move-exception p0

    .line 525
    monitor-exit v3
    :try_end_71
    .catchall {:try_start_56 .. :try_end_71} :catchall_6f

    throw p0

    :catch_72
    move-exception p0

    .line 496
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "partition not available?"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method
