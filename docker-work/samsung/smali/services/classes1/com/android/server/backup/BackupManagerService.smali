.class public Lcom/android/server/backup/BackupManagerService;
.super Landroid/app/backup/IBackupManager$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$Lifecycle;
    }
.end annotation


# static fields
.field public static final BACKUP_ACTIVATED_FILENAME:Ljava/lang/String; = "backup-activated"

.field public static final BACKUP_DISABLE_PROPERTY:Ljava/lang/String; = "ro.backup.disable"

.field public static final BACKUP_SUPPRESS_FILENAME:Ljava/lang/String; = "backup-suppress"

.field public static final BACKUP_THREAD:Ljava/lang/String; = "backup"

.field public static final DEBUG:Z = true

.field public static final DEBUG_SCHEDULING:Z = true

.field public static final DUMP_RUNNING_USERS_MESSAGE:Ljava/lang/String; = "Backup Manager is running for users:"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MORE_DEBUG:Z = false

.field public static final REMEMBER_ACTIVATED_FILENAME:Ljava/lang/String; = "backup-remember-activated"

.field public static final TAG:Ljava/lang/String; = "BackupManagerService"

.field public static sInstance:Lcom/android/server/backup/BackupManagerService;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mGlobalDisable:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mStateLock:Ljava/lang/Object;

.field public final mTransportWhitelist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

