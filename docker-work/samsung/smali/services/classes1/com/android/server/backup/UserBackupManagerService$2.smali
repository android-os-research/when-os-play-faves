.class public Lcom/android/server/backup/UserBackupManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "UserBackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/UserBackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method public static synthetic $r8$lambda$BDvoFdX2tc58DuGaprVSobwAfeE(Lcom/android/server/backup/UserBackupManagerService$2;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService$2;->lambda$onReceive$0(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZlwKjzcrcVwVFUpTR5wEnvQeDqk(Lcom/android/server/backup/UserBackupManagerService$2;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService$2;->lambda$onReceive$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zkL4lkBVsrp0I18zMORcBirzgr4(Lcom/android/server/backup/UserBackupManagerService$2;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService$2;->lambda$onReceive$1(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .registers 2

    .line 1396
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 1444
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->onPackageChanged(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onReceive$1(Ljava/lang/String;)V
    .registers 2

    .line 1499
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->onPackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onReceive$2(Ljava/lang/String;)V
    .registers 2

    .line 1527
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->onPackageRemoved(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    .line 1402
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1406
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 1409
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_45

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 1410
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 1411
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_45

    :cond_24
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 1451
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string p1, "android.intent.extra.changed_package_list"

    .line 1453
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move p1, v3

    goto :goto_7f

    :cond_34
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 1454
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    const-string p1, "android.intent.extra.changed_package_list"

    .line 1456
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :cond_42
    move p1, v3

    move v2, p1

    goto :goto_7f

    .line 1412
    :cond_45
    :goto_45
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_4c

    return-void

    .line 1417
    :cond_4c
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_56

    new-array v4, v2, [Ljava/lang/String;

    aput-object v1, v4, v3

    :cond_56
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 1422
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    const-string p1, "android.intent.extra.changed_component_name_list"

    .line 1426
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1442
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {p2}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmBackupHandler(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object p2

    new-instance v0, Lcom/android/server/backup/UserBackupManagerService$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/backup/UserBackupManagerService$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/UserBackupManagerService$2;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_73
    const-string p2, "android.intent.action.PACKAGE_ADDED"

    .line 1449
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string p1, "android.intent.extra.REPLACING"

    .line 1450
    invoke-virtual {v0, p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    :goto_7f
    if-eqz v4, :cond_15f

    .line 1459
    array-length p2, v4

    if-nez p2, :cond_86

    goto/16 :goto_15f

    :cond_86
    const-string p2, "android.intent.extra.UID"

    .line 1463
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-eqz v2, :cond_136

    .line 1465
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmBackupParticipants(Lcom/android/server/backup/UserBackupManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_9c

    .line 1470
    :try_start_97
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {p1, v4, p2}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$mremovePackageParticipantsLocked(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;I)V

    .line 1472
    :cond_9c
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {p1, v4}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$maddPackageParticipantsLocked(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;)V

    .line 1473
    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_97 .. :try_end_a2} :catchall_133

    .line 1475
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 1476
    array-length v0, v4

    move v1, v3

    :goto_a8
    if-ge v1, v0, :cond_12b

    aget-object v2, v4, v1

    .line 1478
    :try_start_ac
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/backup/UserBackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v6}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmUserId(Lcom/android/server/backup/UserBackupManagerService;)I

    move-result v6

    .line 1479
    invoke-virtual {v5, v2, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1481
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v6}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmScheduledBackupEligibility(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_e3

    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v6}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmScheduledBackupEligibility(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v6

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1482
    invoke-virtual {v6, v5}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_e3

    .line 1484
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5, v2, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    .line 1485
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    goto :goto_f5

    .line 1492
    :cond_e3
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmQueueLock(Lcom/android/server/backup/UserBackupManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_ea
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ac .. :try_end_ea} :catch_107

    .line 1493
    :try_start_ea
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v6, v2}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$mdequeueFullBackupLocked(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;)V

    .line 1494
    monitor-exit v5
    :try_end_f0
    .catchall {:try_start_ea .. :try_end_f0} :catchall_104

    .line 1495
    :try_start_f0
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$mwriteFullBackupScheduleAsync(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 1498
    :goto_f5
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmBackupHandler(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v5

    new-instance v6, Lcom/android/server/backup/UserBackupManagerService$2$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v2}, Lcom/android/server/backup/UserBackupManagerService$2$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/backup/UserBackupManagerService$2;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_103
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f0 .. :try_end_103} :catch_107

    goto :goto_127

    :catchall_104
    move-exception v6

    .line 1494
    :try_start_105
    monitor-exit v5
    :try_end_106
    .catchall {:try_start_105 .. :try_end_106} :catchall_104

    :try_start_106
    throw v6
    :try_end_107
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_106 .. :try_end_107} :catch_107

    :catch_107
    const-string v5, "BackupManagerService"

    .line 1502
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v6}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmUserId(Lcom/android/server/backup/UserBackupManagerService;)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t resolve new app "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1504
    invoke-static {v6, v2}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$smaddUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1502
    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_127
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a8

    .line 1514
    :cond_12b
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    const-string p1, "@pm@"

    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto :goto_15f

    :catchall_133
    move-exception p0

    .line 1473
    :try_start_134
    monitor-exit v0
    :try_end_135
    .catchall {:try_start_134 .. :try_end_135} :catchall_133

    throw p0

    :cond_136
    if-nez p1, :cond_149

    .line 1520
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {p1}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmBackupParticipants(Lcom/android/server/backup/UserBackupManagerService;)Landroid/util/SparseArray;

    move-result-object p1

    monitor-enter p1

    .line 1521
    :try_start_13f
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0, v4, p2}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$mremovePackageParticipantsLocked(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;I)V

    .line 1522
    monitor-exit p1

    goto :goto_149

    :catchall_146
    move-exception p0

    monitor-exit p1
    :try_end_148
    .catchall {:try_start_13f .. :try_end_148} :catchall_146

    throw p0

    .line 1525
    :cond_149
    :goto_149
    array-length p1, v4

    :goto_14a
    if-ge v3, p1, :cond_15f

    aget-object p2, v4, v3

    .line 1526
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmBackupHandler(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/backup/UserBackupManagerService$2$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Lcom/android/server/backup/UserBackupManagerService$2$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/backup/UserBackupManagerService$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_14a

    :cond_15f
    :goto_15f
    return-void
.end method
