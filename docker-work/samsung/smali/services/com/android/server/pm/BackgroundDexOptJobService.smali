.class public final Lcom/android/server/pm/BackgroundDexOptJobService;
.super Landroid/app/job/JobService;
.source "BackgroundDexOptJobService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 3

    .line 30
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->getService()Lcom/android/server/pm/BackgroundDexOptService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/BackgroundDexOptService;->onStartJob(Lcom/android/server/pm/BackgroundDexOptJobService;Landroid/app/job/JobParameters;)Z

    move-result p0

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 3

    .line 35
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->getService()Lcom/android/server/pm/BackgroundDexOptService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/BackgroundDexOptService;->onStopJob(Lcom/android/server/pm/BackgroundDexOptJobService;Landroid/app/job/JobParameters;)Z

    move-result p0

    return p0
.end method
