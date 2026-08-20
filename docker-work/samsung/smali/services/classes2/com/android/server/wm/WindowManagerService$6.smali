.class public Lcom/android/server/wm/WindowManagerService$6;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/DisplayWindowSettingsProvider;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Function;)V
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

    .line 1402
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$6;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceType()I
    .registers 1

    const/4 p0, 0x3

    return p0
.end method

.method public onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .registers 5

    .line 1410
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$6;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1411
    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 1412
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$6;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmAnimationsDisabled(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v1

    if-eq v1, p1, :cond_21

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$6;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mAllowAnimationsInLowPowerMode:Z

    if-nez v2, :cond_21

    .line 1413
    invoke-static {v1, p1}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fputmAnimationsDisabled(Lcom/android/server/wm/WindowManagerService;Z)V

    .line 1414
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$6;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    .line 1416
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_26
    move-exception p0

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
