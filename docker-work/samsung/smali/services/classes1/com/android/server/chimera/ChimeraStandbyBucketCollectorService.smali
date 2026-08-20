.class public Lcom/android/server/chimera/ChimeraStandbyBucketCollectorService;
.super Landroid/app/job/JobService;
.source "ChimeraStandbyBucketCollectorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/chimera/ChimeraStandbyBucketCollectorService$CollectorRunnable;
    }
.end annotation


# static fields
.field public static final DAY_MILLIS:J = 0x5265c00L

.field public static final HALF_YEAR_MILLIS:J = 0x39ef8b000L

.field public static final TAG:Ljava/lang/String; = "ChimeraStandbyBucketCollectorService"

.field public static final TWO_YEAR_MILLIS:J = 0xeaf625800L

.field public static sSBCollectorService:Landroid/content/ComponentName;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 17
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/chimera/ChimeraStandbyBucketCollectorService;

    .line 19
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/chimera/ChimeraStandbyBucketCollectorService;->sSBCollectorService:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .registers 7

    const-string v0, "ChimeraStandbyBucketCollectorService"

    const-string/jumbo v1, "jobscheduler"

    .line 77
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 78
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget-object v2, Lcom/android/server/chimera/ChimeraStandbyBucketCollectorService;->sSBCollectorService:Landroid/content/ComponentName;

    const/16 v3, 0x26ac

    invoke-direct {v1, v3, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/32 v2, 0x5265c00

    const-wide/32 v4, 0x4f1a00

    .line 81
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 82
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 83
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 87
    :try_start_2b
    invoke-virtual {p0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    const-string p0, "Collect StandbyBucket job..."

    .line 88
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_33} :catch_34

    goto :goto_4d

    :catch_34
    move-exception p0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Collect StandbyBucket has exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4d
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    .line 67
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/chimera/ChimeraStandbyBucketCollectorService$CollectorRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/server/chimera/ChimeraStandbyBucketCollectorService$CollectorRunnable;-><init>(Lcom/android/server/chimera/ChimeraStandbyBucketCollectorService;Landroid/app/job/JobParameters;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
