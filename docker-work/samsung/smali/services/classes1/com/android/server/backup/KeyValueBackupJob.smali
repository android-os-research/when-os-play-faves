.class public Lcom/android/server/backup/KeyValueBackupJob;
.super Landroid/app/job/JobService;
.source "KeyValueBackupJob.java"


# static fields
.field public static final MAX_DEFERRAL:J = 0x5265c00L

.field public static final MAX_JOB_ID:I = 0x31fd950
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MIN_JOB_ID:I = 0x31fd568
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "KeyValueBackupJob"

.field public static final USER_ID_EXTRA_KEY:Ljava/lang/String; = "userId"

.field public static sKeyValueJobService:Landroid/content/ComponentName;

.field public static final sNextScheduledForUserId:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "KeyValueBackupJob.class"
        }
    .end annotation
.end field

.field public static final sScheduledForUserId:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "KeyValueBackupJob.class"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 46
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/backup/KeyValueBackupJob;

    .line 47
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/backup/KeyValueBackupJob;->sKeyValueJobService:Landroid/content/ComponentName;

    .line 58
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/android/server/backup/KeyValueBackupJob;->sScheduledForUserId:Landroid/util/SparseBooleanArray;

    .line 60
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    sput-object v0, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduledForUserId:Landroid/util/SparseLongArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static cancel(ILandroid/content/Context;)V
    .registers 4

    .line 116
    const-class v0, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "jobscheduler"

    .line 117
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    .line 119
    invoke-static {p0}, Lcom/android/server/backup/KeyValueBackupJob;->getJobIdForUserId(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 121
    invoke-static {p0}, Lcom/android/server/backup/KeyValueBackupJob;->clearScheduledForUserId(I)V

    .line 122
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public static clearScheduledForUserId(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "KeyValueBackupJob.class"
        }
    .end annotation

    .line 165
    sget-object v0, Lcom/android/server/backup/KeyValueBackupJob;->sScheduledForUserId:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 166
    sget-object v0, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduledForUserId:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseLongArray;->delete(I)V

    return-void
.end method

.method public static getJobIdForUserId(I)I
    .registers 3

    const v0, 0x31fd568

    const v1, 0x31fd950

    .line 170
    invoke-static {v0, v1, p0}, Lcom/android/server/backup/JobIdManager;->getJobIdForUserId(III)I

    move-result p0

    return p0
.end method

.method public static isScheduled(I)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 133
    const-class v0, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v0

    .line 134
    :try_start_3
    sget-object v1, Lcom/android/server/backup/KeyValueBackupJob;->sScheduledForUserId:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 135
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public static nextScheduled(I)J
    .registers 4

    .line 126
    const-class v0, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v0

    .line 127
    :try_start_3
    sget-object v1, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduledForUserId:Landroid/util/SparseLongArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_b
    move-exception p0

    .line 128
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public static schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V
    .registers 15

    .line 73
    const-class v0, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v0

    .line 74
    :try_start_3
    sget-object v1, Lcom/android/server/backup/KeyValueBackupJob;->sScheduledForUserId:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 75
    monitor-exit v0

    return-void

    .line 83
    :cond_d
    monitor-enter p4
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_a2

    .line 84
    :try_start_e
    invoke-virtual {p4}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupIntervalMilliseconds()J

    move-result-wide v2

    .line 85
    invoke-virtual {p4}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupFuzzMilliseconds()J

    move-result-wide v4

    .line 86
    invoke-virtual {p4}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupRequiredNetworkType()I

    move-result v6

    .line 87
    invoke-virtual {p4}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupRequireCharging()Z

    move-result v7

    .line 88
    monitor-exit p4
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_9f

    const-wide/16 v8, 0x0

    cmp-long p4, p2, v8

    if-gtz p4, :cond_31

    .line 90
    :try_start_25
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    long-to-int p3, v4

    invoke-virtual {p2, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    int-to-long p2, p2

    add-long/2addr p2, v2

    :cond_31
    const-string p4, "KeyValueBackupJob"

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling k/v pass in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x3e8

    div-long v3, p2, v3

    const-wide/16 v8, 0x3c

    div-long/2addr v3, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " minutes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance p4, Landroid/app/job/JobInfo$Builder;

    invoke-static {p0}, Lcom/android/server/backup/KeyValueBackupJob;->getJobIdForUserId(I)I

    move-result v2

    sget-object v3, Lcom/android/server/backup/KeyValueBackupJob;->sKeyValueJobService:Landroid/content/ComponentName;

    invoke-direct {p4, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 98
    invoke-virtual {p4, p2, p3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p4

    .line 99
    invoke-virtual {p4, v6}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p4

    .line 100
    invoke-virtual {p4, v7}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p4

    const-wide/32 v2, 0x5265c00

    .line 101
    invoke-virtual {p4, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p4

    .line 103
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "userId"

    .line 104
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    invoke-virtual {p4, v2}, Landroid/app/job/JobInfo$Builder;->setTransientExtras(Landroid/os/Bundle;)Landroid/app/job/JobInfo$Builder;

    const-string/jumbo v2, "jobscheduler"

    .line 107
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    .line 108
    invoke-virtual {p4}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    const/4 p1, 0x1

    .line 110
    invoke-virtual {v1, p0, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 111
    sget-object p1, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduledForUserId:Landroid/util/SparseLongArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-virtual {p1, p0, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 112
    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_25 .. :try_end_9e} :catchall_a2

    return-void

    :catchall_9f
    move-exception p0

    .line 88
    :try_start_a0
    monitor-exit p4
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    :try_start_a1
    throw p0

    :catchall_a2
    move-exception p0

    .line 112
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_a2

    throw p0
.end method

.method public static schedule(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V
    .registers 5

    const-wide/16 v0, 0x0

    .line 68
    invoke-static {p0, p1, v0, v1, p2}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    .line 140
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "userId"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 142
    const-class p1, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter p1

    .line 143
    :try_start_e
    invoke-static {p0}, Lcom/android/server/backup/KeyValueBackupJob;->clearScheduledForUserId(I)V

    .line 144
    monitor-exit p1
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_1b

    .line 147
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->getInstance()Lcom/android/server/backup/BackupManagerService;

    move-result-object p1

    .line 149
    :try_start_16
    invoke-virtual {p1, p0}, Lcom/android/server/backup/BackupManagerService;->backupNowForUser(I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_19

    :catch_19
    const/4 p0, 0x0

    return p0

    :catchall_1b
    move-exception p0

    .line 144
    :try_start_1c
    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
