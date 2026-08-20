.class public Lcom/android/commands/bmgr/Bmgr;
.super Ljava/lang/Object;
.source "Bmgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/bmgr/Bmgr$Monitor;,
        Lcom/android/commands/bmgr/Bmgr$BackupMonitor;,
        Lcom/android/commands/bmgr/Bmgr$RestoreObserver;,
        Lcom/android/commands/bmgr/Bmgr$InitObserver;,
        Lcom/android/commands/bmgr/Bmgr$BackupObserver;,
        Lcom/android/commands/bmgr/Bmgr$Observer;
    }
.end annotation


# static fields
.field private static final BMGR_ERR_NO_RESTORESESSION_FOR_USER:Ljava/lang/String; = "Error: Could not get restore session for user "

.field private static final BMGR_NOT_ACTIVATED_FOR_USER:Ljava/lang/String; = "Error: Backup Manager is not activated for user "

.field private static final BMGR_NOT_RUNNING_ERR:Ljava/lang/String; = "Error: Could not access the Backup Manager.  Is the system running?"

.field private static final PM_NOT_RUNNING_ERR:Ljava/lang/String; = "Error: Could not access the Package Manager.  Is the system running?"

.field public static final TAG:Ljava/lang/String; = "Bmgr"

.field private static final TRANSPORT_NOT_RUNNING_ERR:Ljava/lang/String; = "Error: Could not access the backup transport.  Is the system running?"


# instance fields
.field private mArgs:[Ljava/lang/String;

.field private final mBmgr:Landroid/app/backup/IBackupManager;

.field private mNextArg:I

.field private mRestore:Landroid/app/backup/IRestoreSession;


# direct methods
.method static bridge synthetic -$$Nest$smconvertBackupStatusToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/commands/bmgr/Bmgr;->convertBackupStatusToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smeventCategoryToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/commands/bmgr/Bmgr;->eventCategoryToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smeventIdToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/commands/bmgr/Bmgr;->eventIdToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>()V
    .registers 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    .line 86
    return-void
.end method

.method constructor <init>(Landroid/app/backup/IBackupManager;)V
    .registers 2
    .param p1, "bmgr"    # Landroid/app/backup/IBackupManager;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    .line 82
    return-void
.end method

.method private activatedToString(Z)Ljava/lang/String;
    .registers 3
    .param p1, "activated"    # Z

    .line 242
    if-eqz p1, :cond_5

    const-string v0, "activated"

    goto :goto_7

    :cond_5
    const-string v0, "deactivated"

    :goto_7
    return-object v0
.end method

.method private backupNowAllPackages(IZI)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "nonIncrementalBackup"    # Z
    .param p3, "monitorState"    # I

    .line 431
    nop

    .line 432
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 433
    .local v0, "mPm":Landroid/content/pm/IPackageManager;
    const-string v1, "Error: Could not access the Package Manager.  Is the system running?"

    if-nez v0, :cond_15

    .line 434
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 435
    return-void

    .line 437
    :cond_15
    const/4 v2, 0x0

    .line 439
    .local v2, "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-wide/16 v3, 0x0

    :try_start_18
    invoke-interface {v0, v3, v4, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_20} :catch_22

    move-object v2, v1

    .line 443
    goto :goto_31

    .line 440
    :catch_22
    move-exception v3

    .line 441
    .local v3, "e":Landroid/os/RemoteException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 442
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 444
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_31
    if-eqz v2, :cond_62

    .line 445
    nop

    .line 446
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/commands/bmgr/Bmgr$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/commands/bmgr/Bmgr$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/commands/bmgr/Bmgr$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/commands/bmgr/Bmgr$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 447
    .local v1, "packages":[Ljava/lang/String;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 449
    .local v3, "filteredPackages":[Ljava/lang/String;
    :try_start_4f
    iget-object v4, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v4, p1, v1}, Landroid/app/backup/IBackupManager;->filterAppsEligibleForBackupForUser(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_55} :catch_57

    move-object v3, v4

    .line 452
    goto :goto_5b

    .line 450
    :catch_57
    move-exception v4

    .line 451
    .local v4, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v4}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 453
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_5b
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, p1, v4, p2, p3}, Lcom/android/commands/bmgr/Bmgr;->backupNowPackages(ILjava/util/List;ZI)V

    .line 456
    .end local v1    # "packages":[Ljava/lang/String;
    .end local v3    # "filteredPackages":[Ljava/lang/String;
    :cond_62
    return-void
.end method

