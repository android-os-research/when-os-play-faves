.class public Lcom/android/server/MountServiceIdler;
.super Landroid/app/job/JobService;
.source "MountServiceIdler.java"


# static fields
.field public static MOUNT_JOB_ID:I = 0x0

.field public static final TAG:Ljava/lang/String; = "MountServiceIdler"

.field public static sIdleService:Landroid/content/ComponentName;


# instance fields
.field public mFinishCallback:Ljava/lang/Runnable;

.field public mJobParams:Landroid/app/job/JobParameters;

.field public mStarted:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmFinishCallback(Lcom/android/server/MountServiceIdler;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmJobParams(Lcom/android/server/MountServiceIdler;)Landroid/app/job/JobParameters;
    .registers 1

    iget-object p0, p0, Lcom/android/server/MountServiceIdler;->mJobParams:Landroid/app/job/JobParameters;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStarted(Lcom/android/server/MountServiceIdler;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmStarted(Lcom/android/server/MountServiceIdler;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 35
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/MountServiceIdler;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/MountServiceIdler;->sIdleService:Landroid/content/ComponentName;

    const/16 v0, 0x328

    .line 38
    sput v0, Lcom/android/server/MountServiceIdler;->MOUNT_JOB_ID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 42
    new-instance v0, Lcom/android/server/MountServiceIdler$1;

    invoke-direct {v0, p0}, Lcom/android/server/MountServiceIdler$1;-><init>(Lcom/android/server/MountServiceIdler;)V

    iput-object v0, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public static offsetFromTodayMidnight(II)Ljava/util/Calendar;
    .registers 5

    .line 122
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    .line 124
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    const/4 v1, 0x0

    .line 125
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 126
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 127
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 128
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->add(II)V

    return-object v0
.end method

.method public static scheduleIdlePass(Landroid/content/Context;)V
    .registers 11

    const-string/jumbo v0, "jobscheduler"

    .line 100
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 102
    invoke-static {v0, v1}, Lcom/android/server/MountServiceIdler;->offsetFromTodayMidnight(II)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/4 v4, 0x4

    .line 103
    invoke-static {v0, v4}, Lcom/android/server/MountServiceIdler;->offsetFromTodayMidnight(II)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/4 v0, 0x1

    .line 104
    invoke-static {v0, v1}, Lcom/android/server/MountServiceIdler;->offsetFromTodayMidnight(II)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v1, v8, v2

    if-lez v1, :cond_3e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-gez v1, :cond_3e

    .line 108
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    goto :goto_44

    .line 110
    :cond_3e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v6, v1

    .line 113
    :goto_44
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    sget v4, Lcom/android/server/MountServiceIdler;->MOUNT_JOB_ID:I

    sget-object v5, Lcom/android/server/MountServiceIdler;->sIdleService:Landroid/content/ComponentName;

    invoke-direct {v3, v4, v5}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 114
    invoke-virtual {v3, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 115
    invoke-virtual {v3, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 116
    invoke-virtual {v3, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 117
    invoke-virtual {v3, v1, v2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 118
    invoke-virtual {v3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    .line 63
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->performIdleMaintenance()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_7

    .line 70
    :catch_7
    iput-object p1, p0, Lcom/android/server/MountServiceIdler;->mJobParams:Landroid/app/job/JobParameters;

    .line 71
    sget-object p1, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    const/4 v0, 0x1

    if-eqz p1, :cond_1d

    .line 73
    iget-object v1, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    monitor-enter v1

    .line 74
    :try_start_11
    iput-boolean v0, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    .line 75
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_1a

    .line 76
    iget-object p0, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lcom/android/server/StorageManagerService;->runIdleMaint(Ljava/lang/Runnable;)V

    goto :goto_1d

    :catchall_1a
    move-exception p0

    .line 75
    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0

    :cond_1d
    :goto_1d
    if-eqz p1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    .line 86
    sget-object p1, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    .line 88
    iget-object v1, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Lcom/android/server/StorageManagerService;->abortIdleMaint(Ljava/lang/Runnable;)V

    .line 89
    iget-object p1, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    monitor-enter p1

    .line 90
    :try_start_d
    iput-boolean v0, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    .line 91
    monitor-exit p1

    goto :goto_14

    :catchall_11
    move-exception p0

    monitor-exit p1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_11

    throw p0

    :cond_14
    :goto_14
    return v0
.end method
