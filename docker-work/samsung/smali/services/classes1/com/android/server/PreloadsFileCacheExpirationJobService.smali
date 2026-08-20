.class public Lcom/android/server/PreloadsFileCacheExpirationJobService;
.super Landroid/app/job/JobService;
.source "PreloadsFileCacheExpirationJobService.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final JOB_ID:I = 0x18894

.field public static final PERSIST_SYS_PRELOADS_FILE_CACHE_EXPIRED:Ljava/lang/String; = "persist.sys.preloads.file_cache_expired"

.field public static final TAG:Ljava/lang/String; = "PreloadsFileCacheExpirationJobService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .registers 9

    .line 51
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 53
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, v0

    .line 54
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const/4 v4, 0x1

    add-int/2addr v0, v4

    int-to-long v5, v0

    .line 56
    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 63
    new-instance v5, Landroid/app/job/JobInfo$Builder;

    new-instance v6, Landroid/content/ComponentName;

    const-class v7, Lcom/android/server/PreloadsFileCacheExpirationJobService;

    invoke-direct {v6, p0, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v7, 0x18894

    invoke-direct {v5, v7, v6}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 65
    invoke-virtual {v5, v4}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    .line 66
    invoke-virtual {v4, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 67
    invoke-virtual {v2, v0, v1}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 70
    const-class v1, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 71
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    const-string/jumbo p0, "persist.sys.preloads.file_cache_expired"

    const-string p1, "1"

    .line 76
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "PreloadsFileCacheExpirationJobService"

    const-string p1, "Set persist.sys.preloads.file_cache_expired=1"

    .line 77
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
