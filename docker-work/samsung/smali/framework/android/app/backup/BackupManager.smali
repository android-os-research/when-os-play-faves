.class public Landroid/app/backup/BackupManager;
.super Ljava/lang/Object;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupManager$BackupManagerMonitorWrapper;,
        Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;,
        Landroid/app/backup/BackupManager$BackupObserverWrapper;,
        Landroid/app/backup/BackupManager$OperationType;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_AGENT_FAILURE:I = -0x3eb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_BACKUP_CANCELLED:I = -0x7d3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_BACKUP_NOT_ALLOWED:I = -0x7d1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_PACKAGE_NOT_FOUND:I = -0x7d2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_TRANSPORT_ABORTED:I = -0x3e8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_TRANSPORT_INVALID:I = -0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_TRANSPORT_PACKAGE_REJECTED:I = -0x3ea
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_TRANSPORT_QUOTA_EXCEEDED:I = -0x3ed
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_TRANSPORT_UNAVAILABLE:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_BACKUP_SERVICES_AVAILABLE:Ljava/lang/String; = "backup_services_available"

.field public static final whitelist FLAG_NON_INCREMENTAL_BACKUP:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist IS_BACKUP_SERVICE_ACTIVE_ENFORCE_PERMISSION_IN_SERVICE:J = 0x9723ef2L

.field public static final whitelist PACKAGE_MANAGER_SENTINEL:Ljava/lang/String; = "@pm@"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BackupManager"

.field private static greylist sService:Landroid/app/backup/IBackupManager;


# instance fields
.field private greylist-max-o mContext:Landroid/content/Context;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    .line 246
    return-void
.end method

.method private static greylist checkServiceBinder()V
    .registers 1

    .line 230
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_11

    .line 231
    nop

    .line 232
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 231
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    sput-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    .line 234
    :cond_11
    return-void
.end method

.method public static whitelist dataChanged(Ljava/lang/String;)V
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;

    .line 277
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 278
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_13

    .line 280
    :try_start_7
    invoke-interface {v0, p0}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 283
    goto :goto_13

    .line 281
    :catch_b
    move-exception v0

    .line 282
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "dataChanged(pkg) couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    return-void
.end method

.method public static blacklist dataChangedForUser(ILjava/lang/String;)V
    .registers 5
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 303
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 304
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_13

    .line 306
    :try_start_7
    invoke-interface {v0, p0, p1}, Landroid/app/backup/IBackupManager;->dataChangedForUser(ILjava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 309
    goto :goto_13

    .line 307
    :catch_b
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "dataChanged(userId,pkg) couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    return-void
.end method


# virtual methods
.method public whitelist backupNow()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 729
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 730
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_13

    .line 732
    :try_start_7
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->backupNow()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 735
    goto :goto_13

    .line 733
    :catch_b
    move-exception v0

    .line 734
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "backupNow() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    return-void
.end method

.method public whitelist beginRestoreSession()Landroid/app/backup/RestoreSession;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, "session":Landroid/app/backup/RestoreSession;
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 390
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_26

    .line 393
    :try_start_8
    iget-object v2, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    .line 394
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v3}, Landroid/app/backup/IBackupManager;->beginRestoreSessionForUser(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v1

    .line 395
    .local v1, "binder":Landroid/app/backup/IRestoreSession;
    if-eqz v1, :cond_1d

    .line 396
    new-instance v2, Landroid/app/backup/RestoreSession;

    iget-object v3, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/app/backup/RestoreSession;-><init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1c} :catch_1e

    move-object v0, v2

    .line 400
    .end local v1    # "binder":Landroid/app/backup/IRestoreSession;
    :cond_1d
    goto :goto_26

    .line 398
    :catch_1e
    move-exception v1

    .line 399
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BackupManager"

    const-string v3, "beginRestoreSession() couldn\'t connect"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_26
    :goto_26
    return-object v0
.end method

.method public whitelist cancelBackups()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 856
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 857
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_13

    .line 859
    :try_start_7
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->cancelBackups()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 862
    goto :goto_13

    .line 860
    :catch_b
    move-exception v0

    .line 861
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "cancelBackups() couldn\'t connect."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    return-void
.end method

.method public whitelist dataChanged()V
    .registers 4

    .line 255
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 256
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_19

    .line 258
    :try_start_7
    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 261
    goto :goto_19

    .line 259
    :catch_11
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "dataChanged() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    :goto_19
    return-void
.end method

