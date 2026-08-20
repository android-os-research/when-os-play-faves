.class public Lcom/android/server/job/controllers/BackgroundJobsController$1;
.super Lcom/android/server/AppStateTrackerImpl$Listener;
.source "BackgroundJobsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/BackgroundJobsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/BackgroundJobsController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/BackgroundJobsController;)V
    .registers 2

    .line 254
    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-direct {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public updateAllJobs()V
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_5
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-static {p0}, Lcom/android/server/job/controllers/BackgroundJobsController;->-$$Nest$mupdateAllJobRestrictionsLocked(Lcom/android/server/job/controllers/BackgroundJobsController;)V

    .line 259
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public updateJobsForUid(IZ)V
    .registers 4

    .line 264
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_5
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-static {p0, p1, p2}, Lcom/android/server/job/controllers/BackgroundJobsController;->-$$Nest$mupdateJobRestrictionsForUidLocked(Lcom/android/server/job/controllers/BackgroundJobsController;IZ)V

    .line 266
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public updateJobsForUidPackage(ILjava/lang/String;Z)V
    .registers 4

    .line 271
    iget-object p2, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    iget-object p2, p2, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 272
    :try_start_5
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-static {p0, p1, p3}, Lcom/android/server/job/controllers/BackgroundJobsController;->-$$Nest$mupdateJobRestrictionsForUidLocked(Lcom/android/server/job/controllers/BackgroundJobsController;IZ)V

    .line 273
    monitor-exit p2

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p2
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method
