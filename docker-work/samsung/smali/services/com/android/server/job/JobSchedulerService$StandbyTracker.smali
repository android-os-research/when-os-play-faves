.class public final Lcom/android/server/job/JobSchedulerService$StandbyTracker;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StandbyTracker"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 2888
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .registers 6

    return-void
.end method

.method public onUserInteractionStarted(Ljava/lang/String;I)V
    .registers 12

    .line 2900
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x2000

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    if-gez v4, :cond_d

    return-void

    .line 2907
    :cond_d
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/app/usage/UsageStatsManagerInternal;->getTimeSinceLastJobRun(Ljava/lang/String;I)J

    move-result-wide p1

    const-wide/32 v0, 0xa4cb800

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x0

    if-lez v0, :cond_20

    move-wide v7, v1

    goto :goto_21

    :cond_20
    move-wide v7, p1

    .line 2912
    :goto_21
    new-instance p1, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;

    invoke-direct {p1}, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;-><init>()V

    .line 2913
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2914
    :try_start_2b
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p0, v4, p1}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    .line 2915
    monitor-exit p2
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_57

    .line 2916
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->numDeferred()I

    move-result p0

    if-gtz p0, :cond_3d

    cmp-long p0, v7, v1

    if-lez p0, :cond_56

    .line 2917
    :cond_3d
    const-class p0, Landroid/os/BatteryStatsInternal;

    .line 2918
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryStatsInternal;

    .line 2919
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->numDeferred()I

    move-result p2

    invoke-virtual {p0, v4, p2, v7, v8}, Landroid/os/BatteryStatsInternal;->noteJobsDeferred(IIJ)V

    const/16 v3, 0x55

    const/4 v5, 0x0

    .line 2922
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->numDeferred()I

    move-result v6

    .line 2920
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;IJ)V

    :cond_56
    return-void

    :catchall_57
    move-exception p0

    .line 2915
    :try_start_58
    monitor-exit p2
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw p0
.end method