.method public whitelist excludeKeysFromRestore(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1216
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 1217
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_13

    .line 1219
    :try_start_7
    invoke-interface {v0, p1, p2}, Landroid/app/backup/IBackupManager;->excludeKeysFromRestore(Ljava/lang/String;Ljava/util/List;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1222
    goto :goto_13

    .line 1220
    :catch_b
    move-exception v0

    .line 1221
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "excludeKeysFromRestore() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    return-void
.end method

.method public whitelist getAvailableRestoreToken(Ljava/lang/String;)J
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 753
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 754
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1a

    .line 756
    :try_start_7
    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/backup/IBackupManager;->getAvailableRestoreTokenForUser(ILjava/lang/String;)J

    move-result-wide v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_12

    return-wide v0

    .line 757
    :catch_12
    move-exception v0

    .line 758
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "getAvailableRestoreToken() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 919
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 920
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1a

    .line 922
    :try_start_7
    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/backup/IBackupManager;->getConfigurationIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_12

    return-object v0

    .line 923
    :catch_12
    move-exception v0

    .line 924
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "getConfigurationIntent() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCurrentTransport()Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 514
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 515
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_14

    .line 517
    :try_start_7
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return-object v0

    .line 518
    :catch_c
    move-exception v0

    .line 519
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "getCurrentTransport() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCurrentTransportComponent()Landroid/content/ComponentName;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 535
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 536
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1a

    .line 538
    :try_start_7
    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->getCurrentTransportComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_12

    return-object v0

    .line 539
    :catch_12
    move-exception v0

    .line 540
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "getCurrentTransportComponent() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 961
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 962
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1a

    .line 964
    :try_start_7
    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/backup/IBackupManager;->getDataManagementIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_12

    return-object v0

    .line 965
    :catch_12
    move-exception v0

    .line 966
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "getDataManagementIntent() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDataManagementIntentLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1003
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 1004
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1a

    .line 1006
    :try_start_7
    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/backup/IBackupManager;->getDataManagementLabelForUser(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_12

    return-object v0

    .line 1007
    :catch_12
    move-exception v0

    .line 1008
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "getDataManagementIntentLabel() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 987
    invoke-virtual {p0, p1}, Landroid/app/backup/BackupManager;->getDataManagementIntentLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 988
    .local v0, "label":Ljava/lang/CharSequence;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method public whitelist getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 940
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 941
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1a

    .line 943
    :try_start_7
    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/backup/IBackupManager;->getDestinationStringForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_12

    return-object v0

    .line 944
    :catch_12
    move-exception v0

    .line 945
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "getDestinationString() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getUserForAncestralSerialNumber(J)Landroid/os/UserHandle;
    .registers 6
    .param p1, "ancestralSerialNumber"    # J

    .line 878
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 879
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_14

    .line 881
    :try_start_7
    invoke-interface {v0, p1, p2}, Landroid/app/backup/IBackupManager;->getUserForAncestralSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return-object v0

    .line 882
    :catch_c
    move-exception v0

    .line 883
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "getUserForAncestralSerialNumber() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist isAppEligibleForBackup(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 775
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 776
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1a

    .line 778
    :try_start_7
    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/backup/IBackupManager;->isAppEligibleForBackupForUser(ILjava/lang/String;)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_12

    return v0

    .line 779
    :catch_12
    move-exception v0

    .line 780
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "isAppEligibleForBackup(pkg) couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isBackupEnabled()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 435
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 436
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_14

    .line 438
    :try_start_7
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return v0

    .line 439
    :catch_c
    move-exception v0

    .line 440
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "isBackupEnabled() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isBackupServiceActive(Landroid/os/UserHandle;)Z
    .registers 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 467
    const-wide/32 v0, 0x9723ef2

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_12

    .line 469
    iget-object v0, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "isBackupServiceActive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :cond_12
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 473
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_2a

    .line 475
    :try_start_19
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v0
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_21} :catch_22

    return v0

    .line 476
    :catch_22
    move-exception v0

    .line 477
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "isBackupEnabled() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSubUserSupported()Z
    .registers 4

    .line 1126
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 1127
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    const-string v1, "BackupManager"

    if-eqz v0, :cond_15

    .line 1129
    :try_start_9
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isSubUserSupported()Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    .line 1130
    :catch_e
    move-exception v0

    .line 1131
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "isSubUserSupported() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1a

    .line 1134
    :cond_15
    const-string v0, "could not get backup service"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    :goto_1a
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist listAllTransports()[Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 554
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 555
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_14

    .line 557
    :try_start_7
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->listAllTransports()[Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return-object v0

    .line 558
    :catch_c
    move-exception v0

    .line 559
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "listAllTransports() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist requestBackup([Ljava/lang/String;Landroid/app/backup/BackupObserver;)I
    .registers 5
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/BackupObserver;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 805
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/app/backup/BackupManager;->requestBackup([Ljava/lang/String;Landroid/app/backup/BackupObserver;Landroid/app/backup/BackupManagerMonitor;I)I

    move-result v0

    return v0
.end method

.method public whitelist requestBackup([Ljava/lang/String;Landroid/app/backup/BackupObserver;Landroid/app/backup/BackupManagerMonitor;I)I
    .registers 8
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/BackupObserver;
    .param p3, "monitor"    # Landroid/app/backup/BackupManagerMonitor;
    .param p4, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 830
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 831
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_2d

    .line 833
    const/4 v0, 0x0

    if-nez p2, :cond_c

    .line 834
    move-object v1, v0

    goto :goto_13

    .line 835
    :cond_c
    :try_start_c
    new-instance v1, Landroid/app/backup/BackupManager$BackupObserverWrapper;

    iget-object v2, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p2}, Landroid/app/backup/BackupManager$BackupObserverWrapper;-><init>(Landroid/app/backup/BackupManager;Landroid/content/Context;Landroid/app/backup/BackupObserver;)V

    :goto_13
    nop

    .line 836
    .local v1, "observerWrapper":Landroid/app/backup/BackupManager$BackupObserverWrapper;
    if-nez p3, :cond_17

    .line 837
    goto :goto_1c

    .line 838
    :cond_17
    new-instance v0, Landroid/app/backup/BackupManager$BackupManagerMonitorWrapper;

    invoke-direct {v0, p0, p3}, Landroid/app/backup/BackupManager$BackupManagerMonitorWrapper;-><init>(Landroid/app/backup/BackupManager;Landroid/app/backup/BackupManagerMonitor;)V

    :goto_1c
    nop

    .line 839
    .local v0, "monitorWrapper":Landroid/app/backup/BackupManager$BackupManagerMonitorWrapper;
    sget-object v2, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, p1, v1, v0, p4}, Landroid/app/backup/IBackupManager;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v2
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_23} :catch_24

    return v2

    .line 840
    .end local v0    # "monitorWrapper":Landroid/app/backup/BackupManager$BackupManagerMonitorWrapper;
    .end local v1    # "observerWrapper":Landroid/app/backup/BackupManager$BackupObserverWrapper;
    :catch_24
    move-exception v0

    .line 841
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "requestBackup() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2d
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist requestRestore(Landroid/app/backup/RestoreObserver;)I
    .registers 3
    .param p1, "observer"    # Landroid/app/backup/RestoreObserver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 342
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/backup/BackupManager;->requestRestore(Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I

    move-result v0

    return v0
.end method

.method public whitelist requestRestore(Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I
    .registers 5
    .param p1, "observer"    # Landroid/app/backup/RestoreObserver;
    .param p2, "monitor"    # Landroid/app/backup/BackupManagerMonitor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 375
    const-string v0, "BackupManager"

    const-string/jumbo v1, "requestRestore(): Since Android P app can no longer request restoring of its backup."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "transport"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 677
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 678
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_15

    .line 680
    :try_start_7
    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return-object v0

    .line 681
    :catch_c
    move-exception v0

    .line 682
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "selectBackupTransport() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist selectBackupTransport(Landroid/content/ComponentName;Landroid/app/backup/SelectBackupTransportCallback;)V
    .registers 6
    .param p1, "transport"    # Landroid/content/ComponentName;
    .param p2, "listener"    # Landroid/app/backup/SelectBackupTransportCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 703
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 704
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_27

    .line 706
    if-nez p2, :cond_b

    .line 707
    const/4 v0, 0x0

    goto :goto_12

    :cond_b
    :try_start_b
    new-instance v0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;

    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p2}, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;-><init>(Landroid/app/backup/BackupManager;Landroid/content/Context;Landroid/app/backup/SelectBackupTransportCallback;)V

    .line 708
    .local v0, "wrapper":Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;
    :goto_12
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v2, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    .line 709
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 708
    invoke-interface {v1, v2, p1, v0}, Landroid/app/backup/IBackupManager;->selectBackupTransportAsyncForUser(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1d} :catch_1e

    .line 712
    .end local v0    # "wrapper":Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;
    goto :goto_27

    .line 710
    :catch_1e
    move-exception v0

    .line 711
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "selectBackupTransportAsync() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_27
    :goto_27
    return-void
.end method

.method public whitelist semBackupPackage(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .registers 8
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "flag"    # I
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

    .line 1038
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 1039
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    const-string v1, "BackupManager"

    if-eqz v0, :cond_16

    .line 1041
    :try_start_9
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/backup/IBackupManager;->semBackupPackage(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return-object v0

    .line 1042
    :catch_e
    move-exception v0

    .line 1043
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "semBackupPackage() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1b

    .line 1046
    :cond_16
    const-string v0, "could not get backup service"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :goto_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist semBackupPackagePath(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/Map;
    .registers 13
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "flag"    # I
    .param p5, "paths"    # [Ljava/lang/String;
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

    .line 1077
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 1078
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    const-string v6, "BackupManager"

    if-eqz v0, :cond_1b

    .line 1080
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    :try_start_e
    invoke-interface/range {v0 .. v5}, Landroid/app/backup/IBackupManager;->semBackupPackagePath(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_12} :catch_13

    return-object v0

    .line 1081
    :catch_13
    move-exception v0

    .line 1082
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "semBackupPackagePath() couldn\'t connect"

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_20

    .line 1085
    :cond_1b
    const-string v0, "could not get backup service"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :goto_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist semIsBackupEnabled()Z
    .registers 4

    .line 1147
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 1148
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_15

    .line 1150
    :try_start_7
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->semIsBackupEnabled()Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return v0

    .line 1151
    :catch_c
    move-exception v0

    .line 1152
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "semIsBackupEnabled() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist semRestorePackage(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "password"    # Ljava/lang/String;

    .line 1105
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 1106
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    const-string v1, "BackupManager"

    if-eqz v0, :cond_15

    .line 1108
    :try_start_9
    invoke-interface {v0, p1, p2}, Landroid/app/backup/IBackupManager;->semRestorePackage(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_14

    .line 1109
    :catch_d
    move-exception v0

    .line 1110
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "semRestorePackage() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    goto :goto_1a

    .line 1113
    :cond_15
    const-string v0, "could not get backup service"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :goto_1a
    return-void
.end method

.method public whitelist semSetAutoRestoreEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 1192
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 1193
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_14

    .line 1195
    :try_start_7
    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->semSetAutoRestoreEnabled(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1198
    goto :goto_14

    .line 1196
    :catch_b
    move-exception v0

    .line 1197
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "semSetAutoRestoreEnabled() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method

.method public whitelist semSetBackupEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 1170
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 1171
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_14

    .line 1173
    :try_start_7
    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->semSetBackupEnabled(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1176
    goto :goto_14

    .line 1174
    :catch_b
    move-exception v0

    .line 1175
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "semSetBackupEnabled() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method

.method public whitelist setAncestralSerialNumber(J)V
    .registers 6
    .param p1, "ancestralSerialNumber"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 899
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 900
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_14

    .line 902
    :try_start_7
    invoke-interface {v0, p1, p2}, Landroid/app/backup/IBackupManager;->setAncestralSerialNumber(J)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 905
    goto :goto_14

    .line 903
    :catch_b
    move-exception v0

    .line 904
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "setAncestralSerialNumber() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method

.method public whitelist setAutoRestore(Z)V
    .registers 5
    .param p1, "isEnabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 494
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 495
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_14

    .line 497
    :try_start_7
    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 500
    goto :goto_14

    .line 498
    :catch_b
    move-exception v0

    .line 499
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "setAutoRestore() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method

.method public whitelist setBackupEnabled(Z)V
    .registers 5
    .param p1, "isEnabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 417
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 418
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_14

    .line 420
    :try_start_7
    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 423
    goto :goto_14

    .line 421
    :catch_b
    move-exception v0

    .line 422
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "setBackupEnabled() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method

.method public whitelist updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .registers 15
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "configurationIntent"    # Landroid/content/Intent;
    .param p4, "currentDestinationString"    # Ljava/lang/String;
    .param p5, "dataManagementIntent"    # Landroid/content/Intent;
    .param p6, "dataManagementLabel"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 644
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 645
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1f

    .line 647
    :try_start_7
    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    .line 648
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 647
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Landroid/app/backup/IBackupManager;->updateTransportAttributesForUser(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_16} :catch_17

    .line 657
    goto :goto_1f

    .line 655
    :catch_17
    move-exception v0

    .line 656
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "describeTransport() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    :goto_1f
    return-void
.end method

.method public whitelist updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 7
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "configurationIntent"    # Landroid/content/Intent;
    .param p4, "currentDestinationString"    # Ljava/lang/String;
    .param p5, "dataManagementIntent"    # Landroid/content/Intent;
    .param p6, "dataManagementLabel"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 602
    invoke-virtual/range {p0 .. p6}, Landroid/app/backup/BackupManager;->updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 609
    return-void
.end method
