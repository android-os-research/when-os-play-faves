.class public final Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;
.super Landroid/app/TaskStackListener;
.source "AppPrelaunchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appprelauncher/AppPrelaunchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PrelaunchedTaskTracker"
.end annotation


# instance fields
.field public final mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

.field public mTaskIdToApp:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTrackerLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;",
            ">;"
        }
    .end annotation
.end field

.field public mTrackerLock:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;


# direct methods
.method public static synthetic $r8$lambda$aKWDz7LayMBkvr-ei3QwAJ6pRfo(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;->lambda$onTaskDescriptionChanged$0(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cLyNUfRnQ2qAWiHBtLc-M5C6JrQ(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;->lambda$onTaskRemoved$1(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/appprelauncher/AppPrelaunchService;Lcom/android/server/appprelauncher/AppPrelaunchService;)V
    .registers 3

    .line 1514
    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    .line 1507
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;->mTaskIdToApp:Landroid/util/ArrayMap;

    .line 1510
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;->mTrackerLock:Ljava/lang/Object;

    .line 1515
    iput-object p2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    return-void
.end method

.method private synthetic lambda$onTaskDescriptionChanged$0(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .registers 6

    .line 1531
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1534
    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {v1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetmLock(Lcom/android/server/appprelauncher/AppPrelaunchService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1535
    :try_start_d
    iget-object v2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {v2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetmPrelaunchedApps(Lcom/android/server/appprelauncher/AppPrelaunchService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    .line 1536
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_82

    if-nez v0, :cond_26

    .line 1539
    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {v0, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$mfindAppByHiddenDisplayId(Lcom/android/server/appprelauncher/AppPrelaunchService;I)Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object v0

    :cond_26
    if-eqz v0, :cond_81

    .line 1542
    invoke-virtual {v0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getDisplayId()I

    move-result v1

    if-eq v1, p2, :cond_2f

    goto :goto_81

    .line 1543
    :cond_2f
    iget-object p2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;->mTrackerLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1544
    :try_start_32
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;->mTaskIdToApp:Landroid/util/ArrayMap;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    monitor-exit p2
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_7e

    .line 1547
    invoke-virtual {v0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object p0

    monitor-enter p0

    .line 1548
    :try_start_43
    iget p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->addTaskId(I)Z

    move-result p2

    .line 1549
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_7b

    if-eqz p2, :cond_7a

    const-string p0, "PRELService"

    .line 1551
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start tracking task "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    invoke-virtual {v0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result p0

    const/4 p1, 0x2

    if-lt p0, p1, :cond_7a

    .line 1557
    invoke-virtual {v0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->removeTasks()V

    :cond_7a
    return-void

    :catchall_7b
    move-exception p1

    .line 1549
    :try_start_7c
    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw p1

    :catchall_7e
    move-exception p0

    .line 1545
    :try_start_7f
    monitor-exit p2
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw p0

    :cond_81
    :goto_81
    return-void

    :catchall_82
    move-exception p0

    .line 1536
    :try_start_83
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw p0
.end method

.method public static synthetic lambda$onTaskRemoved$1(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;I)V
    .registers 5

    .line 1578
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object v0

    monitor-enter v0

    .line 1579
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_f

    .line 1580
    invoke-virtual {p0, v2}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    .line 1582
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_2f

    const-string v0, "PRELService"

    .line 1583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_2f
    move-exception p0

    .line 1582
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p0
.end method


# virtual methods
.method public onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 5

    .line 1524
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-nez v0, :cond_5

    return-void

    .line 1530
    :cond_5
    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {v1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetmExecutorService(Lcom/android/server/appprelauncher/AppPrelaunchService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onTaskRemoved(I)V
    .registers 6

    .line 1566
    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;->mTrackerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1567
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;->mTaskIdToApp:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    if-nez v1, :cond_13

    .line 1569
    monitor-exit v0

    return-void

    .line 1573
    :cond_13
    iget-object v2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;->mTaskIdToApp:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_2c

    .line 1575
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetmExecutorService(Lcom/android/server/appprelauncher/AppPrelaunchService;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance v0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :catchall_2c
    move-exception p0

    .line 1574
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method
