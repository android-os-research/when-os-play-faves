.class public Lcom/android/server/wm/FlexibleDisplayController$FlexibleStateCallback;
.super Ljava/lang/Object;
.source "FlexibleDisplayController.java"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/FlexibleDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlexibleStateCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/FlexibleDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/FlexibleDisplayController;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/android/server/wm/FlexibleDisplayController$FlexibleStateCallback;->this$0:Lcom/android/server/wm/FlexibleDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .registers 6

    const-string v0, "WindowManager"

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStateChanged, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/server/wm/FlexibleDisplayController$FlexibleStateCallback;->this$0:Lcom/android/server/wm/FlexibleDisplayController;

    iget-object v0, v0, Lcom/android/server/wm/ExtraDisplayController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_1e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 85
    iget-object v1, p0, Lcom/android/server/wm/FlexibleDisplayController$FlexibleStateCallback;->this$0:Lcom/android/server/wm/FlexibleDisplayController;

    invoke-static {v1, p1}, Lcom/android/server/wm/FlexibleDisplayController;->-$$Nest$fputmFoldState(Lcom/android/server/wm/FlexibleDisplayController;I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2e

    if-ne p1, v2, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    .line 89
    :cond_2e
    :goto_2e
    iget-object v3, p0, Lcom/android/server/wm/FlexibleDisplayController$FlexibleStateCallback;->this$0:Lcom/android/server/wm/FlexibleDisplayController;

    invoke-static {v3}, Lcom/android/server/wm/FlexibleDisplayController;->-$$Nest$fgetmFolded(Lcom/android/server/wm/FlexibleDisplayController;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_42

    iget-object v3, p0, Lcom/android/server/wm/FlexibleDisplayController$FlexibleStateCallback;->this$0:Lcom/android/server/wm/FlexibleDisplayController;

    invoke-static {v3}, Lcom/android/server/wm/FlexibleDisplayController;->-$$Nest$fgetmFolded(Lcom/android/server/wm/FlexibleDisplayController;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v3, v2, :cond_57

    .line 90
    :cond_42
    iget-object v1, p0, Lcom/android/server/wm/FlexibleDisplayController$FlexibleStateCallback;->this$0:Lcom/android/server/wm/FlexibleDisplayController;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/wm/FlexibleDisplayController;->-$$Nest$fputmFolded(Lcom/android/server/wm/FlexibleDisplayController;Ljava/lang/Boolean;)V

    .line 91
    iget-object v1, p0, Lcom/android/server/wm/FlexibleDisplayController$FlexibleStateCallback;->this$0:Lcom/android/server/wm/FlexibleDisplayController;

    iget-object v1, v1, Lcom/android/server/wm/ExtraDisplayController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {v1, v2}, Lcom/android/server/policy/WindowManagerPolicyExt;->onDeviceFoldedStateChanged(Z)Ljava/lang/Runnable;

    move-result-object v1

    .line 95
    :cond_57
    iget-object v3, p0, Lcom/android/server/wm/FlexibleDisplayController$FlexibleStateCallback;->this$0:Lcom/android/server/wm/FlexibleDisplayController;

    invoke-static {v3}, Lcom/android/server/wm/FlexibleDisplayController;->-$$Nest$fgetmDeviceStateListener(Lcom/android/server/wm/FlexibleDisplayController;)Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    move-result-object v3

    if-eqz v3, :cond_68

    .line 96
    iget-object v3, p0, Lcom/android/server/wm/FlexibleDisplayController$FlexibleStateCallback;->this$0:Lcom/android/server/wm/FlexibleDisplayController;

    invoke-static {v3}, Lcom/android/server/wm/FlexibleDisplayController;->-$$Nest$fgetmDeviceStateListener(Lcom/android/server/wm/FlexibleDisplayController;)Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;->onStateChanged(I)V

    :cond_68
    if-eqz v1, :cond_72

    .line 100
    iget-object v3, p0, Lcom/android/server/wm/FlexibleDisplayController$FlexibleStateCallback;->this$0:Lcom/android/server/wm/FlexibleDisplayController;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/FlexibleDisplayController;->onFoldChangedLocked(Z)V

    .line 101
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 104
    :cond_72
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING_FOR_HALF_OPEN_MODE:Z

    if-eqz v1, :cond_7f

    .line 105
    iget-object p0, p0, Lcom/android/server/wm/FlexibleDisplayController$FlexibleStateCallback;->this$0:Lcom/android/server/wm/FlexibleDisplayController;

    iget-object p0, p0, Lcom/android/server/wm/ExtraDisplayController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerServiceExt;->logHalfOpenModeFromStateChangedIfNeededLocked(I)V

    .line 107
    :cond_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_1e .. :try_end_80} :catchall_84

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_84
    move-exception p0

    :try_start_85
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
