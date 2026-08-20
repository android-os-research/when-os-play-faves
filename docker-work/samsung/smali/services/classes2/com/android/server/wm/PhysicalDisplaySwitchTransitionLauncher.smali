.class public Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;
.super Ljava/lang/Object;
.source "PhysicalDisplaySwitchTransitionLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$DeviceStateListener;
    }
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDeviceStateListener:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$DeviceStateListener;

.field public final mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mIsFolded:Z

.field public mTransition:Lcom/android/server/wm/Transition;

.field public final mTransitionController:Lcom/android/server/wm/TransitionController;


# direct methods
.method public static bridge synthetic -$$Nest$fputmIsFolded(Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mIsFolded:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TransitionController;)V
    .registers 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 49
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 52
    const-class p2, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/devicestate/DeviceStateManager;

    iput-object p2, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    if-eqz p2, :cond_2e

    .line 55
    new-instance v1, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$DeviceStateListener;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$DeviceStateListener;-><init>(Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDeviceStateListener:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$DeviceStateListener;

    .line 56
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v0, p1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDeviceStateListener:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$DeviceStateListener;

    .line 57
    invoke-virtual {p2, v0, p0}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    :cond_2e
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    if-eqz v0, :cond_9

    .line 64
    iget-object p0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDeviceStateListener:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$DeviceStateListener;

    invoke-virtual {v0, p0}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    :cond_9
    return-void
.end method

.method public onDisplayUpdated()V
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz v0, :cond_a

    .line 107
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->setAllReady()V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    :cond_a
    return-void
.end method

.method public requestDisplaySwitchTransitionIfNeeded(IIIII)V
    .registers 16

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 74
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastHasContent()Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 76
    :cond_12
    iget-boolean v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mIsFolded:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x11101e9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 78
    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    move v0, v1

    goto :goto_30

    :cond_2f
    move v0, v2

    :goto_30
    if-nez v0, :cond_33

    return-void

    .line 84
    :cond_33
    new-instance v9, Landroid/window/TransitionRequestInfo$DisplayChange;

    invoke-direct {v9, p1}, Landroid/window/TransitionRequestInfo$DisplayChange;-><init>(I)V

    .line 87
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v2, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 88
    invoke-virtual {v9, p1}, Landroid/window/TransitionRequestInfo$DisplayChange;->setStartAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 89
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v2, v2, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 90
    invoke-virtual {v9, p1}, Landroid/window/TransitionRequestInfo$DisplayChange;->setEndAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 91
    invoke-virtual {v9, v1}, Landroid/window/TransitionRequestInfo$DisplayChange;->setPhysicalDisplayChanged(Z)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 93
    iget-object v3, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v4, 0x6

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v8, 0x0

    move-object v6, v7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    move-result-object p1

    if-eqz p1, :cond_6a

    .line 99
    iget-object p2, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->startLaunchPowerMode(I)V

    .line 100
    iget-object p2, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object p3, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2, p3, p1}, Lcom/android/server/wm/TransitionController;->collectForDisplayChange(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;)V

    .line 101
    iput-object p1, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    :cond_6a
    return-void
.end method