.method private backupNowPackages(ILjava/util/List;ZI)V
    .registers 12
    .param p1, "userId"    # I
    .param p3, "nonIncrementalBackup"    # Z
    .param p4, "monitorState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 461
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 462
    .local v0, "flags":I
    if-eqz p3, :cond_5

    .line 463
    or-int/lit8 v0, v0, 0x1

    .line 466
    :cond_5
    :try_start_5
    new-instance v4, Lcom/android/commands/bmgr/Bmgr$BackupObserver;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/android/commands/bmgr/Bmgr$BackupObserver;-><init>(Lcom/android/commands/bmgr/Bmgr$BackupObserver-IA;)V

    .line 468
    .local v4, "observer":Lcom/android/commands/bmgr/Bmgr$BackupObserver;
    if-eqz p4, :cond_1a

    .line 469
    new-instance v2, Lcom/android/commands/bmgr/Bmgr$BackupMonitor;

    const/4 v3, 0x2

    if-ne p4, v3, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    :goto_15
    invoke-direct {v2, v3, v1}, Lcom/android/commands/bmgr/Bmgr$BackupMonitor;-><init>(ZLcom/android/commands/bmgr/Bmgr$BackupMonitor-IA;)V

    move-object v5, v2

    goto :goto_1b

    .line 470
    :cond_1a
    move-object v5, v1

    :goto_1b
    nop

    .line 471
    .local v5, "monitor":Lcom/android/commands/bmgr/Bmgr$BackupMonitor;
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    .line 473
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, [Ljava/lang/String;

    .line 471
    move v2, p1

    move v6, v0

    invoke-interface/range {v1 .. v6}, Landroid/app/backup/IBackupManager;->requestBackupForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v1

    .line 477
    .local v1, "err":I
    if-nez v1, :cond_37

    .line 479
    invoke-virtual {v4}, Lcom/android/commands/bmgr/Bmgr$BackupObserver;->waitForCompletion()V

    goto :goto_3e

    .line 481
    :cond_37
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Unable to run backup"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_3e} :catch_3f

    .line 485
    .end local v1    # "err":I
    .end local v4    # "observer":Lcom/android/commands/bmgr/Bmgr$BackupObserver;
    .end local v5    # "monitor":Lcom/android/commands/bmgr/Bmgr$BackupMonitor;
    :goto_3e
    goto :goto_43

    .line 483
    :catch_3f
    move-exception v1

    .line 484
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 486
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_43
    return-void
.end method

.method private static convertBackupStatusToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "errorCode"    # I

    .line 406
    sparse-switch p0, :sswitch_data_1e

    .line 425
    const-string v0, "Unknown error"

    return-object v0

    .line 408
    :sswitch_6
    const-string v0, "Success"

    return-object v0

    .line 414
    :sswitch_9
    const-string v0, "Transport error"

    return-object v0

    .line 416
    :sswitch_c
    const-string v0, "Transport rejected package because it wasn\'t able to process it at the time"

    return-object v0

    .line 419
    :sswitch_f
    const-string v0, "Agent error"

    return-object v0

    .line 421
    :sswitch_12
    const-string v0, "Size quota exceeded"

    return-object v0

    .line 410
    :sswitch_15
    const-string v0, "Backup is not allowed"

    return-object v0

    .line 412
    :sswitch_18
    const-string v0, "Package not found"

    return-object v0

    .line 423
    :sswitch_1b
    const-string v0, "Backup cancelled"

    return-object v0

    :sswitch_data_1e
    .sparse-switch
        -0x7d3 -> :sswitch_1b
        -0x7d2 -> :sswitch_18
        -0x7d1 -> :sswitch_15
        -0x3ed -> :sswitch_12
        -0x3eb -> :sswitch_f
        -0x3ea -> :sswitch_c
        -0x3e8 -> :sswitch_9
        0x0 -> :sswitch_6
    .end sparse-switch
.end method

.method private doActivateService(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 890
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 891
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 892
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 893
    return-void

    .line 897
    :cond_a
    :try_start_a
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 898
    .local v1, "activate":Z
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, p1, v1}, Landroid/app/backup/IBackupManager;->setBackupServiceActive(IZ)V

    .line 899
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backup service now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 901
    if-eqz v1, :cond_25

    const-string v4, "activated"

    goto :goto_27

    :cond_25
    const-string v4, "deactivated"

    :goto_27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 899
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_3c} :catch_3d

    .line 906
    .end local v1    # "activate":Z
    goto :goto_41

    .line 904
    :catch_3d
    move-exception v1

    .line 905
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 907
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_41
    return-void
.end method

