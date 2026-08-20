.class public Lcom/android/server/knox/dar/EnterprisePartitionManager;
.super Ljava/lang/Object;
.source "EnterprisePartitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/dar/EnterprisePartitionManager$EpmMigrationCmd;,
        Lcom/android/server/knox/dar/EnterprisePartitionManager$EpmResponseCode;,
        Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CopyFlagExitOneError:I = 0x8

.field public static final CopyFlagForce:I = 0x1

.field public static final CopyFlagRecursive:I = 0x2

.field public static final CopyFlagRemoveSource:I = 0x4

.field public static final CopyFlagRenameWithNumber:I = 0x20

.field public static final DLP_NOTIFY_REMOVE:Ljava/lang/String; = "REMOVE"

.field public static final ENODEV:I = 0x13

.field public static final ENOENT:I = 0x2

.field public static final EPM_SOCKET_NAME:Ljava/lang/String; = "epm"

.field public static final EPM_SUB_CMD_CALCULATE_PKG_DIR:Ljava/lang/String; = "calculate_pkg_dir"

.field public static final EPM_SUB_CMD_CLEAR_PKG_DATA_DIR:Ljava/lang/String; = "clear_pkg_data_dir"

.field public static final EPM_SUB_CMD_CREATE_CHAMBER:Ljava/lang/String; = "create_chamber"

.field public static final EPM_SUB_CMD_CREATE_ENC_DIR:Ljava/lang/String; = "create_enc_dir"

.field public static final EPM_SUB_CMD_REMOVE_CHAMBER:Ljava/lang/String; = "remove_chamber"

.field public static final EPM_SUB_CMD_REMOVE_ENC_DIR:Ljava/lang/String; = "remove_enc_dir"

.field public static final EPM_TAG:Ljava/lang/String; = "EnterprisePartitionManager"

.field public static PARTITON_TYPE_INTERNAL_SDCARD:I = 0x66

.field public static PARTITON_TYPE_INTERNAL_SDCARD_DEFAULT:I = 0x6a

.field public static PARTITON_TYPE_INTERNAL_SDCARD_READ:I = 0x6b

.field public static PARTITON_TYPE_INTERNAL_SDCARD_WRITE:I = 0x6c

.field public static PARTITON_TYPE_NON_KNOX:I = 0x67

.field public static PARTITON_TYPE_PRIVATE_DATA:I = 0x65

.field public static final PartitionInserted:I = 0x276

.field public static final PartitionRemoved:I = 0x277

.field public static final TYPE_KNOX_CONTAINER_CE:I = 0x1

.field public static final TYPE_KNOX_CONTAINER_CE_NO_REMOUNT:I = 0x4

.field public static final TYPE_KNOX_CONTAINER_DE:I = 0x3

.field public static final TYPE_SECURE_FILE_SYSTEM:I = 0x2

.field public static final UnsolicitedDlpEvents:I = 0x262

.field public static final UnsolicitedShowToast:I = 0x259

.field public static final isKnoxBuildEnabled:Z

.field public static mInstallLock:Ljava/lang/Object;

.field public static final mKnoxInfo:Landroid/os/Bundle;

.field public static final mKnoxVersion:Ljava/lang/String;

.field public static mPackageTasker:Lcom/android/server/pm/Installer;

.field public static sInstance:Lcom/android/server/knox/dar/EnterprisePartitionManager;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

