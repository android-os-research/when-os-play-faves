.class public Lcom/android/server/backup/restore/ActiveRestoreSession;
.super Landroid/app/backup/IRestoreSession$Stub;
.source "ActiveRestoreSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;
    }
.end annotation


# static fields
.field public static final DEVICE_NAME_FOR_D2D_SET:Ljava/lang/String; = "D2D"

.field public static final TAG:Ljava/lang/String; = "RestoreSession"


# instance fields
.field public final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public mEnded:Z

.field public final mPackageName:Ljava/lang/String;

.field public mRestoreSets:[Landroid/app/backup/RestoreSet;

.field public mTimedOut:Z

.field public final mTransportManager:Lcom/android/server/backup/TransportManager;

.field public final mTransportName:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$DCnddoBOF-7tZ77IaUzINXMS8RE(Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;Landroid/app/backup/RestoreSet;Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/backup/restore/ActiveRestoreSession;->lambda$restorePackages$2(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;Landroid/app/backup/RestoreSet;Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$O75hSYOJ7hpdwxuGVIv7Q7Tg9qM(Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/backup/restore/ActiveRestoreSession;->lambda$restorePackage$3(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hZB9FnoyhLGdVZNS7-kBKZGHLy8(Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/app/backup/RestoreSet;Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/backup/restore/ActiveRestoreSession;->lambda$restoreAll$1(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/app/backup/RestoreSet;Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tEp6OdaNdmxsu8a7abiTdN5jln0(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/backup/restore/ActiveRestoreSession;->lambda$sendRestoreToHandlerLocked$4(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x_NbZnWyeZ1DF9RBjrwDARZLdAQ(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/backup/restore/ActiveRestoreSession;->lambda$getAvailableRestoreSets$0(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/backup/utils/BackupEligibilityRules;)V
    .registers 6

    .line 72
    invoke-direct {p0}, Landroid/app/backup/IRestoreSession$Stub;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    .line 73
    iput-object p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 74
    iput-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 76
    iput-object p3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result p1

    iput p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mUserId:I

    .line 78
    iput-object p4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    return-void
.end method

.method public static synthetic lambda$getAvailableRestoreSets$0(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;Ljava/lang/String;)V
    .registers 4

    .line 125
    invoke-virtual {p0, p1, p3}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    return-void
.end method

.method private synthetic lambda$restoreAll$1(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/app/backup/RestoreSet;Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;
    .registers 15

    .line 191
    invoke-virtual {p0, p5}, Lcom/android/server/backup/restore/ActiveRestoreSession;->getBackupEligibilityRules(Landroid/app/backup/RestoreSet;)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v6

    move-object v0, p6

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p7

    .line 185
    invoke-static/range {v0 .. v6}, Lcom/android/server/backup/params/RestoreParams;->createForRestoreAll(Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/params/RestoreParams;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$restorePackage$3(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;
    .registers 16

    .line 380
    iget-object v7, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-object v0, p6

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p7

    invoke-static/range {v0 .. v7}, Lcom/android/server/backup/params/RestoreParams;->createForSinglePackage(Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;Lcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/params/RestoreParams;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$restorePackages$2(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;Landroid/app/backup/RestoreSet;Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;
    .registers 18

    move-object v5, p5

    .line 278
    array-length v0, v5

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    move-object v0, p0

    move v6, v1

    move-object v1, p6

    goto :goto_d

    :cond_9
    const/4 v0, 0x0

    move-object v1, p6

    move v6, v0

    move-object v0, p0

    .line 286
    :goto_d
    invoke-virtual {p0, p6}, Lcom/android/server/backup/restore/ActiveRestoreSession;->getBackupEligibilityRules(Landroid/app/backup/RestoreSet;)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v8

    move-object/from16 v0, p7

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object/from16 v7, p8

    .line 278
    invoke-static/range {v0 .. v8}, Lcom/android/server/backup/params/RestoreParams;->createForRestorePackages(Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;ZLcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/params/RestoreParams;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$sendRestoreToHandlerLocked$4(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;Ljava/lang/String;)V
    .registers 4

    .line 424
    invoke-virtual {p0, p1, p3}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 425
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    return-void
.end method


# virtual methods
.method public declared-synchronized endRestoreSession()V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "RestoreSession"

    const-string v1, "endRestoreSession"

    .line 458
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    if-eqz v0, :cond_15

    const-string v0, "RestoreSession"

    const-string v1, "Session already timed out"

    .line 462
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_33

    .line 463
    monitor-exit p0

    return-void

    .line 466
    :cond_15
    :try_start_15
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-nez v0, :cond_2b

    .line 470
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;

    iget-object v2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v1, p0, v2, p0}, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/restore/ActiveRestoreSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_33

    .line 472
    monitor-exit p0

    return-void

    .line 467
    :cond_2b
    :try_start_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restore session already ended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I
    .registers 15

    monitor-enter p0

    .line 88
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getAvailableRestoreSets"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_97

    .line 95
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-nez v0, :cond_8f

    .line 99
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_22

    const-string p1, "RestoreSession"

    const-string p2, "Session already timed out"

    .line 100
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_9f

    .line 101
    monitor-exit p0

    return v1

    .line 104
    :cond_22
    :try_start_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_9f

    .line 106
    :try_start_26
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    const-string v5, "RestoreSession.getAvailableRestoreSets()"

    .line 107
    invoke-virtual {v0, v4, v5}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v7

    if-nez v7, :cond_3e

    const-string p1, "RestoreSession"

    const-string p2, "Null transport client getting restore sets"

    .line 110
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_39} :catch_7e
    .catchall {:try_start_26 .. :try_end_39} :catchall_7c

    .line 138
    :try_start_39
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_9f

    .line 111
    monitor-exit p0

    return v1

    .line 117
    :cond_3e
    :try_start_3e
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 123
    iget-object v4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 124
    new-instance v11, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;

    invoke-direct {v11, v4, v7, v0}, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;)V

    .line 128
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v4, 0x6

    new-instance v5, Lcom/android/server/backup/params/RestoreGetSetsParams;

    move-object v6, v5

    move-object v8, p0

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/android/server/backup/params/RestoreGetSetsParams;-><init>(Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    invoke-virtual {v0, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 132
    iget-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_76} :catch_7e
    .catchall {:try_start_3e .. :try_end_76} :catchall_7c

    const/4 p1, 0x0

    .line 138
    :try_start_77
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_9f

    .line 133
    monitor-exit p0

    return p1

    :catchall_7c
    move-exception p1

    goto :goto_8b

    :catch_7e
    move-exception p1

    :try_start_7f
    const-string p2, "RestoreSession"

    const-string v0, "Error in getAvailableRestoreSets"

    .line 135
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_7c

    .line 138
    :try_start_86
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_9f

    .line 136
    monitor-exit p0

    return v1

    .line 138
    :goto_8b
    :try_start_8b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    throw p1

    .line 96
    :cond_8f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Restore session already ended"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_97
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Observer must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_9f
    .catchall {:try_start_8b .. :try_end_9f} :catchall_9f

    :catchall_9f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getBackupEligibilityRules(Landroid/app/backup/RestoreSet;)Lcom/android/server/backup/utils/BackupEligibilityRules;
    .registers 3

    .line 302
    iget-object p1, p1, Landroid/app/backup/RestoreSet;->device:Ljava/lang/String;

    const-string v0, "D2D"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 304
    iget-object p0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object p0

    return-object p0
.end method

.method public markTimedOut()V
    .registers 2

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    return-void
.end method

.method public declared-synchronized restoreAll(JLandroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I
    .registers 17

    move-object v8, p0

    monitor-enter p0

    .line 144
    :try_start_2
    iget-object v0, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "performRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RestoreSession"

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreAll token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " observer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-boolean v0, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-nez v0, :cond_ea

    .line 157
    iget-boolean v0, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_46

    const-string v0, "RestoreSession"

    const-string v2, "Session already timed out"

    .line 158
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_2 .. :try_end_44} :catchall_f2

    .line 159
    monitor-exit p0

    return v1

    .line 162
    :cond_46
    :try_start_46
    iget-object v0, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    if-nez v0, :cond_53

    const-string v0, "RestoreSession"

    const-string v2, "Ignoring restoreAll() with no restore set"

    .line 163
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_f2

    .line 164
    monitor-exit p0

    return v1

    .line 167
    :cond_53
    :try_start_53
    iget-object v0, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_60

    const-string v0, "RestoreSession"

    const-string v2, "Ignoring restoreAll() on single-package session"

    .line 168
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_53 .. :try_end_5e} :catchall_f2

    .line 169
    monitor-exit p0

    return v1

    .line 172
    :cond_60
    :try_start_60
    iget-object v0, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v2, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_89

    const-string v0, "RestoreSession"

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catchall {:try_start_60 .. :try_end_87} :catchall_f2

    .line 174
    monitor-exit p0

    return v1

    .line 177
    :cond_89
    :try_start_89
    iget-object v0, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_90
    .catchall {:try_start_89 .. :try_end_90} :catchall_f2

    const/4 v0, 0x0

    .line 178
    :goto_91
    :try_start_91
    iget-object v2, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    array-length v4, v2

    if-ge v0, v4, :cond_c5

    .line 179
    aget-object v2, v2, v0

    iget-wide v4, v2, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v2, p1, v4

    if-nez v2, :cond_c2

    .line 180
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 181
    iget-object v1, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    aget-object v7, v1, v0
    :try_end_a6
    .catchall {:try_start_91 .. :try_end_a6} :catchall_e7

    .line 183
    :try_start_a6
    new-instance v0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move-object/from16 v4, p4

    move-wide v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/app/backup/RestoreSet;)V

    const-string v1, "RestoreSession.restoreAll()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/restore/ActiveRestoreSession;->sendRestoreToHandlerLocked(Ljava/util/function/BiFunction;Ljava/lang/String;)I

    move-result v0
    :try_end_b7
    .catchall {:try_start_a6 .. :try_end_b7} :catchall_bd

    .line 194
    :try_start_b7
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v9
    :try_end_bb
    .catchall {:try_start_b7 .. :try_end_bb} :catchall_e7

    .line 183
    monitor-exit p0

    return v0

    :catchall_bd
    move-exception v0

    .line 194
    :try_start_be
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 195
    throw v0

    :cond_c2
    add-int/lit8 v0, v0, 0x1

    goto :goto_91

    .line 198
    :cond_c5
    monitor-exit v9
    :try_end_c6
    .catchall {:try_start_be .. :try_end_c6} :catchall_e7

    :try_start_c6
    const-string v0, "RestoreSession"

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restore token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e5
    .catchall {:try_start_c6 .. :try_end_e5} :catchall_f2

    .line 201
    monitor-exit p0

    return v1

    :catchall_e7
    move-exception v0

    .line 198
    :try_start_e8
    monitor-exit v9
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    :try_start_e9
    throw v0

    .line 154
    :cond_ea
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restore session already ended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f2
    .catchall {:try_start_e9 .. :try_end_f2} :catchall_f2

    :catchall_f2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I
    .registers 15

    monitor-enter p0

    :try_start_1
    const-string v0, "RestoreSession"

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restorePackage pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " obs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "monitor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-nez v0, :cond_16d

    .line 318
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_3b

    const-string p1, "RestoreSession"

    const-string p2, "Session already timed out"

    .line 319
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_175

    .line 320
    monitor-exit p0

    return v1

    .line 323
    :cond_3b
    :try_start_3b
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_67

    .line 324
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    const-string p2, "RestoreSession"

    .line 325
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring attempt to restore pkg="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on session for package "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_3b .. :try_end_65} :catchall_175

    .line 327
    monitor-exit p0

    return v1

    .line 333
    :cond_67
    :try_start_67
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mUserId:I

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v10
    :try_end_74
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_67 .. :try_end_74} :catch_155
    .catchall {:try_start_67 .. :try_end_74} :catchall_175

    .line 342
    :try_start_74
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.BACKUP"

    .line 344
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 342
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_c0

    .line 345
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 346
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-ne v0, v2, :cond_95

    goto :goto_c0

    :cond_95
    const-string p2, "RestoreSession"

    .line 347
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "restorePackage: bad packageName="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " or calling uid="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 347
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "No permission to restore other packages"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 352
    :cond_c0
    :goto_c0
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e9

    const-string p1, "RestoreSession"

    .line 353
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Transport "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not registered"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e7
    .catchall {:try_start_74 .. :try_end_e7} :catchall_175

    .line 354
    monitor-exit p0

    return v1

    .line 358
    :cond_e9
    :try_start_e9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_ed
    .catchall {:try_start_e9 .. :try_end_ed} :catchall_175

    .line 362
    :try_start_ed
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/UserBackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v8

    const-string v0, "RestoreSession"

    .line 364
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restorePackage pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 364
    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    cmp-long v0, v8, v4

    if-nez v0, :cond_128

    const-string p1, "RestoreSession"

    const-string p2, "No data available for this package; not restoring"

    .line 373
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_123
    .catchall {:try_start_ed .. :try_end_123} :catchall_150

    .line 390
    :try_start_123
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_126
    .catchall {:try_start_123 .. :try_end_126} :catchall_175

    .line 375
    monitor-exit p0

    return v1

    .line 378
    :cond_128
    :try_start_128
    new-instance v0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda3;

    move-object v4, v0

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RestoreSession.restorePackage("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/restore/ActiveRestoreSession;->sendRestoreToHandlerLocked(Ljava/util/function/BiFunction;Ljava/lang/String;)I

    move-result p1
    :try_end_14b
    .catchall {:try_start_128 .. :try_end_14b} :catchall_150

    .line 390
    :try_start_14b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_14e
    .catchall {:try_start_14b .. :try_end_14e} :catchall_175

    .line 378
    monitor-exit p0

    return p1

    :catchall_150
    move-exception p1

    .line 390
    :try_start_151
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 391
    throw p1

    :catch_155
    const-string p2, "RestoreSession"

    .line 336
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Asked to restore nonexistent pkg "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16b
    .catchall {:try_start_151 .. :try_end_16b} :catchall_175

    .line 337
    monitor-exit p0

    return v1

    .line 315
    :cond_16d
    :try_start_16d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Restore session already ended"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_175
    .catchall {:try_start_16d .. :try_end_175} :catchall_175

    :catchall_175
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized restorePackages(JLandroid/app/backup/IRestoreObserver;[Ljava/lang/String;Landroid/app/backup/IBackupManagerMonitor;)I
    .registers 20

    move-object v9, p0

    move-object/from16 v0, p4

    monitor-enter p0

    .line 207
    :try_start_4
    iget-object v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.BACKUP"

    const-string/jumbo v3, "performRestore"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "restorePackages token="

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " observer="

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_34

    const-string/jumbo v2, "null"

    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 219
    :cond_34
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3b
    const-string v2, " monitor="

    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p5, :cond_49

    const-string/jumbo v2, "null"

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_50

    .line 225
    :cond_49
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_50
    const-string v2, " packages="

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-nez v0, :cond_5f

    const-string/jumbo v3, "null"

    .line 229
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7f

    :cond_5f
    const/16 v3, 0x7b

    .line 231
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    array-length v3, v0

    const/4 v4, 0x1

    move v5, v2

    :goto_67
    if-ge v5, v3, :cond_7a

    aget-object v6, v0, v5

    if-nez v4, :cond_73

    const-string v7, ", "

    .line 235
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_74

    :cond_73
    move v4, v2

    .line 239
    :goto_74
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_67

    :cond_7a
    const/16 v3, 0x7d

    .line 241
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_7f
    const-string v3, "RestoreSession"

    .line 243
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-boolean v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-nez v1, :cond_155

    .line 250
    iget-boolean v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    const/4 v3, -0x1

    if-eqz v1, :cond_9a

    const-string v0, "RestoreSession"

    const-string v1, "Session already timed out"

    .line 251
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_4 .. :try_end_98} :catchall_15d

    .line 252
    monitor-exit p0

    return v3

    .line 255
    :cond_9a
    :try_start_9a
    iget-object v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    if-nez v1, :cond_a7

    const-string v0, "RestoreSession"

    const-string v1, "Ignoring restoreAll() with no restore set"

    .line 256
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catchall {:try_start_9a .. :try_end_a5} :catchall_15d

    .line 257
    monitor-exit p0

    return v3

    .line 260
    :cond_a7
    :try_start_a7
    iget-object v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_b4

    const-string v0, "RestoreSession"

    const-string v1, "Ignoring restoreAll() on single-package session"

    .line 261
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_a7 .. :try_end_b2} :catchall_15d

    .line 262
    monitor-exit p0

    return v3

    .line 265
    :cond_b4
    :try_start_b4
    iget-object v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v4, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_dd

    const-string v0, "RestoreSession"

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not registered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catchall {:try_start_b4 .. :try_end_db} :catchall_15d

    .line 267
    monitor-exit p0

    return v3

    .line 270
    :cond_dd
    :try_start_dd
    iget-object v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_e4
    .catchall {:try_start_dd .. :try_end_e4} :catchall_15d

    .line 271
    :goto_e4
    :try_start_e4
    iget-object v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    array-length v4, v1

    if-ge v2, v4, :cond_130

    .line 272
    aget-object v1, v1, v2

    iget-wide v4, v1, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v1, p1, v4

    if-nez v1, :cond_12d

    .line 273
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 274
    iget-object v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    aget-object v8, v1, v2
    :try_end_f9
    .catchall {:try_start_e4 .. :try_end_f9} :catchall_152

    .line 276
    :try_start_f9
    new-instance v13, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda1;

    move-object v1, v13

    move-object v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-wide v5, p1

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;Landroid/app/backup/RestoreSet;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestoreSession.restorePackages("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " packages)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v13, v0}, Lcom/android/server/backup/restore/ActiveRestoreSession;->sendRestoreToHandlerLocked(Ljava/util/function/BiFunction;Ljava/lang/String;)I

    move-result v0
    :try_end_122
    .catchall {:try_start_f9 .. :try_end_122} :catchall_128

    .line 289
    :try_start_122
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v10
    :try_end_126
    .catchall {:try_start_122 .. :try_end_126} :catchall_152

    .line 276
    monitor-exit p0

    return v0

    :catchall_128
    move-exception v0

    .line 289
    :try_start_129
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 290
    throw v0

    :cond_12d
    add-int/lit8 v2, v2, 0x1

    goto :goto_e4

    .line 293
    :cond_130
    monitor-exit v10
    :try_end_131
    .catchall {:try_start_129 .. :try_end_131} :catchall_152

    :try_start_131
    const-string v0, "RestoreSession"

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_150
    .catchall {:try_start_131 .. :try_end_150} :catchall_15d

    .line 296
    monitor-exit p0

    return v3

    :catchall_152
    move-exception v0

    .line 293
    :try_start_153
    monitor-exit v10
    :try_end_154
    .catchall {:try_start_153 .. :try_end_154} :catchall_152

    :try_start_154
    throw v0

    .line 247
    :cond_155
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restore session already ended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15d
    .catchall {:try_start_154 .. :try_end_15d} :catchall_15d

    :catchall_15d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final sendRestoreToHandlerLocked(Ljava/util/function/BiFunction;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Lcom/android/server/backup/transport/TransportConnection;",
            "Lcom/android/server/backup/internal/OnTaskFinishedListener;",
            "Lcom/android/server/backup/params/RestoreParams;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 405
    invoke-virtual {v0, v1, p2}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object p2

    if-nez p2, :cond_29

    .line 407
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Transport "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " got unregistered"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RestoreSession"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 412
    :cond_29
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    .line 413
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 415
    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v1

    .line 416
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 422
    iget-object p0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 423
    new-instance v2, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p2, v1}, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;)V

    const/4 p0, 0x3

    .line 427
    invoke-virtual {v0, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 428
    invoke-interface {p1, p2, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 429
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public setRestoreSets([Landroid/app/backup/RestoreSet;)V
    .registers 2

    .line 395
    iput-object p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    return-void
.end method