.method private doActivated(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 247
    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup Manager currently "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    .line 248
    invoke-interface {v2, p1}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/commands/bmgr/Bmgr;->activatedToString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_23

    .line 251
    goto :goto_27

    .line 249
    :catch_23
    move-exception v0

    .line 250
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 253
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_27
    return-void
.end method

.method private doAutoRestore(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 222
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 224
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 225
    return-void

    .line 229
    :cond_a
    :try_start_a
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 230
    .local v1, "enable":Z
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, v1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V

    .line 231
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Auto restore is now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 233
    if-eqz v1, :cond_25

    const-string v4, "enabled"

    goto :goto_27

    :cond_25
    const-string v4, "disabled"

    :goto_27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_3c} :catch_3d

    .line 238
    .end local v1    # "enable":Z
    goto :goto_41

    .line 236
    :catch_3d
    move-exception v1

    .line 237
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 239
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_41
    return-void
.end method

.method private doBackup(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 297
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 299
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 300
    return-void

    .line 304
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1, v0}, Landroid/app/backup/IBackupManager;->dataChangedForUser(ILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 307
    goto :goto_14

    .line 305
    :catch_10
    move-exception v1

    .line 306
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 308
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method

.method private doBackupNow(I)V
    .registers 12
    .param p1, "userId"    # I

    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, "backupAll":Z
    const/4 v1, 0x0

    .line 492
    .local v1, "nonIncrementalBackup":Z
    const/4 v2, 0x0

    .line 493
    .local v2, "monitor":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 494
    .local v3, "allPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    :goto_8
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "pkg":Ljava/lang/String;
    if-eqz v4, :cond_4b

    .line 495
    const-string v4, "--all"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 496
    const/4 v0, 0x1

    goto :goto_8

    .line 497
    :cond_19
    const-string v4, "--non-incremental"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 498
    const/4 v1, 0x1

    goto :goto_8

    .line 499
    :cond_23
    const-string v4, "--incremental"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 500
    const/4 v1, 0x0

    goto :goto_8

    .line 501
    :cond_2d
    const-string v4, "--monitor"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 502
    const/4 v2, 0x1

    goto :goto_8

    .line 503
    :cond_37
    const-string v4, "--monitor-verbose"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 504
    const/4 v2, 0x2

    goto :goto_8

    .line 506
    :cond_41
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 507
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 511
    :cond_4b
    const-string v4, "non-"

    const-string v6, ""

    const-string v7, "Running "

    if-eqz v0, :cond_85

    .line 512
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_7d

    .line 513
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v1, :cond_67

    goto :goto_68

    :cond_67
    move-object v4, v6

    :goto_68
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "incremental backup for all packages."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 515
    invoke-direct {p0, p1, v1, v2}, Lcom/android/commands/bmgr/Bmgr;->backupNowAllPackages(IZI)V

    goto :goto_c4

    .line 517
    :cond_7d
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Provide only \'--all\' flag or list of packages."

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c4

    .line 519
    :cond_85
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_bd

    .line 520
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v1, :cond_99

    goto :goto_9a

    :cond_99
    move-object v4, v6

    :goto_9a
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "incremental backup for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 521
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " requested packages."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 520
    invoke-virtual {v8, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 522
    invoke-direct {p0, p1, v3, v1, v2}, Lcom/android/commands/bmgr/Bmgr;->backupNowPackages(ILjava/util/List;ZI)V

    goto :goto_c4

    .line 524
    :cond_bd
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Provide \'--all\' flag or list of packages."

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 526
    :goto_c4
    return-void
.end method

.method private doCancel(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 529
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "arg":Ljava/lang/String;
    const-string v1, "backups"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 532
    :try_start_c
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->cancelBackupsForUser(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    .line 535
    goto :goto_16

    .line 533
    :catch_12
    move-exception v1

    .line 534
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 536
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void

    .line 539
    :cond_17
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Unknown command."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 540
    return-void
.end method

.method private doEnable(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 270
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 272
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 273
    return-void

    .line 277
    :cond_a
    :try_start_a
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 278
    .local v1, "enable":Z
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, p1, v1}, Landroid/app/backup/IBackupManager;->setBackupEnabledForUser(IZ)V

    .line 279
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backup Manager now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->enableToString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_2f} :catch_35
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2f} :catch_30

    .line 285
    .end local v1    # "enable":Z
    goto :goto_34

    .line 283
    :catch_30
    move-exception v1

    .line 284
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 286
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_34
    return-void

    .line 280
    :catch_35
    move-exception v1

    .line 281
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 282
    return-void
.end method

.method private doEnabled(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->isBackupEnabledForUser(I)Z

    move-result v0

    .line 262
    .local v0, "isEnabled":Z
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Backup Manager currently "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 263
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->enableToString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 262
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_23

    .line 266
    .end local v0    # "isEnabled":Z
    goto :goto_27

    .line 264
    :catch_23
    move-exception v0

    .line 265
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 267
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_27
    return-void
.end method

.method private doFullTransportBackup(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 311
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Performing full transport backup"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 314
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 315
    .local v0, "allPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_c
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "pkg":Ljava/lang/String;
    if-eqz v1, :cond_17

    .line 316
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 318
    :cond_17
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_33

    .line 320
    :try_start_1d
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    .line 321
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 320
    invoke-interface {v1, p1, v3}, Landroid/app/backup/IBackupManager;->fullTransportBackupForUser(I[Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2e} :catch_2f

    .line 324
    goto :goto_33

    .line 322
    :catch_2f
    move-exception v1

    .line 323
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 326
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_33
    :goto_33
    return-void
.end method

.method private doInit(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 638
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 640
    .local v0, "transports":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_5
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "transport":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 641
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 643
    :cond_10
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_1a

    .line 644
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 645
    return-void

    .line 648
    :cond_1a
    new-instance v1, Lcom/android/commands/bmgr/Bmgr$InitObserver;

    invoke-direct {v1, p0}, Lcom/android/commands/bmgr/Bmgr$InitObserver;-><init>(Lcom/android/commands/bmgr/Bmgr;)V

    .line 650
    .local v1, "observer":Lcom/android/commands/bmgr/Bmgr$InitObserver;
    :try_start_1f
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initializing transports: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 651
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    .line 652
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 651
    invoke-interface {v3, p1, v4, v1}, Landroid/app/backup/IBackupManager;->initializeTransportsForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    .line 653
    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v3, v4}, Lcom/android/commands/bmgr/Bmgr$InitObserver;->waitForCompletion(J)V

    .line 654
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initialization result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/commands/bmgr/Bmgr$InitObserver;->result:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_67} :catch_68

    .line 657
    goto :goto_6c

    .line 655
    :catch_68
    move-exception v3

    .line 656
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 658
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_6c
    return-void
.end method

.method private doList(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 661
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, "arg":Ljava/lang/String;
    const-string v1, "transports"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 663
    invoke-direct {p0, p1}, Lcom/android/commands/bmgr/Bmgr;->doListTransports(I)V

    .line 664
    return-void

    .line 669
    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v2}, Landroid/app/backup/IBackupManager;->beginRestoreSessionForUser(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    .line 670
    if-nez v1, :cond_34

    .line 671
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Could not get restore session for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 672
    return-void

    .line 675
    :cond_34
    const-string v1, "sets"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 676
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doListRestoreSets()V

    .line 679
    :cond_3f
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v1}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_44} :catch_45

    .line 682
    goto :goto_49

    .line 680
    :catch_45
    move-exception v1

    .line 681
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 683
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_49
    return-void
.end method

.method private doListRestoreSets()V
    .registers 5

    .line 714
    :try_start_0
    new-instance v0, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;

    invoke-direct {v0, p0}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;-><init>(Lcom/android/commands/bmgr/Bmgr;)V

    .line 716
    .local v0, "observer":Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/app/backup/IRestoreSession;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v1

    .line 717
    .local v1, "err":I
    if-eqz v1, :cond_16

    .line 718
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Unable to request restore sets"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1e

    .line 720
    :cond_16
    invoke-virtual {v0}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V

    .line 721
    iget-object v2, v0, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->sets:[Landroid/app/backup/RestoreSet;

    invoke-direct {p0, v2}, Lcom/android/commands/bmgr/Bmgr;->printRestoreSets([Landroid/app/backup/RestoreSet;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 726
    .end local v0    # "observer":Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    .end local v1    # "err":I
    :goto_1e
    goto :goto_30

    .line 723
    :catch_1f
    move-exception v0

    .line 724
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 725
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error: Could not access the backup transport.  Is the system running?"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 727
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_30
    return-void
.end method

.method private doListTransports(I)V
    .registers 11
    .param p1, "userId"    # I

    .line 686
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, "arg":Ljava/lang/String;
    :try_start_4
    const-string v1, "-c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 690
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->listAllTransportComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object v1

    array-length v3, v1

    :goto_14
    if-ge v2, v3, :cond_24

    aget-object v4, v1, v2

    .line 691
    .local v4, "transport":Landroid/content/ComponentName;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 690
    .end local v4    # "transport":Landroid/content/ComponentName;
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 693
    :cond_24
    return-void

    .line 696
    :cond_25
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->getCurrentTransportForUser(I)Ljava/lang/String;

    move-result-object v1

    .line 697
    .local v1, "current":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v3, p1}, Landroid/app/backup/IBackupManager;->listAllTransportsForUser(I)[Ljava/lang/String;

    move-result-object v3

    .line 698
    .local v3, "transports":[Ljava/lang/String;
    if-eqz v3, :cond_61

    array-length v4, v3

    if-nez v4, :cond_37

    goto :goto_61

    .line 703
    :cond_37
    array-length v4, v3

    :goto_38
    if-ge v2, v4, :cond_60

    aget-object v5, v3, v2

    .line 704
    .local v5, "t":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    const-string v6, "  * "

    goto :goto_47

    :cond_45
    const-string v6, "    "

    .line 705
    .local v6, "pad":Ljava/lang/String;
    :goto_47
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 703
    .end local v5    # "t":Ljava/lang/String;
    .end local v6    # "pad":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 709
    .end local v1    # "current":Ljava/lang/String;
    .end local v3    # "transports":[Ljava/lang/String;
    :cond_60
    goto :goto_6d

    .line 699
    .restart local v1    # "current":Ljava/lang/String;
    .restart local v3    # "transports":[Ljava/lang/String;
    :cond_61
    :goto_61
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "No transports available."

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_68} :catch_69

    .line 700
    return-void

    .line 707
    .end local v1    # "current":Ljava/lang/String;
    .end local v3    # "transports":[Ljava/lang/String;
    :catch_69
    move-exception v1

    .line 708
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 710
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_6d
    return-void
.end method

.method private doPrintWhitelist()V
    .registers 6

    .line 878
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->getTransportWhitelist()[Ljava/lang/String;

    move-result-object v0

    .line 879
    .local v0, "whitelist":[Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 880
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 881
    .local v3, "transport":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_17

    .line 880
    .end local v3    # "transport":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 886
    .end local v0    # "whitelist":[Ljava/lang/String;
    :cond_16
    goto :goto_1b

    .line 884
    :catch_17
    move-exception v0

    .line 885
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 887
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method private doRestore(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 788
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 790
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 791
    return-void

    .line 794
    :cond_a
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_3e

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_3e

    .line 799
    :cond_1b
    const/16 v1, 0x10

    :try_start_1d
    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    .line 800
    .local v1, "token":J
    const/4 v3, 0x0

    .line 801
    .local v3, "filter":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_22
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    if-eqz v4, :cond_35

    .line 802
    if-nez v3, :cond_31

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v3, v4

    .line 803
    :cond_31
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 806
    :cond_35
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/commands/bmgr/Bmgr;->doRestoreAll(IJLjava/util/HashSet;)V
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_38} :catch_39

    .line 810
    .end local v1    # "token":J
    .end local v3    # "filter":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_41

    .line 807
    :catch_39
    move-exception v1

    .line 808
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 809
    return-void

    .line 796
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_3e
    :goto_3e
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doRestorePackage(Ljava/lang/String;)V

    .line 812
    :goto_41
    return-void
.end method

.method private doRestoreAll(IJLjava/util/HashSet;)V
    .registers 25
    .param p1, "userId"    # I
    .param p2, "token"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 820
    .local p4, "filter":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v9, p2

    move-object/from16 v11, p4

    new-instance v0, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;

    invoke-direct {v0, v1}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;-><init>(Lcom/android/commands/bmgr/Bmgr;)V

    move-object v12, v0

    .line 823
    .local v12, "observer":Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    const/4 v0, 0x0

    .line 824
    .local v0, "didRestore":Z
    :try_start_f
    iget-object v3, v1, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4, v4}, Landroid/app/backup/IBackupManager;->beginRestoreSessionForUser(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v3

    iput-object v3, v1, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    .line 825
    if-nez v3, :cond_33

    .line 826
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Could not get restore session for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 827
    return-void

    .line 829
    :cond_33
    const/4 v5, 0x0

    .line 831
    .local v5, "sets":[Landroid/app/backup/RestoreSet;
    invoke-interface {v3, v12, v4}, Landroid/app/backup/IRestoreSession;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v3

    move v13, v3

    .line 832
    .local v13, "err":I
    if-nez v13, :cond_a4

    .line 833
    invoke-virtual {v12}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V

    .line 834
    iget-object v3, v12, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->sets:[Landroid/app/backup/RestoreSet;

    move-object v14, v3

    .line 835
    .end local v5    # "sets":[Landroid/app/backup/RestoreSet;
    .local v14, "sets":[Landroid/app/backup/RestoreSet;
    if-eqz v14, :cond_a3

    .line 836
    array-length v3, v14

    const/4 v15, 0x0

    move v5, v15

    :goto_46
    if-ge v5, v3, :cond_a3

    aget-object v6, v14, v5

    move-object v8, v6

    .line 837
    .local v8, "s":Landroid/app/backup/RestoreSet;
    iget-wide v6, v8, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v6, v6, v9

    if-nez v6, :cond_9e

    .line 838
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scheduling restore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v8, Landroid/app/backup/RestoreSet;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 839
    const/16 v16, 0x1

    if-nez v11, :cond_7c

    .line 840
    iget-object v3, v1, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v3, v9, v10, v12, v4}, Landroid/app/backup/IRestoreSession;->restoreAll(JLandroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v3

    if-nez v3, :cond_79

    move/from16 v15, v16

    :cond_79
    move v0, v15

    move-object v5, v14

    goto :goto_a4

    .line 842
    :cond_7c
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    .line 843
    .local v7, "names":[Ljava/lang/String;
    invoke-virtual {v11, v7}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 844
    iget-object v3, v1, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    const/16 v17, 0x0

    move-wide/from16 v4, p2

    move-object v6, v12

    move-object/from16 v18, v7

    .end local v7    # "names":[Ljava/lang/String;
    .local v18, "names":[Ljava/lang/String;
    move-object/from16 v19, v8

    .end local v8    # "s":Landroid/app/backup/RestoreSet;
    .local v19, "s":Landroid/app/backup/RestoreSet;
    move-object/from16 v8, v17

    invoke-interface/range {v3 .. v8}, Landroid/app/backup/IRestoreSession;->restorePackages(JLandroid/app/backup/IRestoreObserver;[Ljava/lang/String;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v3

    if-nez v3, :cond_9b

    move/from16 v15, v16

    :cond_9b
    move v0, v15

    .line 847
    .end local v18    # "names":[Ljava/lang/String;
    move-object v5, v14

    goto :goto_a4

    .line 837
    .end local v19    # "s":Landroid/app/backup/RestoreSet;
    .restart local v8    # "s":Landroid/app/backup/RestoreSet;
    :cond_9e
    move-object/from16 v19, v8

    .line 836
    .end local v8    # "s":Landroid/app/backup/RestoreSet;
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    .line 852
    :cond_a3
    move-object v5, v14

    .end local v14    # "sets":[Landroid/app/backup/RestoreSet;
    .restart local v5    # "sets":[Landroid/app/backup/RestoreSet;
    :cond_a4
    :goto_a4
    if-nez v0, :cond_be

    .line 853
    if-eqz v5, :cond_b7

    array-length v3, v5

    if-nez v3, :cond_ac

    goto :goto_b7

    .line 856
    :cond_ac
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "No matching restore set token.  Available sets:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 857
    invoke-direct {v1, v5}, Lcom/android/commands/bmgr/Bmgr;->printRestoreSets([Landroid/app/backup/RestoreSet;)V

    goto :goto_be

    .line 854
    :cond_b7
    :goto_b7
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "No available restore sets; no restore performed"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 863
    :cond_be
    :goto_be
    if-eqz v0, :cond_c3

    .line 864
    invoke-virtual {v12}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V

    .line 868
    :cond_c3
    iget-object v3, v1, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v3}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V

    .line 870
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "done"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_cf
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_cf} :catch_d0

    .line 873
    .end local v0    # "didRestore":Z
    .end local v5    # "sets":[Landroid/app/backup/RestoreSet;
    .end local v13    # "err":I
    goto :goto_d4

    .line 871
    :catch_d0
    move-exception v0

    .line 872
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {v1, v0}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 874
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_d4
    return-void
.end method

.method private doRestorePackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 815
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The syntax \'restore <package>\' is no longer supported, please use "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 816
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\'restore <token> <package>\'."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 817
    return-void
.end method

.method private doTransport(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 544
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "which":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 546
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 547
    return-void

    .line 550
    :cond_a
    const-string v1, "-c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 551
    invoke-direct {p0, p1}, Lcom/android/commands/bmgr/Bmgr;->doTransportByComponent(I)V

    .line 552
    return-void

    .line 555
    :cond_16
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1, v0}, Landroid/app/backup/IBackupManager;->selectBackupTransportForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "old":Ljava/lang/String;
    if-nez v1, :cond_3d

    .line 557
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown transport \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' specified; no changes made."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_65

    .line 560
    :cond_3d
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (formerly "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_65} :catch_66

    .line 565
    .end local v0    # "which":Ljava/lang/String;
    .end local v1    # "old":Ljava/lang/String;
    :goto_65
    goto :goto_6a

    .line 563
    :catch_66
    move-exception v0

    .line 564
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 566
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_6a
    return-void
.end method

.method private doTransportByComponent(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 569
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "which":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 571
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 572
    return-void

    .line 575
    :cond_a
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 578
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_10
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    .line 580
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    new-instance v4, Lcom/android/commands/bmgr/Bmgr$1;

    invoke-direct {v4, p0, v1}, Lcom/android/commands/bmgr/Bmgr$1;-><init>(Lcom/android/commands/bmgr/Bmgr;Ljava/util/concurrent/CountDownLatch;)V

    .line 578
    invoke-interface {v2, p1, v3, v4}, Landroid/app/backup/IBackupManager;->selectBackupTransportAsyncForUser(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1e} :catch_2c

    .line 597
    nop

    .line 600
    :try_start_1f
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_22} :catch_23

    .line 603
    goto :goto_2b

    .line 601
    :catch_23
    move-exception v2

    .line 602
    .local v2, "e":Ljava/lang/InterruptedException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Operation interrupted."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 604
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_2b
    return-void

    .line 594
    :catch_2c
    move-exception v2

    .line 595
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v2}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 596
    return-void
.end method

.method private doWipe(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 607
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "transport":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 609
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 610
    return-void

    .line 613
    :cond_a
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v1

    .line 614
    .local v1, "pkg":Ljava/lang/String;
    if-nez v1, :cond_14

    .line 615
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 616
    return-void

    .line 620
    :cond_14
    :try_start_14
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, p1, v0, v1}, Landroid/app/backup/IBackupManager;->clearBackupDataForUser(ILjava/lang/String;Ljava/lang/String;)V

    .line 621
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wiped backup data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_3b} :catch_3c

    .line 624
    goto :goto_40

    .line 622
    :catch_3c
    move-exception v2

    .line 623
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v2}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 625
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_40
    return-void
.end method

.method private enableToString(Z)Ljava/lang/String;
    .registers 3
    .param p1, "enabled"    # Z

    .line 256
    if-eqz p1, :cond_5

    const-string v0, "enabled"

    goto :goto_7

    :cond_5
    const-string v0, "disabled"

    :goto_7
    return-object v0
.end method

.method private static eventCategoryToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "eventCategory"    # I

    .line 1070
    packed-switch p0, :pswitch_data_10

    .line 1078
    const-string v0, "UNKNOWN_CATEGORY"

    return-object v0

    .line 1076
    :pswitch_6
    const-string v0, "BACKUP_MANAGER_POLICY"

    return-object v0

    .line 1074
    :pswitch_9
    const-string v0, "AGENT"

    return-object v0

    .line 1072
    :pswitch_c
    const-string v0, "TRANSPORT"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static eventIdToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "eventId"    # I

    .line 1083
    packed-switch p0, :pswitch_data_82

    .line 1167
    :pswitch_3
    const-string v0, "UNKNOWN_ID"

    return-object v0

    .line 1165
    :pswitch_6
    const-string v0, "TRANSPORT_IS_NULL"

    return-object v0

    .line 1163
    :pswitch_9
    const-string v0, "NO_PACKAGES"

    return-object v0

    .line 1161
    :pswitch_c
    const-string v0, "WIDGET_UNKNOWN_VERSION"

    return-object v0

    .line 1159
    :pswitch_f
    const-string v0, "WIDGET_METADATA_MISMATCH"

    return-object v0

    .line 1157
    :pswitch_12
    const-string v0, "CORRUPT_MANIFEST"

    return-object v0

    .line 1155
    :pswitch_15
    const-string v0, "FULL_RESTORE_TIMEOUT"

    return-object v0

    .line 1153
    :pswitch_18
    const-string v0, "UNKNOWN_VERSION"

    return-object v0

    .line 1151
    :pswitch_1b
    const-string v0, "EXPECTED_DIFFERENT_PACKAGE"

    return-object v0

    .line 1149
    :pswitch_1e
    const-string v0, "MISSING_SIGNATURE"

    return-object v0

    .line 1147
    :pswitch_21
    const-string v0, "CANNOT_RESTORE_WITHOUT_APK"

    return-object v0

    .line 1145
    :pswitch_24
    const-string v0, "APK_NOT_INSTALLED"

    return-object v0

    .line 1143
    :pswitch_27
    const-string v0, "FULL_RESTORE_ALLOW_BACKUP_FALSE"

    return-object v0

    .line 1141
    :pswitch_2a
    const-string v0, "SYSTEM_APP_NO_AGENT"

    return-object v0

    .line 1139
    :pswitch_2d
    const-string v0, "FULL_RESTORE_SIGNATURE_MISMATCH"

    return-object v0

    .line 1137
    :pswitch_30
    const-string v0, "VERSION_OF_BACKUP_OLDER"

    return-object v0

    .line 1135
    :pswitch_33
    const-string v0, "VERSIONS_MATCH"

    return-object v0

    .line 1133
    :pswitch_36
    const-string v0, "RESTORE_ANY_VERSION"

    return-object v0

    .line 1131
    :pswitch_39
    const-string v0, "KEY_VALUE_RESTORE_TIMEOUT"

    return-object v0

    .line 1129
    :pswitch_3c
    const-string v0, "CANT_FIND_AGENT"

    return-object v0

    .line 1127
    :pswitch_3f
    const-string v0, "SIGNATURE_MISMATCH"

    return-object v0

    .line 1125
    :pswitch_42
    const-string v0, "APP_HAS_NO_AGENT"

    return-object v0

    .line 1123
    :pswitch_45
    const-string v0, "RESTORE_VERSION_HIGHER"

    return-object v0

    .line 1121
    :pswitch_48
    const-string v0, "PACKAGE_NOT_PRESENT"

    return-object v0

    .line 1119
    :pswitch_4b
    const-string v0, "LOST_TRANSPORT"

    return-object v0

    .line 1117
    :pswitch_4e
    const-string v0, "PM_AGENT_HAS_NO_METADATA"

    return-object v0

    .line 1115
    :pswitch_51
    const-string v0, "NO_PM_METADATA_RECEIVED"

    return-object v0

    .line 1113
    :pswitch_54
    const-string v0, "NO_RESTORE_METADATA_AVAILABLE"

    return-object v0

    .line 1111
    :pswitch_57
    const-string v0, "KEY_VALUE_BACKUP_CANCEL"

    return-object v0

    .line 1109
    :pswitch_5a
    const-string v0, "EXCEPTION_FULL_BACKUP"

    return-object v0

    .line 1107
    :pswitch_5d
    const-string v0, "QUOTA_HIT_PREFLIGHT"

    return-object v0

    .line 1105
    :pswitch_60
    const-string v0, "ERROR_PREFLIGHT"

    return-object v0

    .line 1103
    :pswitch_63
    const-string v0, "PACKAGE_TRANSPORT_NOT_PRESENT"

    return-object v0

    .line 1101
    :pswitch_66
    const-string v0, "DEVICE_NOT_PROVISIONED"

    return-object v0

    .line 1099
    :pswitch_69
    const-string v0, "BACKUP_DISABLED"

    return-object v0

    .line 1097
    :pswitch_6c
    const-string v0, "PACKAGE_NOT_FOUND"

    return-object v0

    .line 1095
    :pswitch_6f
    const-string v0, "PACKAGE_STOPPED"

    return-object v0

    .line 1093
    :pswitch_72
    const-string v0, "PACKAGE_KEY_VALUE_PARTICIPANT"

    return-object v0

    .line 1091
    :pswitch_75
    const-string v0, "PACKAGE_INELIGIBLE"

    return-object v0

    .line 1089
    :pswitch_78
    const-string v0, "NO_DATA_TO_SEND"

    return-object v0

    .line 1087
    :pswitch_7b
    const-string v0, "ILLEGAL_KEY"

    return-object v0

    .line 1085
    :pswitch_7e
    const-string v0, "FULL_BACKUP_CANCEL"

    return-object v0

    nop

    :pswitch_data_82
    .packed-switch 0x4
        :pswitch_7e
        :pswitch_7b
        :pswitch_3
        :pswitch_78
        :pswitch_3
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_3
        :pswitch_5d
        :pswitch_5a
        :pswitch_3
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_3
        :pswitch_3
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private handleRemoteException(Landroid/os/RemoteException;)V
    .registers 4
    .param p1, "e"    # Landroid/os/RemoteException;

    .line 203
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 204
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method private isBackupActive(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 209
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v1

    if-nez v1, :cond_22

    .line 210
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Backup Manager is not activated for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_21} :catch_25

    .line 211
    return v0

    .line 216
    :cond_22
    nop

    .line 218
    const/4 v0, 0x1

    return v0

    .line 213
    :catch_25
    move-exception v1

    .line 214
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 215
    return v0
.end method

.method static synthetic lambda$backupNowAllPackages$0(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "p"    # Landroid/content/pm/PackageInfo;

    .line 446
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$backupNowAllPackages$1(I)[Ljava/lang/String;
    .registers 2
    .param p0, "x$0"    # I

    .line 446
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4
    .param p0, "args"    # [Ljava/lang/String;

    .line 90
    :try_start_0
    new-instance v0, Lcom/android/commands/bmgr/Bmgr;

    invoke-direct {v0}, Lcom/android/commands/bmgr/Bmgr;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/commands/bmgr/Bmgr;->run([Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 94
    goto :goto_14

    .line 91
    :catch_9
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Exception caught:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14
    return-void
.end method

.method private nextArg()Ljava/lang/String;
    .registers 4

    .line 910
    iget v0, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mArgs:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_9

    .line 911
    const/4 v0, 0x0

    return-object v0

    .line 913
    :cond_9
    aget-object v1, v1, v0

    .line 914
    .local v1, "arg":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    .line 915
    return-object v1
.end method

.method private parseUserId()I
    .registers 3

    .line 919
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 920
    .local v0, "arg":Ljava/lang/String;
    const-string v1, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 921
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 923
    :cond_15
    iget v1, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    .line 924
    const/4 v1, 0x0

    return v1
.end method

.method private printRestoreSets([Landroid/app/backup/RestoreSet;)V
    .registers 9
    .param p1, "sets"    # [Landroid/app/backup/RestoreSet;

    .line 730
    if-eqz p1, :cond_3a

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_3a

    .line 734
    :cond_6
    array-length v0, p1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_39

    aget-object v2, p1, v1

    .line 735
    .local v2, "s":Landroid/app/backup/RestoreSet;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Landroid/app/backup/RestoreSet;->token:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/backup/RestoreSet;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 734
    .end local v2    # "s":Landroid/app/backup/RestoreSet;
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 737
    :cond_39
    return-void

    .line 731
    :cond_3a
    :goto_3a
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "No restore sets"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method private static showUsage()V
    .registers 3

    .line 929
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage: bmgr [--user <userId>] [backup|restore|list|transport|run]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 930
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr backup PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 931
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr enable BOOL"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 932
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr enabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 933
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr list transports [-c]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 934
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr list sets"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 935
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr transport WHICH|-c WHICH_COMPONENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 936
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr restore TOKEN"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 937
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr restore TOKEN PACKAGE..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 938
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr run"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 939
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr wipe TRANSPORT PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 940
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr fullbackup PACKAGE..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 941
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr backupnow [--monitor|--monitor-verbose] --all|PACKAGE..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 942
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr cancel backups"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 943
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr init TRANSPORT..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 944
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr activate BOOL"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 945
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr activated"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 946
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr autorestore BOOL"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 947
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 948
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'--user\' option specifies the user on which the operation is run."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 949
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "It must be the first argument before the operation."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 950
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The default value is 0 which is the system user."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 951
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 952
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'backup\' command schedules a backup pass for the named package."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 953
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Note that the backup pass will effectively be a no-op if the package"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 954
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "does not actually have changed data to store."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 955
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 956
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'enable\' command enables or disables the entire backup mechanism."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 957
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "If the argument is \'true\' it will be enabled, otherwise it will be"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 958
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "disabled.  When disabled, neither backup or restore operations will"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 959
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "be performed."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 960
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 961
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'enabled\' command reports the current enabled/disabled state of"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 962
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "the backup mechanism."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 963
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 964
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'list transports\' command reports the names of the backup transports"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 965
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "BackupManager is currently bound to. These names can be passed as arguments"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 966
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "to the \'transport\' and \'wipe\' commands.  The currently active transport"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 967
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "is indicated with a \'*\' character. If -c flag is used, all available"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 968
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "transport components on the device are listed. These can be used with"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 969
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "the component variant of \'transport\' command."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 970
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 971
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'list sets\' command reports the token and name of each restore set"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 972
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "available to the device via the currently active transport."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 973
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 974
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'transport\' command designates the named transport as the currently"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 975
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "active one.  This setting is persistent across reboots. If -c flag is"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 976
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "specified, the following string is treated as a component name."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 977
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 978
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'restore\' command when given just a restore token initiates a full-system"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 979
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "restore operation from the currently active transport.  It will deliver"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 980
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "the restore set designated by the TOKEN argument to each application"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 981
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "that had contributed data to that restore set."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 982
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 983
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'restore\' command when given a token and one or more package names"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 984
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "initiates a restore operation of just those given packages from the restore"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 985
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "set designated by the TOKEN argument.  It is effectively the same as the"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 986
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "\'restore\' operation supplying only a token, but applies a filter to the"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 987
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "set of applications to be restored."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 988
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 989
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'run\' command causes any scheduled backup operation to be initiated"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 990
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "immediately, without the usual waiting period for batching together"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 991
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "data changes."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 992
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 993
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'wipe\' command causes all backed-up data for the given package to be"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 994
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "erased from the given transport\'s storage.  The next backup operation"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 995
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "that the given application performs will rewrite its entire data set."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 996
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Transport names to use here are those reported by \'list transports\'."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 997
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 998
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'fullbackup\' command induces a full-data stream backup for one or more"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 999
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "packages.  The data is sent via the currently active transport."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1000
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1001
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'backupnow\' command runs an immediate backup for one or more packages."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1002
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "    --all flag runs backup for all eligible packages."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1003
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "    --monitor flag prints monitor events."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1004
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "    --monitor-verbose flag prints monitor events with all keys."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1005
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "For each package it will run key/value or full data backup "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1006
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "depending on the package\'s manifest declarations."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1007
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The data is sent via the currently active transport."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1008
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1009
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'cancel backups\' command cancels all running backups."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1010
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1011
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'init\' command initializes the given transports, wiping all data"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1012
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "from their backing data stores."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1013
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1014
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'activate\' command activates or deactivates the backup service."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1015
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "If the argument is \'true\' it will be activated, otherwise it will be"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1016
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "deactivated. When deactivated, the service will not be running and no"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1017
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "operations can be performed until activation."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1018
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1019
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The \'activated\' command reports the current activated/deactivated"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1020
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "state of the backup mechanism."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1021
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1022
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'autorestore\' command enables or disables automatic restore when"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1023
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "a new package is installed."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1024
    return-void
.end method


# virtual methods
.method doRun(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->backupNowForUser(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 293
    goto :goto_a

    .line 291
    :catch_6
    move-exception v0

    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 294
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public run([Ljava/lang/String;)V
    .registers 6
    .param p1, "args"    # [Ljava/lang/String;

    .line 98
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_8

    .line 99
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 100
    return-void

    .line 103
    :cond_8
    iput-object p1, p0, Lcom/android/commands/bmgr/Bmgr;->mArgs:[Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    .line 105
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->parseUserId()I

    move-result v0

    .line 106
    .local v0, "userId":I
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "op":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bmgr"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    if-nez v2, :cond_43

    .line 110
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    return-void

    .line 114
    :cond_43
    const-string v2, "activate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 115
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doActivateService(I)V

    .line 116
    return-void

    .line 119
    :cond_4f
    const-string v2, "activated"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 120
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doActivated(I)V

    .line 121
    return-void

    .line 124
    :cond_5b
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->isBackupActive(I)Z

    move-result v2

    if-nez v2, :cond_62

    .line 125
    return-void

    .line 128
    :cond_62
    const-string v2, "autorestore"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 129
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doAutoRestore(I)V

    .line 130
    return-void

    .line 133
    :cond_6e
    const-string v2, "enabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 134
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doEnabled(I)V

    .line 135
    return-void

    .line 138
    :cond_7a
    const-string v2, "enable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 139
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doEnable(I)V

    .line 140
    return-void

    .line 143
    :cond_86
    const-string v2, "run"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doRun(I)V

    .line 145
    return-void

    .line 148
    :cond_92
    const-string v2, "backup"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 149
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doBackup(I)V

    .line 150
    return-void

    .line 153
    :cond_9e
    const-string v2, "init"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 154
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doInit(I)V

    .line 155
    return-void

    .line 158
    :cond_aa
    const-string v2, "list"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 159
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doList(I)V

    .line 160
    return-void

    .line 163
    :cond_b6
    const-string v2, "restore"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 164
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doRestore(I)V

    .line 165
    return-void

    .line 168
    :cond_c2
    const-string v2, "transport"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 169
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doTransport(I)V

    .line 170
    return-void

    .line 173
    :cond_ce
    const-string v2, "wipe"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 174
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doWipe(I)V

    .line 175
    return-void

    .line 178
    :cond_da
    const-string v2, "fullbackup"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 179
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doFullTransportBackup(I)V

    .line 180
    return-void

    .line 183
    :cond_e6
    const-string v2, "backupnow"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 184
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doBackupNow(I)V

    .line 185
    return-void

    .line 188
    :cond_f2
    const-string v2, "cancel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fe

    .line 189
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doCancel(I)V

    .line 190
    return-void

    .line 193
    :cond_fe
    const-string v2, "whitelist"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10a

    .line 194
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doPrintWhitelist()V

    .line 195
    return-void

    .line 198
    :cond_10a
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Unknown command"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 200
    return-void
.end method
