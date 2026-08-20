.class public abstract Lcom/android/server/wm/PackagesChangeAsTask;
.super Lcom/android/server/wm/PackagesChange;
.source "PackagesChange.java"


# static fields
.field public static final POLICIES_UPDATE_DELAY:J = 0x1f4L


# direct methods
.method public static synthetic $r8$lambda$32hVsQw3t5mAVX7k_LE7S4VFwg4(Lcom/android/server/wm/PackagesChangeAsTask;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/PackagesChangeAsTask;->updateValueToTaskImmediately()V

    return-void
.end method

.method public static synthetic $r8$lambda$7yqMSAmDuTHdh8groyP6S835rNg(Lcom/android/server/wm/PackagesChangeAsTask;Lcom/android/server/wm/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/PackagesChangeAsTask;->lambda$updateValueToTaskImmediately$0(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 2

    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/wm/PackagesChange;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 169
    invoke-static {}, Lcom/android/server/wm/PackageSettingsManager;->getInstance()Lcom/android/server/wm/PackageSettingsManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/PackageSettingsManager;->addPolicyAsTask(Lcom/android/server/wm/PackagesChangeAsTask;)V

    return-void
.end method

.method private synthetic lambda$updateValueToTaskImmediately$0(Lcom/android/server/wm/Task;)V
    .registers 3

    const/4 v0, 0x1

    .line 184
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/PackagesChangeAsTask;->updateValueToTask(Lcom/android/server/wm/Task;Z)V

    return-void
.end method


# virtual methods
.method public abstract onDumpInTask(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/Task;)V
.end method

.method public onUpdateValueToTask(Lcom/android/server/wm/Task;Ljava/lang/String;Z)V
    .registers 4

    return-void
.end method

.method public final updateValueToTask(Lcom/android/server/wm/Task;Z)V
    .registers 4

    .line 191
    iget-object v0, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 192
    :goto_a
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/PackagesChangeAsTask;->onUpdateValueToTask(Lcom/android/server/wm/Task;Ljava/lang/String;Z)V

    return-void
.end method

.method public final updateValueToTask(Z)V
    .registers 5

    if-eqz p1, :cond_6

    .line 174
    invoke-virtual {p0}, Lcom/android/server/wm/PackagesChangeAsTask;->updateValueToTaskImmediately()V

    return-void

    .line 177
    :cond_6
    iget-object p1, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v0, Lcom/android/server/wm/PackagesChangeAsTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/PackagesChangeAsTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PackagesChangeAsTask;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 178
    iget-object p1, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v0, Lcom/android/server/wm/PackagesChangeAsTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/PackagesChangeAsTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PackagesChangeAsTask;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final updateValueToTaskImmediately()V
    .registers 4

    .line 182
    iget-object v0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 183
    iget-object v1, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/PackagesChangeAsTask$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/PackagesChangeAsTask$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/PackagesChangeAsTask;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 186
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_19
    move-exception p0

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