.field public mSessionIdDstPath:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public notAppliedPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public storage:Landroid/os/storage/StorageManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 98
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mKnoxInfo:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const-string/jumbo v2, "version"

    .line 99
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_11
    move-object v0, v1

    :goto_12
    sput-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mKnoxVersion:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_27

    const-string/jumbo v2, "v00"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    sput-boolean v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    .line 132
    sput-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->sInstance:Lcom/android/server/knox/dar/EnterprisePartitionManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 142
    new-instance v0, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;-><init>(Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    .line 35
    iput-object v0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    .line 363
    iput-object v0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->notAppliedPaths:Ljava/util/List;

    .line 147
    iput-object p1, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInjector:Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

    .line 148
    invoke-virtual {p1}, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mContext:Landroid/content/Context;

    .line 150
    sget-boolean p1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    if-eqz p1, :cond_1e

    .line 151
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    goto :goto_23

    :cond_1e
    const-string p0, "Knox is not supported on this device.."

    .line 153
    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->logD(Ljava/lang/String;)V

    :goto_23
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;
    .registers 3

    const-class v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;

    monitor-enter v0

    .line 136
    :try_start_3
    sget-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->sInstance:Lcom/android/server/knox/dar/EnterprisePartitionManager;

    if-nez v1, :cond_e

    .line 137
    new-instance v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->sInstance:Lcom/android/server/knox/dar/EnterprisePartitionManager;

    .line 138
    :cond_e
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->sInstance:Lcom/android/server/knox/dar/EnterprisePartitionManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isEPMSupported()Z
    .registers 1

    .line 113
    sget-boolean v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    return v0
.end method

.method public static logD(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static setInstaller(Lcom/android/server/pm/Installer;Ljava/lang/Object;)V
    .registers 3

    .line 118
    sget-boolean v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    if-eqz v0, :cond_9

    .line 119
    sput-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    .line 120
    sput-object p1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    goto :goto_c

    :cond_9
    const/4 p0, 0x0

    .line 122
    sput-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    :goto_c
    return-void
.end method


# virtual methods
.method public final addToAuditLog(IIIILjava/lang/String;)V
    .registers 6

    return-void
.end method

.method public cancelCopyChunks(J)V
    .registers 6

    .line 549
    iget-object v0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 550
    sget-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-eqz v1, :cond_34

    if-eqz v0, :cond_34

    .line 551
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_34

    .line 554
    :cond_19
    sget-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    .line 556
    :try_start_1c
    sget-object v2, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v0, p1, p2}, Lcom/android/server/pm/Installer;->copyKnoxCancel(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 557
    iget-object p0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1c .. :try_end_2d} :catch_30
    .catchall {:try_start_1c .. :try_end_2d} :catchall_2e

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_32

    .line 560
    :catch_30
    :cond_30
    :goto_30
    :try_start_30
    monitor-exit v1

    return-void

    :goto_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_2e

    throw p0

    :cond_34
    :goto_34
    return-void
.end method

.method public final command(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public copy(Ljava/lang/String;ILjava/lang/String;I)I
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 626
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->copy(Ljava/lang/String;ILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public copy(Ljava/lang/String;ILjava/lang/String;II)I
    .registers 13

    .line 642
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-nez v0, :cond_7

    const/16 p0, -0x13

    return p0

    :cond_7
    const/4 v0, -0x2

    if-eqz p1, :cond_41

    .line 649
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_41

    :cond_11
    if-eqz p3, :cond_41

    .line 653
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_41

    .line 656
    :cond_1a
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isUserUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {p0, p4}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isUserUnlocked(I)Z

    move-result p0

    if-nez p0, :cond_27

    goto :goto_41

    .line 660
    :cond_27
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, -0x1

    .line 662
    :try_start_2b
    sget-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Installer;->copyKnoxAppData(Ljava/lang/String;ILjava/lang/String;II)Z

    move-result p1
    :try_end_36
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2b .. :try_end_36} :catch_3d
    .catchall {:try_start_2b .. :try_end_36} :catchall_3b

    if-eqz p1, :cond_3d

    const/4 p1, 0x0

    move v0, p1

    goto :goto_3d

    :catchall_3b
    move-exception p1

    goto :goto_3f

    .line 671
    :catch_3d
    :cond_3d
    :goto_3d
    :try_start_3d
    monitor-exit p0

    return v0

    :goto_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_3b

    throw p1

    :cond_41
    :goto_41
    return v0
.end method

.method public copyChunks(Ljava/lang/String;ILjava/lang/String;IJIJZ)I
    .registers 25

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p2

    move-object/from16 v2, p3

    move/from16 v5, p4

    .line 571
    sget-object v4, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-nez v4, :cond_f

    const/16 v0, -0x13

    return v0

    :cond_f
    const/16 v4, 0x20

    const/4 v6, -0x2

    if-eqz v1, :cond_f6

    .line 577
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1c

    goto/16 :goto_f6

    :cond_1c
    if-eqz v2, :cond_f6

    .line 581
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_26

    goto/16 :goto_f6

    .line 584
    :cond_26
    invoke-virtual {p0, v3}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isUserUnlocked(I)Z

    move-result v7

    if-eqz v7, :cond_f6

    invoke-virtual {p0, v5}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isUserUnlocked(I)Z

    move-result v7

    if-nez v7, :cond_34

    goto/16 :goto_f6

    :cond_34
    if-eqz v3, :cond_6c

    const-string v6, "/storage/emulated"

    .line 588
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6c

    const-string v6, "/storage"

    .line 589
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/mnt/user/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "EnterprisePartitionManager"

    .line 590
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "srcRealPath : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    move-object v6, v1

    if-eqz v5, :cond_a6

    const-string v1, "/storage/emulated"

    .line 593
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const-string v1, "/storage"

    .line 594
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/mnt/user/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v1, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EnterprisePartitionManager"

    .line 595
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dstRealPath : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v1

    goto :goto_a7

    :cond_a6
    move-object v7, v2

    .line 597
    :goto_a7
    iget-object v1, v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bc

    .line 598
    iget-object v1, v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bc
    if-eqz p10, :cond_c2

    const/16 v1, 0x24

    move v8, v1

    goto :goto_c3

    :cond_c2
    move v8, v4

    .line 603
    :goto_c3
    sget-object v13, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v13

    .line 605
    :try_start_c6
    sget-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    move/from16 v2, p7

    int-to-long v9, v2

    move-object v2, v6

    move/from16 v3, p2

    move-object v4, v7

    move/from16 v5, p4

    move v6, v8

    move-wide/from16 v7, p5

    move-wide/from16 v11, p8

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/Installer;->copyKnoxChunks(Ljava/lang/String;ILjava/lang/String;IIJJJ)I

    move-result v1

    const/16 v2, 0xc9

    const/4 v3, 0x0

    if-ne v1, v2, :cond_e1

    :goto_df
    move v1, v3

    goto :goto_f2

    :cond_e1
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_f2

    .line 611
    iget-object v0, v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ee
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_c6 .. :try_end_ee} :catch_f1
    .catchall {:try_start_c6 .. :try_end_ee} :catchall_ef

    goto :goto_df

    :catchall_ef
    move-exception v0

    goto :goto_f4

    :catch_f1
    const/4 v1, -0x1

    .line 619
    :cond_f2
    :goto_f2
    :try_start_f2
    monitor-exit v13

    return v1

    :goto_f4
    monitor-exit v13
    :try_end_f5
    .catchall {:try_start_f2 .. :try_end_f5} :catchall_ef

    throw v0

    :cond_f6
    :goto_f6
    return v6
.end method

.method public createChamber(II)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public final createConnector()V
    .registers 1

    return-void
.end method

.method public createEncPkgDir(ILjava/lang/String;)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public createPartition(II)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public deleteFile(Ljava/lang/String;I)Z
    .registers 4

    .line 456
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    const/4 p2, 0x0

    if-eqz p0, :cond_1e

    if-eqz p1, :cond_1e

    .line 457
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_1e

    .line 459
    :cond_e
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter p0

    .line 461
    :try_start_11
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Installer;->deleteKnoxFile(Ljava/lang/String;)Z

    move-result p2
    :try_end_17
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_11 .. :try_end_17} :catch_1a
    .catchall {:try_start_11 .. :try_end_17} :catchall_18

    goto :goto_1a

    :catchall_18
    move-exception p1

    goto :goto_1c

    .line 465
    :catch_1a
    :goto_1a
    :try_start_1a
    monitor-exit p0

    return p2

    :goto_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_18

    throw p1

    :cond_1e
    :goto_1e
    return p2