.field public final mUserServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/UserBackupManagerService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$s6pWhYaPzmo2Z59Zyczn5lsJYNE(Lcom/android/server/backup/BackupManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->lambda$onUnlockUser$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zqr3hjCRtBLaOJWzm-mfphlQw0o(Lcom/android/server/backup/BackupManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->lambda$onStopUser$1(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/backup/BackupManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monRemovedNonSystemUser(Lcom/android/server/backup/BackupManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->onRemovedNonSystemUser(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 162
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;-><init>(Landroid/content/Context;Landroid/util/SparseArray;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/SparseArray;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/UserBackupManagerService;",
            ">;)V"
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Landroid/app/backup/IBackupManager$Stub;-><init>()V

    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mStateLock:Ljava/lang/Object;

    .line 149
    new-instance v0, Lcom/android/server/backup/BackupManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$1;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 167
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->isBackupDisabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    .line 169
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "backup"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 171
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 172
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mHandler:Landroid/os/Handler;

    .line 173
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mUserManager:Landroid/os/UserManager;

    .line 174
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    .line 176
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/SystemConfig;->getBackupTransportWhitelist()Landroid/util/ArraySet;

    move-result-object p2

    if-nez p2, :cond_46

    .line 177
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p2

    :cond_46
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    .line 178
    new-instance p0, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.USER_REMOVED"

    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static getInstance()Lcom/android/server/backup/BackupManagerService;
    .registers 2

    .line 132
    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/server/backup/BackupManagerService;

    return-object v0
.end method

.method private synthetic lambda$onStopUser$1(I)V
    .registers 4

    .line 402
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    if-nez v0, :cond_1d

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopping service for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->stopServiceForUser(I)V

    :cond_1d
    return-void
.end method

.method private synthetic lambda$onUnlockUser$0(I)V
    .registers 2

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->startServiceForUser(I)V

    return-void
.end method


# virtual methods
.method public acknowledgeAdbBackupOrRestore(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .registers 14

    const-string v0, "acknowledgeAdbBackupOrRestore()"

    .line 903
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    if-eqz v1, :cond_10

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 906
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/UserBackupManagerService;->acknowledgeAdbBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    :cond_10
    return-void
.end method

.method public acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 953
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 952
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/backup/BackupManagerService;->acknowledgeFullBackupOrRestoreForUser(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    return-void
.end method

.method public acknowledgeFullBackupOrRestoreForUser(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 885
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 886
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/backup/BackupManagerService;->acknowledgeAdbBackupOrRestore(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    :cond_9
    return-void
.end method

.method public final activateBackupForUserLocked(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStateLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_a

    .line 276
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getSuppressFileForSystemUser()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->deleteFile(Ljava/io/File;)V

    goto :goto_11

    .line 278
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getActivatedFileForNonSystemUser(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->createFile(Ljava/io/File;)V

    :goto_11
    return-void
.end method

.method public adbBackup(ILandroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V
    .registers 24

    .line 817
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "adbBackup()"

    move-object v1, p0

    move v2, p1

    .line 821
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    if-eqz v1, :cond_26

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    .line 824
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/backup/UserBackupManagerService;->adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method public adbRestore(ILandroid/os/ParcelFileDescriptor;)V
    .registers 4

    .line 865
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "adbRestore()"

    .line 869
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 872
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->adbRestore(Landroid/os/ParcelFileDescriptor;)V

    :cond_12
    return-void
.end method

.method public agentConnected(ILjava/lang/String;Landroid/os/IBinder;)V
    .registers 5

    const-string v0, "agentConnected()"

    .line 621
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 624
    invoke-virtual {p0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_b
    return-void
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 612
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->agentConnectedForUser(ILjava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public agentConnectedForUser(ILjava/lang/String;Landroid/os/IBinder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 605
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 606
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->agentConnected(ILjava/lang/String;Landroid/os/IBinder;)V

    :cond_9
    return-void
.end method

.method public agentDisconnected(ILjava/lang/String;)V
    .registers 4

    const-string v0, "agentDisconnected()"

    .line 646
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 649
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->agentDisconnected(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 637
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->agentDisconnectedForUser(ILjava/lang/String;)V

    return-void
.end method

.method public agentDisconnectedForUser(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 630
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 631
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->agentDisconnected(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method public backupNow()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 782
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->backupNowForUser(I)V

    return-void
.end method

.method public backupNow(I)V
    .registers 3

    const-string v0, "backupNow()"

    .line 791
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 794
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->backupNow()V

    :cond_b
    return-void
.end method

.method public backupNowForUser(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 775
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 776
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->backupNow(I)V

    :cond_9
    return-void
.end method

.method public beginFullBackup(ILcom/android/server/backup/FullBackupJob;)Z
    .registers 5

    .line 1637
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const-string v0, "beginFullBackup()"

    .line 1641
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 1644
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method public beginRestoreSession(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .registers 5

    const-string v0, "beginRestoreSession()"

    .line 1385
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_e

    .line 1389
    :cond_a
    invoke-virtual {p0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object p0

    :goto_e
    return-object p0
.end method

.method public beginRestoreSessionForUser(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1373
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1374
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->beginRestoreSession(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public binderGetCallingUid()I
    .registers 1

    .line 197
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public binderGetCallingUserId()I
    .registers 1

    .line 193
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    return p0
.end method

.method public cancelBackups()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1512
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->cancelBackupsForUser(I)V

    return-void
.end method

.method public cancelBackups(I)V
    .registers 3

    const-string v0, "cancelBackups()"

    .line 1518
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1521
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->cancelBackups()V

    :cond_b
    return-void
.end method

.method public cancelBackupsForUser(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1505
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1506
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->cancelBackups(I)V

    :cond_9
    return-void
.end method

.method public clearBackupData(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "clearBackupData()"

    .line 589
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 592
    invoke-virtual {p0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 599
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->clearBackupDataForUser(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearBackupDataForUser(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 578
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 579
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->clearBackupData(ILjava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final createFile(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 236
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 237
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-nez p0, :cond_2e

    .line 238
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to create file "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    return-void
.end method

.method public dataChanged(ILjava/lang/String;)V
    .registers 4

    const-string v0, "dataChanged()"

    .line 545
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 548
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->dataChanged(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public dataChanged(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 535
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChangedForUser(ILjava/lang/String;)V

    return-void
.end method

.method public dataChangedForUser(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 528
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 529
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->dataChanged(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final deactivateBackupForUserLocked(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStateLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_a

    .line 261
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getSuppressFileForSystemUser()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->createFile(Ljava/io/File;)V

    goto :goto_11

    .line 263
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getActivatedFileForNonSystemUser(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->deleteFile(Ljava/io/File;)V

    :goto_11
    return-void
.end method

.method public final deleteFile(Ljava/io/File;)V
    .registers 3

    .line 244
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 248
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_27

    .line 249
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to delete file "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1583
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "BackupManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1586
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->dumpWithoutCheckingPermission(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public dumpWithoutCheckingPermission(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1591
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    .line 1592
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_10

    const-string p0, "Inactive"

    .line 1593
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_10
    const/4 v0, 0x0

    if-eqz p3, :cond_7e

    .line 1598
    array-length v1, p3

    move v2, v0

    :goto_15
    if-ge v2, v1, :cond_7e

    aget-object v3, p3, v2

    const-string v4, "-h"

    .line 1599
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    const-string p0, "\'dumpsys backup\' optional arguments:"

    .line 1600
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  -h       : this help text"

    .line 1601
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  a[gents] : dump information about defined backup agents"

    .line 1602
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  transportclients : dump information about transport clients"

    .line 1603
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  transportstats : dump transport statts"

    .line 1604
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  users    : dump the list of users for which backup service is running"

    .line 1605
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1608
    :cond_40
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "users"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    const-string p1, "Backup Manager is running for users:"

    .line 1609
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1610
    :goto_52
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_77

    .line 1611
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 1613
    :cond_77
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void

    :cond_7b
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1619
    :cond_7e
    :goto_7e
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_9a

    .line 1620
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    .line 1621
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    const-string v2, "dump()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    if-eqz v1, :cond_97

    .line 1623
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_97
    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    :cond_9a
    return-void
.end method

.method public endFullBackup(I)V
    .registers 3

    .line 1652
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "endFullBackup()"

    .line 1656
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 1659
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->endFullBackup()V

    :cond_12
    return-void
.end method

.method public enforceCallingPermissionOnUserId(ILjava/lang/String;)V
    .registers 4

    .line 1714
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eq v0, p1, :cond_11

    .line 1715
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public final enforcePermissionsOnUser(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    if-eqz p1, :cond_13

    .line 423
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    const-string v0, "No permission to configure backup activity"

    if-eqz p1, :cond_29

    .line 426
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUid()I

    move-result p0

    const/16 p1, 0x3e8

    if-eq p0, p1, :cond_37

    if-nez p0, :cond_23

    goto :goto_37

    .line 428
    :cond_23
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 431
    :cond_29
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    :goto_37
    return-void
.end method

.method public excludeKeysFromRestore(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1669
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1670
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1671
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Returning from excludeKeysFromRestore as backup for user"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not initialized yet"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2a
    const-string v1, "excludeKeysFromRestore()"

    .line 1676
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 1679
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->excludeKeysFromRestore(Ljava/lang/String;Ljava/util/List;)V

    :cond_35
    return-void
.end method

.method public filterAppsEligibleForBackup(I[Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const-string v0, "filterAppsEligibleForBackup()"

    .line 1461
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_e

    .line 1465
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->filterAppsEligibleForBackup([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :goto_e
    return-object p0
.end method

.method public filterAppsEligibleForBackupForUser(I[Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 1452
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->filterAppsEligibleForBackup(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public fullBackupCustomized(ILjava/lang/String;ZZZZZZZ[Ljava/lang/String;ZLjava/lang/String;ZLandroid/app/backup/IMemorySaverBackupRestoreObserver;)V
    .registers 31

    move/from16 v0, p1

    :try_start_2
    const-string v1, "fullBackupCustomized()"

    move-object/from16 v2, p0

    .line 934
    invoke-virtual {v2, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v2

    if-eqz v2, :cond_46

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    .line 937
    invoke-virtual/range {v2 .. v15}, Lcom/android/server/backup/UserBackupManagerService;->fullBackupCustomized(Ljava/lang/String;ZZZZZZZ[Ljava/lang/String;ZLjava/lang/String;ZLandroid/app/backup/IMemorySaverBackupRestoreObserver;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_29} :catch_2a

    goto :goto_46

    .line 943
    :catch_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " fullbackupCustomized error"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    :goto_46
    return-void
.end method

.method public fullRestoreCustomized(ILjava/lang/String;ZLjava/lang/String;Landroid/app/backup/IMemorySaverBackupRestoreObserver;)V
    .registers 7

    :try_start_0
    const-string v0, "fullRestoreCustomized()"

    .line 916
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 919
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/backup/UserBackupManagerService;->fullRestoreCustomized(Ljava/lang/String;ZLjava/lang/String;Landroid/app/backup/IMemorySaverBackupRestoreObserver;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_28

    .line 922
    :catch_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "userId "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " fullRestoreCustomized error "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :goto_28
    return-void
.end method

.method public fullTransportBackup(I[Ljava/lang/String;)V
    .registers 4

    const-string v0, "fullTransportBackup()"

    .line 851
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 854
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->fullTransportBackup([Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public fullTransportBackupForUser(I[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 841
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 842
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->fullTransportBackup(I[Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public getActivatedFileForNonSystemUser(I)Ljava/io/File;
    .registers 2

    const-string p0, "backup-activated"

    .line 213
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerFiles;->getStateFileInSystemDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableRestoreToken(ILjava/lang/String;)J
    .registers 4

    const-string v0, "getAvailableRestoreToken()"

    .line 1428
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_b

    const-wide/16 p0, 0x0

    goto :goto_f

    .line 1432
    :cond_b
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide p0

    :goto_f
    return-wide p0
.end method

.method public getAvailableRestoreTokenForUser(ILjava/lang/String;)J
    .registers 4

    .line 1419
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getAvailableRestoreToken(ILjava/lang/String;)J

    move-result-wide p0

    goto :goto_d

    :cond_b
    const-wide/16 p0, 0x0

    :goto_d
    return-wide p0
.end method

.method public getBackupHandler()Landroid/os/Handler;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 185
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getConfigurationIntent(ILjava/lang/String;)Landroid/content/Intent;
    .registers 4

    const-string v0, "getConfigurationIntent()"

    .line 1288
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_e

    .line 1292
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    :goto_e
    return-object p0
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1277
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->getConfigurationIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getConfigurationIntentForUser(ILjava/lang/String;)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1270
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getConfigurationIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 309
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1048
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->getCurrentTransportForUser(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTransport(I)Ljava/lang/String;
    .registers 3

    const-string v0, "getCurrentTransport()"

    .line 1055
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_e

    .line 1059
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getCurrentTransport()Ljava/lang/String;

    move-result-object p0

    :goto_e
    return-object p0
.end method

.method public getCurrentTransportComponent(I)Landroid/content/ComponentName;
    .registers 3

    const-string v0, "getCurrentTransportComponent()"

    .line 1079
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_e

    .line 1083
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getCurrentTransportComponent()Landroid/content/ComponentName;

    move-result-object p0

    :goto_e
    return-object p0
.end method

.method public getCurrentTransportComponentForUser(I)Landroid/content/ComponentName;
    .registers 3

    .line 1069
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getCurrentTransportComponent(I)Landroid/content/ComponentName;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public getCurrentTransportForUser(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1043
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getCurrentTransport(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public getDataManagementIntent(ILjava/lang/String;)Landroid/content/Intent;
    .registers 4

    const-string v0, "getDataManagementIntent()"

    .line 1342
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_e

    .line 1346
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    :goto_e
    return-object p0
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1335
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->getDataManagementIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getDataManagementIntentForUser(ILjava/lang/String;)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1328
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1329
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getDataManagementIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public getDataManagementLabel(ILjava/lang/String;)Ljava/lang/CharSequence;
    .registers 4

    const-string v0, "getDataManagementLabel()"

    .line 1363
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_e

    .line 1367
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_e
    return-object p0
.end method

.method public getDataManagementLabelForUser(ILjava/lang/String;)Ljava/lang/CharSequence;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1352
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getDataManagementLabel(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public getDestinationString(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "getDestinationString()"

    .line 1318
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_e

    .line 1322
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_e
    return-object p0
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1303
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->getDestinationStringForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDestinationStringForUser(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1297
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getDestinationString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public getRememberActivatedFileForNonSystemUser(I)Ljava/io/File;
    .registers 2

    const-string p0, "backup-remember-activated"

    .line 208
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerFiles;->getStateFileInSystemDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1698
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->enforceCallingPermissionOnUserId(ILjava/lang/String;)V

    .line 1699
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/backup/UserBackupManagerService;

    if-nez p0, :cond_2b

    .line 1701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for unknown user: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BackupManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-object p0
.end method

.method public getSuppressFileForSystemUser()Ljava/io/File;
    .registers 3

    .line 202
    new-instance p0, Ljava/io/File;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    move-result-object v0

    const-string v1, "backup-suppress"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public getTransportWhitelist()[Ljava/lang/String;
    .registers 4

    .line 1126
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    .line 1127
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 1131
    :cond_c
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1133
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1134
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_30
    return-object v0
.end method

.method public getUserForAncestralSerialNumber(J)Landroid/os/UserHandle;
    .registers 11

    .line 1536
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    .line 1539
    :cond_6
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1541
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1543
    :try_start_12
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_3e

    .line 1545
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1548
    array-length v2, v0

    :goto_1f
    if-ge v5, v2, :cond_3d

    aget v3, v0, v5

    .line 1549
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/UserBackupManagerService;

    if-eqz v4, :cond_3a

    .line 1551
    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getAncestralSerialNumber()J

    move-result-wide v6

    cmp-long v4, v6, p1

    if-nez v4, :cond_3a

    .line 1552
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    :cond_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_3d
    return-object v1

    :catchall_3e
    move-exception p0

    .line 1545
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1546
    throw p0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .registers 1

    .line 313
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public getUserService(I)Lcom/android/server/backup/UserBackupManagerService;
    .registers 2

    .line 412
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/backup/UserBackupManagerService;

    return-object p0
.end method

.method public getUserServices()Landroid/util/SparseArray;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/UserBackupManagerService;",
            ">;"
        }
    .end annotation

    .line 392
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    return-object p0
.end method

.method public hasBackupPassword()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 762
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    .line 763
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    const-string/jumbo v0, "hasBackupPassword()"

    .line 767
    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 770
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->hasBackupPassword()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public initializeTransports(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .registers 5

    const-string/jumbo v0, "initializeTransports()"

    .line 568
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 571
    invoke-virtual {p0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    :cond_c
    return-void
.end method

.method public initializeTransportsForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 559
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 560
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->initializeTransports(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    :cond_9
    return-void
.end method

.method public isAppEligibleForBackup(ILjava/lang/String;)Z
    .registers 4

    const-string/jumbo v0, "isAppEligibleForBackup()"

    .line 1444
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 1447
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->isAppEligibleForBackup(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public isAppEligibleForBackupForUser(ILjava/lang/String;)Z
    .registers 4

    .line 1437
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->isAppEligibleForBackup(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final isBackupActivatedForUser(I)Z
    .registers 4

    .line 300
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getSuppressFileForSystemUser()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    if-eqz p1, :cond_18

    .line 305
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getActivatedFileForNonSystemUser(I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_19

    :cond_18
    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public isBackupDisabled()Z
    .registers 2

    const-string/jumbo p0, "ro.backup.disable"

    const/4 v0, 0x0

    .line 189
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isBackupEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 731
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isBackupEnabledForUser(I)Z

    move-result p0

    return p0
.end method

.method public isBackupEnabled(I)Z
    .registers 3

    const-string/jumbo v0, "isBackupEnabled()"

    .line 739
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 741
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->isBackupEnabled()Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public isBackupEnabledForUser(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 726
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isBackupEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isBackupServiceActive(I)Z
    .registers 5

    .line 515
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-wide/32 v1, 0x9723ef2

    .line 516
    invoke-static {v1, v2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 518
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "isBackupServiceActive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :cond_17
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 522
    :try_start_1a
    iget-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    if-nez v1, :cond_26

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isBackupActivatedForUser(I)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    monitor-exit v0

    return p0

    :catchall_29
    move-exception p0

    .line 523
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public isSubUserSupported()Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public isUserReadyForBackup(I)Z
    .registers 4

    .line 290
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    .line 291
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public listAllTransportComponents(I)[Landroid/content/ComponentName;
    .registers 3

    const-string/jumbo v0, "listAllTransportComponents()"

    .line 1117
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_b

    const/4 p0, 0x0

    goto :goto_f

    .line 1121
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->listAllTransportComponents()[Landroid/content/ComponentName;

    move-result-object p0

    :goto_f
    return-object p0
.end method

.method public listAllTransportComponentsForUser(I)[Landroid/content/ComponentName;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1109
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1110
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->listAllTransportComponents(I)[Landroid/content/ComponentName;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1104
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->listAllTransportsForUser(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public listAllTransports(I)[Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "listAllTransports()"

    .line 1095
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_b

    const/4 p0, 0x0

    goto :goto_f

    .line 1099
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object p0

    :goto_f
    return-object p0
.end method

.method public listAllTransportsForUser(I)[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1088
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->listAllTransports(I)[Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public final onRemovedNonSystemUser(I)V
    .registers 4

    .line 223
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removing state for non system user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BackupManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {p1}, Lcom/android/server/backup/UserBackupManagerFiles;->getStateDirInSystemDir(I)Ljava/io/File;

    move-result-object p0

    .line 225
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_34

    .line 226
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete state dir for removed user: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return-void
.end method

.method public onStopUser(I)V
    .registers 3

    .line 400
    new-instance v0, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/BackupManagerService;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->postToHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3

    .line 327
    new-instance v0, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/backup/BackupManagerService;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->postToHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public opComplete(IIJ)V
    .registers 6

    const-string/jumbo v0, "opComplete()"

    .line 1410
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 1413
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/backup/UserBackupManagerService;->opComplete(IJ)V

    :cond_c
    return-void
.end method

.method public opComplete(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1401
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->opCompleteForUser(IIJ)V

    return-void
.end method

.method public opCompleteForUser(IIJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1394
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1395
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService;->opComplete(IIJ)V

    :cond_9
    return-void
.end method

.method public postToHandler(Ljava/lang/Runnable;)V
    .registers 2

    .line 317
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestBackup(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .registers 7

    const-string/jumbo v0, "requestBackup()"

    .line 1496
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_c

    const/16 p0, -0x7d1

    goto :goto_10

    .line 1500
    :cond_c
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/backup/UserBackupManagerService;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result p0

    :goto_10
    return p0
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1481
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/backup/BackupManagerService;->requestBackup(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result p0

    return p0
.end method

.method public requestBackupForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1471
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0x7d1

    return p0

    .line 1474
    :cond_9
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/backup/BackupManagerService;->requestBackup(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result p0

    return p0
.end method

.method public restoreAtInstall(ILjava/lang/String;I)V
    .registers 5

    const-string/jumbo v0, "restoreAtInstall()"

    .line 672
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 675
    invoke-virtual {p0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->restoreAtInstall(Ljava/lang/String;I)V

    :cond_c
    return-void
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 663
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->restoreAtInstallForUser(ILjava/lang/String;I)V

    return-void
.end method

.method public restoreAtInstallForUser(ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 656
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 657
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->restoreAtInstall(ILjava/lang/String;I)V

    :cond_9
    return-void
.end method

.method public selectBackupTransport(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "selectBackupTransport()"

    .line 1228
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_b

    const/4 p0, 0x0

    goto :goto_f

    .line 1232
    :cond_b
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_f
    return-object p0
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1215
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->selectBackupTransportForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public selectBackupTransportAsync(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .registers 5

    const-string/jumbo v0, "selectBackupTransportAsync()"

    .line 1260
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 1263
    invoke-virtual {p0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    :cond_c
    return-void
.end method

.method public selectBackupTransportAsyncForUser(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1238
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1239
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->selectBackupTransportAsync(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    goto :goto_11

    :cond_a
    if-eqz p3, :cond_11

    const/16 p0, -0x7d1

    .line 1243
    :try_start_e
    invoke-interface {p3, p0}, Landroid/app/backup/ISelectBackupTransportCallback;->onFailure(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    :goto_11
    return-void
.end method

.method public selectBackupTransportForUser(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1209
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1210
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->selectBackupTransport(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public semBackupPackage(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 960
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    const-string/jumbo v1, "semBackupPackage()"

    .line 962
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 964
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/backup/UserBackupManagerService;->semBackupPackage(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public semBackupPackagePath(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 973
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    const-string/jumbo v1, "semBackupPackagePath()"

    .line 975
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v2

    if-eqz v2, :cond_17

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .line 977
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/backup/UserBackupManagerService;->semBackupPackagePath(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public semIsBackupEnabled()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1002
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    const-string/jumbo v1, "semIsBackupEnabled()"

    .line 1004
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    .line 1005
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_13

    return v0

    :cond_13
    if-eqz v1, :cond_1a

    .line 1009
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->semIsBackupEnabled()Z

    move-result p0

    return p0

    :cond_1a
    return v0
.end method

.method public semRestorePackage(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 5

    .line 984
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    const-string/jumbo v1, "semRestorePackage()"

    .line 986
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 988
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->semRestorePackage(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public semSetAutoRestoreEnabled(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1029
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    const-string/jumbo v1, "semSetAutoRestoreEnabled()"

    .line 1031
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    .line 1032
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result p0

    if-nez p0, :cond_12

    return-void

    :cond_12
    if-eqz v1, :cond_17

    .line 1036
    invoke-virtual {v1, p1}, Lcom/android/server/backup/UserBackupManagerService;->semSetAutoRestoreEnabled(Z)V

    :cond_17
    return-void
.end method

.method public semSetBackupEnabled(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1016
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    const-string/jumbo v1, "semSetBackupEnabled()"

    .line 1018
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    .line 1019
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result p0

    if-nez p0, :cond_12

    return-void

    :cond_12
    if-eqz v1, :cond_17

    .line 1023
    invoke-virtual {v1, p1}, Lcom/android/server/backup/UserBackupManagerService;->semSetBackupEnabled(Z)V

    :cond_17
    return-void
.end method

.method public setAncestralSerialNumber(J)V
    .registers 5

    .line 1568
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    if-eqz v0, :cond_5

    return-void

    .line 1573
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string/jumbo v1, "setAncestralSerialNumber()"

    .line 1572
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 1577
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->setAncestralSerialNumber(J)V

    :cond_19
    return-void
.end method

.method public setAutoRestore(IZ)V
    .registers 4

    const-string/jumbo v0, "setAutoRestore()"

    .line 717
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 720
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->setAutoRestore(Z)V

    :cond_c
    return-void
.end method

.method public setAutoRestore(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 711
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->setAutoRestoreForUser(IZ)V

    return-void
.end method

.method public setAutoRestoreForUser(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 704
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 705
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->setAutoRestore(IZ)V

    :cond_9
    return-void
.end method

.method public setBackupEnabled(IZ)V
    .registers 4

    const-string/jumbo v0, "setBackupEnabled()"

    .line 695
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 698
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->setBackupEnabled(Z)V

    :cond_c
    return-void
.end method

.method public setBackupEnabled(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 689
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->setBackupEnabledForUser(IZ)V

    return-void
.end method

.method public setBackupEnabledForUser(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 682
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 683
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->setBackupEnabled(IZ)V

    :cond_9
    return-void
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 747
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    .line 748
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    const-string/jumbo v0, "setBackupPassword()"

    .line 752
    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 756
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public setBackupServiceActive(IZ)V
    .registers 7

    .line 445
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->enforcePermissionsOnUser(I)V

    if-eqz p1, :cond_18

    .line 457
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getRememberActivatedFileForNonSystemUser(I)Ljava/io/File;

    move-result-object v0

    .line 458
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->createFile(Ljava/io/File;)V

    .line 459
    invoke-static {v0, p2}, Lcom/android/server/backup/utils/RandomAccessFileUtils;->writeBoolean(Ljava/io/File;Z)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception v0

    const-string v1, "BackupManagerService"

    const-string v2, "Unable to persist backup service activity"

    .line 461
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    :cond_18
    :goto_18
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    if-eqz v0, :cond_24

    const-string p0, "BackupManagerService"

    const-string p1, "Backup service not supported"

    .line 466
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 470
    :cond_24
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_27
    const-string v1, "BackupManagerService"

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making backup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_38

    const-string v3, ""

    goto :goto_3b

    :cond_38
    const-string/jumbo v3, "in"

    :goto_3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "active"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_27 .. :try_end_4a} :catchall_81

    if-eqz p2, :cond_71

    .line 474
    :try_start_4c
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->activateBackupForUserLocked(I)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50
    .catchall {:try_start_4c .. :try_end_4f} :catchall_81

    goto :goto_57

    :catch_50
    :try_start_50
    const-string p2, "BackupManagerService"

    const-string v1, "Unable to persist backup service activity"

    .line 476
    invoke-static {p2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :goto_57
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p2

    if-eqz p2, :cond_7f

    .line 484
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_65
    .catchall {:try_start_50 .. :try_end_65} :catchall_81

    .line 486
    :try_start_65
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->startServiceForUser(I)V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_6c

    .line 488
    :try_start_68
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7f

    :catchall_6c
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 489
    throw p0
    :try_end_71
    .catchall {:try_start_68 .. :try_end_71} :catchall_81

    .line 494
    :cond_71
    :try_start_71
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->deactivateBackupForUserLocked(I)V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75
    .catchall {:try_start_71 .. :try_end_74} :catchall_81

    goto :goto_7c

    :catch_75
    :try_start_75
    const-string p2, "BackupManagerService"

    const-string v1, "Unable to persist backup service inactivity"

    .line 496
    invoke-static {p2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :goto_7c
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->onStopUser(I)V

    .line 502
    :cond_7f
    :goto_7f
    monitor-exit v0

    return-void

    :catchall_81
    move-exception p0

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_75 .. :try_end_83} :catchall_81

    throw p0
.end method

.method public startServiceForUser(I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 338
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    const-string v1, "BackupManagerService"

    if-eqz v0, :cond_c

    const-string p0, "Backup service not supported"

    .line 339
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 342
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isBackupActivatedForUser(I)Z

    move-result v0

    if-nez v0, :cond_27

    .line 343
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Backup not activated for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 346
    :cond_27
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 347
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "userId "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " already started, so not starting again"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 350
    :cond_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting service for user: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    .line 352
    invoke-static {p1, v0, p0, v1}, Lcom/android/server/backup/UserBackupManagerService;->createAndInitializeService(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerService;Ljava/util/Set;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 354
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->startServiceForUser(ILcom/android/server/backup/UserBackupManagerService;)V

    return-void
.end method

.method public startServiceForUser(ILcom/android/server/backup/UserBackupManagerService;)V
    .registers 4

    .line 362
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-wide/16 p0, 0x40

    const-string v0, "backup enable"

    .line 364
    invoke-static {p0, p1, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 365
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->initializeBackupEnableState()V

    .line 366
    invoke-static {p0, p1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public stopServiceForUser(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/UserBackupManagerService;

    if-eqz v0, :cond_17

    .line 375
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->tearDownService()V

    .line 377
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(ILandroid/content/Context;)V

    .line 378
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/android/server/backup/FullBackupJob;->cancel(ILandroid/content/Context;)V

    :cond_17
    return-void
.end method

.method public updateTransportAttributes(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .registers 16

    const-string/jumbo v0, "updateTransportAttributes()"

    .line 1193
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    if-eqz v1, :cond_12

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 1196
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/backup/UserBackupManagerService;->updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    :cond_12
    return-void
.end method

.method public updateTransportAttributesForUser(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .registers 9

    .line 1149
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1150
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/backup/BackupManagerService;->updateTransportAttributes(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method
