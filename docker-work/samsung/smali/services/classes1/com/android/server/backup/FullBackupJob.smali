.class public Lcom/android/server/backup/FullBackupJob;
.super Landroid/app/job/JobService;
.source "FullBackupJob.java"


# static fields
.field public static final MAX_JOB_ID:I = 0x31fdd38
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MIN_JOB_ID:I = 0x31fd950
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final USER_ID_EXTRA_KEY:Ljava/lang/String; = "userId"

.field public static sIdleService:Landroid/content/ComponentName;


# instance fields
.field public final mParamsForUser:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mParamsForUser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/job/JobParameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 41
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/backup/FullBackupJob;

    .line 42
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/backup/FullBackupJob;->sIdleService:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    return-void
.end method

.method public static cancel(ILandroid/content/Context;)V
    .registers 3

    const-string/jumbo v0, "jobscheduler"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    .line 70
    invoke-static {p0}, Lcom/android/server/backup/FullBackupJob;->getJobIdForUserId(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void
.end method

.method public static getJobIdForUserId(I)I
    .registers 3

    const v0, 0x31fd950

    const v1, 0x31fdd38

    .line 115
    invoke-static {v0, v1, p0}, Lcom/android/server/backup/JobIdManager;->getJobIdForUserId(III)I

    move-result p0

    return p0
.end method

.method public static schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V
    .registers 8

    const-string/jumbo v0, "jobscheduler"

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    .line 50
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    invoke-static {p0}, Lcom/android/server/backup/FullBackupJob;->getJobIdForUserId(I)I

    move-result v1

    sget-object v2, Lcom/android/server/backup/FullBackupJob;->sIdleService:Landroid/content/ComponentName;

    invoke-direct {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 51
    monitor-enter p4

    const/4 v1, 0x1

    .line 52
    :try_start_16
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 53
    invoke-virtual {p4}, Lcom/android/server/backup/BackupManagerConstants;->getFullBackupRequiredNetworkType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 54
    invoke-virtual {p4}, Lcom/android/server/backup/BackupManagerConstants;->getFullBackupRequireCharging()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 55
    monitor-exit p4
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_49

    const-wide/16 v1, 0x0

    cmp-long p4, p2, v1

    if-lez p4, :cond_33

    .line 57
    invoke-virtual {v0, p2, p3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 60
    :cond_33
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p3, "userId"

    .line 61
    invoke-virtual {p2, p3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    invoke-virtual {v0, p2}, Landroid/app/job/JobInfo$Builder;->setTransientExtras(Landroid/os/Bundle;)Landroid/app/job/JobInfo$Builder;

    .line 64
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void

    :catchall_49
    move-exception p0

    .line 55
    :try_start_4a
    monitor-exit p4
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p0
.end method


# virtual methods
.method public finishBackupPass(I)V
    .registers 5

    .line 75
    iget-object v0, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    monitor-enter v0

    .line 76
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobParameters;

    if-eqz v1, :cond_16

    const/4 v2, 0x0

    .line 78
    invoke-virtual {p0, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 79
    iget-object p0, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 81
    :cond_16
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 5

    .line 88
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 90
    iget-object v1, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    monitor-enter v1

    .line 91
    :try_start_e
    iget-object v2, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_1d

    .line 94
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->getInstance()Lcom/android/server/backup/BackupManagerService;

    move-result-object p1

    .line 95
    invoke-virtual {p1, v0, p0}, Lcom/android/server/backup/BackupManagerService;->beginFullBackup(ILcom/android/server/backup/FullBackupJob;)Z

    move-result p0

    return p0

    :catchall_1d
    move-exception p0

    .line 92
    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    .line 100
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "userId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 102
    iget-object v0, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    monitor-enter v0

    .line 103
    :try_start_e
    iget-object p0, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_19

    .line 104
    monitor-exit v0

    return v1

    .line 106
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_22

    .line 108
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->getInstance()Lcom/android/server/backup/BackupManagerService;

    move-result-object p0

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->endFullBackup(I)V

    return v1

    :catchall_22
    move-exception p0

    .line 106
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method