.end method

.method public getDualDARLockstate()Z
    .registers 2

    const-string p0, "EnterprisePartitionManager"

    const-string v0, "getDualDARLockstate"

    .line 403
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter p0

    .line 406
    :try_start_a
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->getDualDARLockstate()Z

    move-result v0
    :try_end_10
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_a .. :try_end_10} :catch_14
    .catchall {:try_start_a .. :try_end_10} :catchall_12

    :try_start_10
    monitor-exit p0

    return v0

    :catchall_12
    move-exception v0

    goto :goto_17

    :catch_14
    const/4 v0, 0x0

    .line 408
    monitor-exit p0

    return v0

    .line 410
    :goto_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_12

    throw v0
.end method

.method public getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 13

    .line 499
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 502
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-eqz v0, :cond_92

    if-eqz p1, :cond_92

    .line 503
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto/16 :goto_92

    :cond_13
    if-eqz p2, :cond_4a

    const-string v0, "/storage/emulated"

    .line 510
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string v0, "/storage"

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/mnt/user/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "EnterprisePartitionManager"

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFileInfo - realath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    const/4 p2, 0x0

    .line 516
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 518
    :try_start_4f
    sget-object v2, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/Installer;->getKnoxFileInfo(Ljava/lang/String;)[J

    move-result-object p2

    .line 519
    aget-wide v2, p2, v1
    :try_end_57
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_4f .. :try_end_57} :catch_5b
    .catchall {:try_start_4f .. :try_end_57} :catchall_59

    long-to-int p1, v2

    goto :goto_5c

    :catchall_59
    move-exception p0

    goto :goto_90

    :catch_5b
    const/4 p1, -0x1

    .line 523
    :goto_5c
    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_59

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_77

    if-nez p1, :cond_77

    .line 529
    aget-wide v2, p2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const/4 v4, 0x2

    .line 531
    aget-wide v4, p2, v4

    const/4 v6, 0x3

    .line 532
    aget-wide v6, p2, v6

    const-wide/16 v8, 0x1

    cmp-long p2, v6, v8

    if-nez p2, :cond_78

    move v1, v0

    goto :goto_78

    :cond_77
    move-wide v4, v2

    :cond_78
    :goto_78
    const-string/jumbo p2, "result"

    .line 535
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "last_modified_date"

    .line 536
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "file_size"

    .line 537
    invoke-virtual {p0, p1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo p1, "is_dir"

    .line 538
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0

    .line 523
    :goto_90
    :try_start_90
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_59

    throw p0

    :cond_92
    :goto_92
    const/4 p1, -0x2

    const-string/jumbo p2, "result"

    .line 505
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public getFiles(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 477
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    const/4 p2, 0x0

    if-eqz p0, :cond_2b

    if-eqz p1, :cond_2b

    .line 478
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_2b

    .line 480
    :cond_e
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 483
    sget-object v2, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 485
    :try_start_1a
    sget-object v3, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v3, p1, v0, v1, p0}, Lcom/android/server/pm/Installer;->getKnoxScanDir(Ljava/lang/String;JLjava/util/List;)Z

    move-result p1
    :try_end_20
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1a .. :try_end_20} :catch_23
    .catchall {:try_start_1a .. :try_end_20} :catchall_21

    goto :goto_24

    :catchall_21
    move-exception p0

    goto :goto_29

    :catch_23
    const/4 p1, 0x0

    .line 489
    :goto_24
    :try_start_24
    monitor-exit v2

    if-eqz p1, :cond_28

    move-object p2, p0

    :cond_28
    return-object p2

    :goto_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_21

    throw p0

    :cond_2b
    :goto_2b
    return-object p2
