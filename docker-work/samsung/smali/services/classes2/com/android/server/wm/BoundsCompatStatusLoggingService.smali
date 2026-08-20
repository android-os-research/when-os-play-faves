.class public Lcom/android/server/wm/BoundsCompatStatusLoggingService;
.super Landroid/app/job/JobService;
.source "BoundsCompatStatusLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BoundsCompatStatusLoggingService$IdleLoggingThread;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final IDLE_LOGGING_JOB_ID:I = 0x18c2283f

.field public static final IDLE_LOGGING_PERIOD_MILLIS:J

.field public static TAG:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/wm/BoundsCompatStatusLoggingService;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 39
    const-class v0, Lcom/android/server/wm/BoundsCompatStatusLoggingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/BoundsCompatStatusLoggingService;->TAG:Ljava/lang/String;

    .line 41
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/wm/BoundsCompatStatusLoggingService;->DEBUG:Z

    .line 44
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wm/BoundsCompatStatusLoggingService;->IDLE_LOGGING_PERIOD_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .registers 5

    .line 50
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/wm/BoundsCompatStatusLoggingService;

    .line 51
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "jobscheduler"

    .line 53
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 54
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    const v3, 0x18c2283f

    invoke-direct {v2, v3, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v0, 0x1

    .line 62
    invoke-virtual {v2, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 63
    invoke-virtual {v2, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    sget-wide v2, Lcom/android/server/wm/BoundsCompatStatusLoggingService;->IDLE_LOGGING_PERIOD_MILLIS:J

    .line 64
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 54
    invoke-virtual {v1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 67
    invoke-static {}, Lcom/android/server/wm/BoundsCompatStatusLogger;->get()Lcom/android/server/wm/BoundsCompatStatusLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/BoundsCompatStatusLogger;->init(Landroid/content/Context;)V

    .line 69
    sget-boolean p0, Lcom/android/server/wm/BoundsCompatStatusLoggingService;->DEBUG:Z

    if-eqz p0, :cond_45

    .line 70
    sget-object p0, Lcom/android/server/wm/BoundsCompatStatusLoggingService;->TAG:Ljava/lang/String;

    const-string v0, "Jobs scheduled"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 6

    .line 76
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    .line 77
    sget-boolean v1, Lcom/android/server/wm/BoundsCompatStatusLoggingService;->DEBUG:Z

    if-eqz v1, :cond_1f

    .line 78
    sget-object v1, Lcom/android/server/wm/BoundsCompatStatusLoggingService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStartJob "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const v1, 0x18c2283f

    if-eq v0, v1, :cond_26

    const/4 p0, 0x0

    return p0

    .line 82
    :cond_26
    new-instance v0, Lcom/android/server/wm/BoundsCompatStatusLoggingService$IdleLoggingThread;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/BoundsCompatStatusLoggingService$IdleLoggingThread;-><init>(Lcom/android/server/wm/BoundsCompatStatusLoggingService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    .line 92
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p0

    .line 93
    sget-boolean p1, Lcom/android/server/wm/BoundsCompatStatusLoggingService;->DEBUG:Z

    if-eqz p1, :cond_1f

    .line 94
    sget-object p1, Lcom/android/server/wm/BoundsCompatStatusLoggingService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStopJob "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const p1, 0x18c2283f

    if-eq p0, p1, :cond_26

    const/4 p0, 0x0

    return p0

    :cond_26
    const/4 p0, 0x1

    return p0
.end method
