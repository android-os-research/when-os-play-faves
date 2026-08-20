.class public Lcom/android/server/wm/InputMonitor$UpdateInputWindows;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InputMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateInputWindows"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/InputMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/InputMonitor;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputMonitor$UpdateInputWindows-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;-><init>(Lcom/android/server/wm/InputMonitor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmService(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 142
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->this$0:Lcom/android/server/wm/InputMonitor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fputmUpdateInputWindowsPending(Lcom/android/server/wm/InputMonitor;Z)V

    .line 143
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1, v2}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fputmUpdateInputWindowsNeeded(Lcom/android/server/wm/InputMonitor;Z)V

    .line 145
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmDisplayRemoved(Lcom/android/server/wm/InputMonitor;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 146
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_3e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 156
    :cond_24
    :try_start_24
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmService(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v1}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v1

    .line 159
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {p0}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmUpdateInputForAllWindowsConsumer(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->-$$Nest$mupdateInputWindows(Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;Z)V

    .line 160
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_24 .. :try_end_3a} :catchall_3e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3e
    move-exception p0

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
