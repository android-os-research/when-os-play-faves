.class public Lcom/android/server/wm/WindowManagerService$4;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 1223
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked(Z)V
    .registers 2

    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .registers 4

    .line 1231
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_b

    return-void

    .line 1240
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1243
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/FreeformController;->minimizeExcessiveVisibleFreeformLocked(Lcom/android/server/wm/TaskDisplayArea;)V

    .line 1252
    :cond_1a
    iget-boolean v0, p1, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->isRecentsAnimationTarget(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1253
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    .line 1254
    iput-boolean v1, p1, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    goto :goto_57

    .line 1256
    :cond_35
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    .line 1259
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    if-eqz v0, :cond_57

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->isRecentsAnimationTarget(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-nez p0, :cond_57

    .line 1260
    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    .line 1261
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result p0

    if-eqz p0, :cond_57

    .line 1263
    :try_start_4c
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-interface {p0, p1}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_57} :catch_57

    :catch_57
    :cond_57
    :goto_57
    return-void
.end method