.end method

.method public hasDualDARPolicy(Ljava/lang/String;)Z
    .registers 4

    const-string p0, "EnterprisePartitionManager"

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hasDualDARPolicy(path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter p0

    .line 356
    :try_start_1f
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Installer;->hasDualDARPolicy(Ljava/lang/String;)Z

    move-result p1
    :try_end_25
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1f .. :try_end_25} :catch_29
    .catchall {:try_start_1f .. :try_end_25} :catchall_27

    :try_start_25
    monitor-exit p0

    return p1

    :catchall_27
    move-exception p1

    goto :goto_2c

    :catch_29
    const/4 p1, 0x0

    .line 358
    monitor-exit p0

    return p1

    .line 360
    :goto_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_27

    throw p1
.end method

.method public hasDualDARPolicyRecursively(Ljava/lang/String;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "EnterprisePartitionManager"

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hasDualDARPolicyRecursively(path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->notAppliedPaths:Ljava/util/List;

    if-nez v0, :cond_28

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->notAppliedPaths:Ljava/util/List;

    goto :goto_30

    .line 377
    :cond_28
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception v0

    .line 380
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 382
    :goto_30
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_33
    sget-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    iget-object v2, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->notAppliedPaths:Ljava/util/List;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/Installer;->hasDualDARPolicyRecursively(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1
    :try_end_3b
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_33 .. :try_end_3b} :catch_a7
    .catchall {:try_start_33 .. :try_end_3b} :catchall_71

    .line 388
    :try_start_3b
    iget-object v1, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->notAppliedPaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6f

    .line 389
    iget-object p0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->notAppliedPaths:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_49
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "EnterprisePartitionManager"

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Policy not applied paths : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 392
    :cond_6f
    monitor-exit v0

    return p1

    :catchall_71
    move-exception p1

    .line 388
    iget-object v1, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->notAppliedPaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a6

    .line 389
    iget-object p0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->notAppliedPaths:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_80
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "EnterprisePartitionManager"

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Policy not applied paths : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    .line 394
    :cond_a6
    throw p1

    :catch_a7
    const/4 p1, 0x0

    .line 388
    iget-object v1, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->notAppliedPaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_dc

    .line 389
    iget-object p0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->notAppliedPaths:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_dc

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "EnterprisePartitionManager"

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Policy not applied paths : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b6

    .line 392
    :cond_dc
    monitor-exit v0

    return p1

    :catchall_de
    move-exception p0

    .line 395
    monitor-exit v0
    :try_end_e0
    .catchall {:try_start_3b .. :try_end_e0} :catchall_de

    throw p0
.end method

.method public final isFailed(Ljava/lang/Object;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public isFileExist(Ljava/lang/String;I)Z
    .registers 6

    .line 428
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    const/4 v0, 0x0

    if-eqz p0, :cond_5f

    if-eqz p1, :cond_5f

    .line 429
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_5f

    :cond_e
    if-eqz p2, :cond_45

    const-string p0, "/storage/emulated"

    .line 432
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_45

    const-string p0, "/storage"

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/mnt/user/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p0, "EnterprisePartitionManager"

    .line 434
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFileInfo - realath : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_45
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter p0

    .line 439
    :try_start_48
    sget-object p2, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/Installer;->getKnoxFileInfo(Ljava/lang/String;)[J

    move-result-object p1

    .line 440
    aget-wide p1, p1, v0
    :try_end_50
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_48 .. :try_end_50} :catch_5b
    .catchall {:try_start_48 .. :try_end_50} :catchall_59

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-nez p1, :cond_5b

    const/4 p1, 0x1

    move v0, p1

    goto :goto_5b

    :catchall_59
    move-exception p1

    goto :goto_5d

    .line 444
    :catch_5b
    :cond_5b
    :goto_5b
    :try_start_5b
    monitor-exit p0

    return v0

    :goto_5d
    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_59

    throw p1

    :cond_5f
    :goto_5f
    return v0
.end method

.method public isMounted(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final isOnGoing(Ljava/lang/Object;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public isReady()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final isSuccess(Ljava/lang/Object;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public final isUserUnlocked(I)Z
    .registers 8

    const-string v0, "EnterprisePartitionManager"

    .line 719
    iget-object v1, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInjector:Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

    invoke-virtual {v1}, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;->binderClearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 721
    :try_start_9
    iget-object v4, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    .line 722
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 723
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not unlocked"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_34

    .line 728
    :cond_2e
    :goto_2e
    iget-object p0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInjector:Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;->binderRestoreCallingIdentity(J)V

    goto :goto_4e

    :catchall_34
    move-exception p1

    .line 726
    :try_start_35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to check user state... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_35 .. :try_end_4d} :catchall_4f

    goto :goto_2e

    :goto_4e
    return v3

    :catchall_4f
    move-exception p1

    .line 728
    iget-object p0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInjector:Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;->binderRestoreCallingIdentity(J)V

    .line 729
    throw p1
.end method

.method public migrateSdpDb(ILjava/lang/String;)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public migration(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const/4 p0, 0x1

    return p0
.end method

.method public mount(ILjava/lang/String;ZI)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public move(Ljava/lang/String;ILjava/lang/String;I)I
    .registers 11

    const/16 v5, 0x24

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 632
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->move(Ljava/lang/String;ILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public move(Ljava/lang/String;ILjava/lang/String;II)I
    .registers 12

    .line 682
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-nez v0, :cond_7

    const/16 p0, -0x13

    return p0

    :cond_7
    or-int/lit8 v5, p5, 0x4

    const/4 p5, -0x2

    if-eqz p1, :cond_42

    .line 691
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_42

    :cond_13
    if-eqz p3, :cond_42

    .line 695
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_42

    .line 698
    :cond_1c
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isUserUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p0, p4}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isUserUnlocked(I)Z

    move-result p0

    if-nez p0, :cond_29

    goto :goto_42

    .line 702
    :cond_29
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter p0

    const/4 p5, -0x1

    .line 704
    :try_start_2d
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Installer;->copyKnoxAppData(Ljava/lang/String;ILjava/lang/String;II)Z

    move-result p1
    :try_end_37
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2d .. :try_end_37} :catch_3e
    .catchall {:try_start_2d .. :try_end_37} :catchall_3c

    if-eqz p1, :cond_3e

    const/4 p1, 0x0

    move p5, p1

    goto :goto_3e

    :catchall_3c
    move-exception p1

    goto :goto_40

    .line 713
    :catch_3e
    :cond_3e
    :goto_3e
    :try_start_3e
    monitor-exit p0

    return p5

    :goto_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_3c

    throw p1

    :cond_42
    :goto_42
    return p5
.end method

.method public removeChamber(II)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public removeEncPkgDir(ILjava/lang/String;)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public removePartition(II)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public final rescanSdcard(Landroid/content/Context;Ljava/io/File;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public varargs sendDLPCommand(II[Ljava/lang/Object;)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public setDualDARPolicy(II)Z
    .registers 7

    .line 303
    iget-object v0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInjector:Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 305
    :try_start_6
    iget-object v2, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iput-object v2, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    if-eqz v2, :cond_1e

    .line 307
    invoke-virtual {v2, p1, p2}, Landroid/os/storage/StorageManager;->setDualDARPolicy(II)Z

    move-result p1
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_2c

    .line 311
    iget-object p0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInjector:Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;->binderRestoreCallingIdentity(J)V

    return p1

    :cond_1e
    :try_start_1e
    const-string p1, "EnterprisePartitionManager"

    const-string p2, "StorageManager instance is NULL"

    .line 309
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_2c

    .line 311
    iget-object p0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInjector:Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;->binderRestoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_2c
    move-exception p1

    iget-object p0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInjector:Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;->binderRestoreCallingIdentity(J)V

    .line 312
    throw p1
.end method

.method public setDualDARPolicyDir(IILjava/lang/String;)Z
    .registers 6

    const-string p0, "EnterprisePartitionManager"

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDualDARPolicyDir(user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " flags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter p0

    .line 325
    :try_start_2f
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/Installer;->setDualDARPolicyDir(IILjava/lang/String;)Z

    move-result p1
    :try_end_35
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2f .. :try_end_35} :catch_39
    .catchall {:try_start_2f .. :try_end_35} :catchall_37

    :try_start_35
    monitor-exit p0

    return p1

    :catchall_37
    move-exception p1

    goto :goto_3c

    :catch_39
    const/4 p1, 0x0

    .line 327
    monitor-exit p0

    return p1

    .line 329
    :goto_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_37

    throw p1
.end method

.method public setDualDARPolicyDirRecursively(IILjava/lang/String;)Z
    .registers 6

    const-string p0, "EnterprisePartitionManager"

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDualDARPolicyDirRecursively(user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " flags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter p0

    .line 340
    :try_start_2f
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/Installer;->setDualDARPolicyDirRecursively(IILjava/lang/String;)Z

    move-result p1
    :try_end_35
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2f .. :try_end_35} :catch_39
    .catchall {:try_start_2f .. :try_end_35} :catchall_37

    :try_start_35
    monitor-exit p0

    return p1

    :catchall_37
    move-exception p1

    goto :goto_3c

    :catch_39
    const/4 p1, 0x0

    .line 342
    monitor-exit p0

    return p1

    .line 344
    :goto_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_37

    throw p1
.end method

.method public setEviction(IZ)Z
    .registers 5

    const-string p0, "EnterprisePartitionManager"

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEviction(user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " evict:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter p0

    .line 294
    :try_start_27
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/Installer;->setEviction(IZ)Z

    move-result p1
    :try_end_2d
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_27 .. :try_end_2d} :catch_31
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2f

    :try_start_2d
    monitor-exit p0

    return p1

    :catchall_2f
    move-exception p1

    goto :goto_34

    :catch_31
    const/4 p1, 0x0

    .line 296
    monitor-exit p0

    return p1

    .line 298
    :goto_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_2f

    throw p1
.end method

.method public setSdpPolicy(I)Z
    .registers 4

    .line 269
    iget-object v0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_13

    .line 271
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->setSdpPolicy(I)Z

    move-result p0

    return p0

    :cond_13
    const-string p0, "EnterprisePartitionManager"

    const-string p1, "StorageManager instance is NULL"

    .line 273
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setSdpPolicyToPath(ILjava/lang/String;)Z
    .registers 5

    .line 278
    iget-object v0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_13

    .line 280
    invoke-virtual {v0, p1, p2}, Landroid/os/storage/StorageManager;->setSdpPolicyToPath(ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_13
    const-string p0, "EnterprisePartitionManager"

    const-string p1, "StorageManager instance is NULL"

    .line 282
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setTestInstaller(Lcom/android/server/pm/Installer;Ljava/lang/Object;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 128
    sput-object p1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    .line 129
    sput-object p2, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    return-void
.end method

.method public syncFS(II)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public unmount(II)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method
