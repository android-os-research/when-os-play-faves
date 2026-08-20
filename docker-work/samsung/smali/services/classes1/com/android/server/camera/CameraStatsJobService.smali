.class public Lcom/android/server/camera/CameraStatsJobService;
.super Landroid/app/job/JobService;
.source "CameraStatsJobService.java"


# static fields
.field public static final CAMERA_REPORTING_JOB_ID:I = 0xca3e7a

.field public static final TAG:Ljava/lang/String; = "CameraStatsJobService"

.field public static sCameraStatsJobServiceName:Landroid/content/ComponentName;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 41
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/camera/CameraStatsJobService;

    .line 43
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/camera/CameraStatsJobService;->sCameraStatsJobServiceName:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .registers 5

    const-string/jumbo v0, "jobscheduler"

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    if-nez p0, :cond_13

    const-string p0, "CameraStatsJobService"

    const-string v0, "Can\'t collect camera usage stats - no Job Scheduler"

    .line 67
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 70
    :cond_13
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    const v1, 0xca3e7a

    sget-object v2, Lcom/android/server/camera/CameraStatsJobService;->sCameraStatsJobServiceName:Landroid/content/ComponentName;

    invoke-direct {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    .line 71
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 70
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 3

    .line 47
    const-class p0, Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/camera/CameraServiceProxy;

    const/4 p1, 0x0

    if-nez p0, :cond_13

    const-string p0, "CameraStatsJobService"

    const-string v0, "Can\'t collect camera usage stats - no camera service proxy found"

    .line 49
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 53
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->dumpUsageEvents()V

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
