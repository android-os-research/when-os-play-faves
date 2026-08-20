.class public final Lcom/android/server/job/JobSchedulerService$LocalService;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Lcom/android/server/job/JobSchedulerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public static synthetic $r8$lambda$5Zq9BJx0-W6H-q8IPOMMnJJu8Jo(Lcom/android/server/job/JobSchedulerService$LocalService;Ljava/util/List;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobSchedulerService$LocalService;->lambda$getSystemScheduledPendingJobs$0(Ljava/util/List;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 2810
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$getSystemScheduledPendingJobs$0(Ljava/util/List;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4

    .line 2821
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p0, p2}, Lcom/android/server/job/JobConcurrencyManager;->isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    if-nez p0, :cond_1b

    .line 2822
    :cond_14
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method


# virtual methods
.method public addBackingUpUid(I)V
    .registers 4

    .line 2837
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2841
    :try_start_5
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmBackingUpUids(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseBooleanArray;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2842
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public cancelJobsForUid(IIILjava/lang/String;)V
    .registers 5

    .line 2832
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IIILjava/lang/String;)Z

    return-void
.end method

.method public clearAllBackingUpUids()V
    .registers 3

    .line 2859
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2860
    :try_start_5
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmBackingUpUids(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-lez v1, :cond_26

    .line 2861
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmBackingUpUids(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2862
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 2864
    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public getCloudMediaProviderPackage(I)Ljava/lang/String;
    .registers 2

    .line 2869
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmCloudMediaProviderPackages(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    .registers 3

    .line 2879
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2880
    :try_start_5
    new-instance v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;-><init>(Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;)V

    monitor-exit v0

    return-object v1

    :catchall_14
    move-exception p0

    .line 2881
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public getSystemScheduledPendingJobs()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .line 2818
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2819
    :try_start_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2820
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    const/16 v3, 0x3e8

    new-instance v4, Lcom/android/server/job/JobSchedulerService$LocalService$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1}, Lcom/android/server/job/JobSchedulerService$LocalService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/JobSchedulerService$LocalService;Ljava/util/List;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/server/job/JobStore;->forEachJob(ILjava/util/function/Consumer;)V

    .line 2825
    monitor-exit v0

    return-object v1

    :catchall_1a
    move-exception p0

    .line 2826
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public removeBackingUpUid(I)V
    .registers 4

    .line 2847
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2848
    :try_start_5
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmBackingUpUids(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2851
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore;->countJobsForUid(I)I

    move-result p1

    if-lez p1, :cond_24

    .line 2852
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 2854
    :cond_24
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public reportAppUsage(Ljava/lang/String;I)V
    .registers 3

    .line 2874
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobSchedulerService;->reportAppUsage(Ljava/lang/String;I)V

    return-void
.end method
