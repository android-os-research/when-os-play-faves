.class public Lcom/android/server/usage/UsageStatsIdleService;
.super Landroid/app/job/JobService;
.source "UsageStatsIdleService.java"


# static fields
.field public static final PRUNE_JOB_ID:I = 0x2090c0e3

.field public static final UPDATE_MAPPINGS_JOB_ID:I = 0x209114c6

.field public static final USER_ID_KEY:Ljava/lang/String; = "user_id"


# direct methods
.method public static synthetic $r8$lambda$ZsYfqAFXuTM24Y9yxnOo-eCaFQc(Lcom/android/server/usage/UsageStatsIdleService;Landroid/app/job/JobParameters;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UsageStatsIdleService;->lambda$onStartJob$0(Landroid/app/job/JobParameters;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static cancelJob(Landroid/content/Context;I)V
    .registers 3

    const v0, 0x2090c0e3

    add-int/2addr p1, v0

    .line 87
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsIdleService;->cancelJobInternal(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelJobInternal(Landroid/content/Context;I)V
    .registers 3

    .line 95
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    if-eqz p0, :cond_d

    .line 97
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    :cond_d
    return-void
.end method

.method public static cancelUpdateMappingsJob(Landroid/content/Context;)V
    .registers 2

    const v0, 0x209114c6

    .line 91
    invoke-static {p0, v0}, Lcom/android/server/usage/UsageStatsIdleService;->cancelJobInternal(Landroid/content/Context;I)V

    return-void
.end method

.method private synthetic lambda$onStartJob$0(Landroid/app/job/JobParameters;I)V
    .registers 6

    .line 110
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 112
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    const v2, 0x209114c6

    if-ne v1, v2, :cond_1b

    .line 113
    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManagerInternal;->updatePackageMappingsData()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 114
    invoke-virtual {p0, p1, p2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_24

    .line 117
    :cond_1b
    invoke-virtual {v0, p2}, Landroid/app/usage/UsageStatsManagerInternal;->pruneUninstalledPackagesData(I)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 118
    invoke-virtual {p0, p1, p2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :goto_24
    return-void
.end method

.method public static scheduleJob(Landroid/content/Context;I)V
    .registers 6

    const v0, 0x2090c0e3

    add-int/2addr v0, p1

    .line 51
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/server/usage/UsageStatsIdleService;

    .line 52
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    const-string/jumbo v3, "user_id"

    .line 54
    invoke-virtual {v2, v3, p1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 55
    new-instance p1, Landroid/app/job/JobInfo$Builder;

    invoke-direct {p1, v0, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v1, 0x1

    .line 56
    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 57
    invoke-virtual {p1, v2}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 58
    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    .line 61
    invoke-static {p0, p1, v0}, Lcom/android/server/usage/UsageStatsIdleService;->scheduleJobInternal(Landroid/content/Context;Landroid/app/job/JobInfo;I)V

    return-void
.end method

.method public static scheduleJobInternal(Landroid/content/Context;Landroid/app/job/JobInfo;I)V
    .registers 4

    .line 77
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 78
    invoke-virtual {p0, p2}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 81
    invoke-virtual {p0, p2}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 82
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_18
    return-void
.end method

.method public static scheduleUpdateMappingsJob(Landroid/content/Context;)V
    .registers 6

    .line 65
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/server/usage/UsageStatsIdleService;

    .line 66
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    const v2, 0x209114c6

    invoke-direct {v1, v2, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v0, 0x1

    .line 68
    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    .line 69
    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    const-wide/16 v3, 0x2

    .line 70
    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 73
    invoke-static {p0, v0, v2}, Lcom/android/server/usage/UsageStatsIdleService;->scheduleJobInternal(Landroid/content/Context;Landroid/app/job/JobInfo;I)V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 5

    .line 103
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    const/4 v2, -0x1

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_19

    .line 105
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    const v2, 0x209114c6

    if-eq v1, v2, :cond_19

    const/4 p0, 0x0

    return p0

    .line 109
    :cond_19
    new-instance v1, Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/UsageStatsIdleService;Landroid/app/job/JobParameters;I)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
