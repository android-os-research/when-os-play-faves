.class public Lcom/android/server/wm/WindowState$DeathRecipient;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeathRecipient"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 3795
    iput-object p1, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$DeathRecipient-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState$DeathRecipient;-><init>(Lcom/android/server/wm/WindowState;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 6

    .line 3799
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_70

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3800
    iget-object v1, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    const/4 v4, 0x0

    .line 3801
    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    const-string v2, "WindowManager"

    .line 3802
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIN DEATH: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_53

    .line 3804
    iget-object v2, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 3805
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_49

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-ne v2, v1, :cond_49

    .line 3806
    iget-object v2, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskSnapshotController;->onAppDied(Lcom/android/server/wm/ActivityRecord;)V

    .line 3808
    :cond_49
    iget-object p0, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    invoke-static {p0}, Lcom/android/server/wm/WindowState;->-$$Nest$mshouldKeepVisibleDeadAppWindow(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    invoke-static {v1, p0}, Lcom/android/server/wm/WindowState;->-$$Nest$mremoveIfPossible(Lcom/android/server/wm/WindowState;Z)V

    goto :goto_65

    .line 3809
    :cond_53
    iget-object v1, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_65

    const-string v1, "WindowManager"

    const-string v2, "!!! LEAK !!! Window removed but surface still valid."

    .line 3810
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3811
    iget-object p0, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    .line 3813
    :cond_65
    :goto_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_7 .. :try_end_66} :catchall_6a

    :try_start_66
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_69
    .catch Ljava/lang/IllegalArgumentException; {:try_start_66 .. :try_end_69} :catch_70

    goto :goto_70

    :catchall_6a
    move-exception p0

    :try_start_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    :try_start_6c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_70
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6c .. :try_end_70} :catch_70

    :catch_70
    :goto_70
    return-void
.end method
