.class public final Lcom/android/server/wm/StartingSurfaceController$StartingSurface;
.super Ljava/lang/Object;
.source "StartingSurfaceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/StartingSurfaceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StartingSurface"
.end annotation


# instance fields
.field public final mTask:Lcom/android/server/wm/Task;

.field public final synthetic this$0:Lcom/android/server/wm/StartingSurfaceController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/StartingSurfaceController;Lcom/android/server/wm/Task;)V
    .registers 3

    .line 276
    iput-object p1, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->this$0:Lcom/android/server/wm/StartingSurfaceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p2, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->mTask:Lcom/android/server/wm/Task;

    return-void
.end method


# virtual methods
.method public remove(Z)V
    .registers 4

    .line 286
    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->this$0:Lcom/android/server/wm/StartingSurfaceController;

    invoke-static {v0}, Lcom/android/server/wm/StartingSurfaceController;->-$$Nest$fgetmService(Lcom/android/server/wm/StartingSurfaceController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 287
    iget-object v1, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->this$0:Lcom/android/server/wm/StartingSurfaceController;

    invoke-static {v1}, Lcom/android/server/wm/StartingSurfaceController;->-$$Nest$fgetmService(Lcom/android/server/wm/StartingSurfaceController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iget-object p0, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/TaskOrganizerController;->removeStartingWindow(Lcom/android/server/wm/Task;Z)V

    .line 288
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_20
    move-exception p0

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
