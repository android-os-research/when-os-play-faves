.class public Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;
.super Ljava/lang/Object;
.source "SystemFileBackupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final DEFAULT_BACKUP_PERIOD:J

.field public static final JOB_BACKUP_REQUEST:I = 0x80fb54

.field public static final TAG:Ljava/lang/String; = "SystemFileBackupManager"

.field public static final TEST_MODE:Z = false

.field public static final sFileBackupServiceName:Landroid/content/ComponentName;

.field public static sInstance:Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;


# instance fields
.field public final mControllers:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/pm/rescueparty/BackupController;",
            ">;"
        }
    .end annotation
.end field

.field public mIsBackupRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mLock:Ljava/lang/Object;

.field public mSystemReady:Z


# direct methods
.method public static synthetic $r8$lambda$M4PUYZaR7m6szGbC8rBDpTwjWI0(Ljava/lang/String;Lcom/samsung/android/server/pm/rescueparty/BackupController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->lambda$notifySystemReady$0(Ljava/lang/String;Lcom/samsung/android/server/pm/rescueparty/BackupController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zGD0jGSoH0A9CK6ZZmfHSgfSJ1w(Ljava/lang/String;Lcom/samsung/android/server/pm/rescueparty/BackupController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->lambda$requestBackupFiles$1(Ljava/lang/String;Lcom/samsung/android/server/pm/rescueparty/BackupController;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrequestBackupFiles(Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->requestBackupFiles()Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 25
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 26
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->DEFAULT_BACKUP_PERIOD:J

    .line 34
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService;

    .line 35
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->sFileBackupServiceName:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mControllers:Landroid/util/ArrayMap;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mSystemReady:Z

    .line 32
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mIsBackupRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;
    .registers 2

    .line 39
    const-class v0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    monitor-enter v0

    .line 40
    :try_start_3
    sget-object v1, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->sInstance:Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    if-nez v1, :cond_e

    .line 41
    new-instance v1, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    invoke-direct {v1}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;-><init>()V

    sput-object v1, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->sInstance:Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    .line 43
    :cond_e
    sget-object v1, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->sInstance:Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    .line 44
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static synthetic lambda$notifySystemReady$0(Ljava/lang/String;Lcom/samsung/android/server/pm/rescueparty/BackupController;)V
    .registers 4

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notifying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " of system ready"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SystemFileBackupManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-interface {p1}, Lcom/samsung/android/server/pm/rescueparty/BackupController;->onSystemReady()V

    return-void
.end method

.method public static synthetic lambda$requestBackupFiles$1(Ljava/lang/String;Lcom/samsung/android/server/pm/rescueparty/BackupController;)V
    .registers 3

    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Saving files for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/server/pm/rescueparty/BackupController;->getControllerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SystemFileBackupManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-interface {p1}, Lcom/samsung/android/server/pm/rescueparty/BackupController;->saveFiles()V

    return-void
.end method


# virtual methods
.method public final notifySystemReady()V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mControllers:Landroid/util/ArrayMap;

    new-instance v1, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 74
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public onSystemReady(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mSystemReady:Z

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->notifySystemReady()V

    .line 53
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->scheduleJob(Landroid/content/Context;)V

    return-void
.end method

.method public registerController(Lcom/samsung/android/server/pm/rescueparty/BackupController;)V
    .registers 6

    .line 78
    invoke-interface {p1}, Lcom/samsung/android/server/pm/rescueparty/BackupController;->getControllerName()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    const-string v1, "SystemFileBackupManager"

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Controller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v1, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_29
    iget-object p0, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mControllers:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    monitor-exit v1

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public final requestBackupFiles()Z
    .registers 6

    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mSystemReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const-string p0, "SystemFileBackupManager"

    const-string v0, "System is not ready"

    .line 93
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 96
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mIsBackupRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string p0, "SystemFileBackupManager"

    const-string v0, "Backup is running"

    .line 97
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 100
    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mIsBackupRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_26
    iget-object v3, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mControllers:Landroid/util/ArrayMap;

    new-instance v4, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 106
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_26 .. :try_end_31} :catchall_37

    .line 107
    iget-object p0, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mIsBackupRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v2

    :catchall_37
    move-exception p0

    .line 106
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public final scheduleJob(Landroid/content/Context;)V
    .registers 4

    .line 57
    const-class p0, Landroid/app/job/JobScheduler;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 58
    new-instance p1, Landroid/app/job/JobInfo$Builder;

    sget-object v0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->sFileBackupServiceName:Landroid/content/ComponentName;

    const v1, 0x80fb54

    invoke-direct {p1, v1, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 59
    sget-wide v0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->DEFAULT_BACKUP_PERIOD:J

    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 63
    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method
