.class public abstract Lcom/android/server/wm/FlexibleDisplayController;
.super Lcom/android/server/wm/ExtraDisplayController;
.source "FlexibleDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/FlexibleDisplayController$FlexibleStateCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public mDeviceStateListener:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

.field public final mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field public mDeviceStateRequest:Landroid/hardware/devicestate/DeviceStateRequest;

.field public mDualScreenOn:Z

.field public mFoldState:I

.field public mFolded:Ljava/lang/Boolean;

.field public mLastDualScreenOn:Z


# direct methods
.method public static synthetic $r8$lambda$L21XDszmEHy0ProJB-zSTL0KQhY(Lcom/android/server/wm/FlexibleDisplayController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/FlexibleDisplayController;->lambda$requestDeviceFolded$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zhhi0yngQBUATdZ-uSzpmU5DWt0(Ljava/lang/Runnable;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/FlexibleDisplayController;->lambda$requestDeviceFolded$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceStateListener(Lcom/android/server/wm/FlexibleDisplayController;)Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/FlexibleDisplayController;->mDeviceStateListener:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceStateRequest(Lcom/android/server/wm/FlexibleDisplayController;)Landroid/hardware/devicestate/DeviceStateRequest;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/FlexibleDisplayController;->mDeviceStateRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFolded(Lcom/android/server/wm/FlexibleDisplayController;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/FlexibleDisplayController;->mFolded:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDeviceStateRequest(Lcom/android/server/wm/FlexibleDisplayController;Landroid/hardware/devicestate/DeviceStateRequest;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/FlexibleDisplayController;->mDeviceStateRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFoldState(Lcom/android/server/wm/FlexibleDisplayController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/FlexibleDisplayController;->mFoldState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFolded(Lcom/android/server/wm/FlexibleDisplayController;Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/FlexibleDisplayController;->mFolded:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/wm/ExtraDisplayController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/android/server/wm/FlexibleDisplayController;->mFoldState:I

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/android/server/wm/FlexibleDisplayController;->mLastDualScreenOn:Z

    .line 57
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/devicestate/DeviceStateManager;

    iput-object p1, p0, Lcom/android/server/wm/FlexibleDisplayController;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 58
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/android/server/wm/ExtraDisplayController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/server/wm/FlexibleDisplayController;->getCallback()Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    return-void
.end method

.method public static synthetic lambda$requestDeviceFolded$0(Ljava/lang/Runnable;)V
    .registers 1

    .line 116
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$requestDeviceFolded$1(Z)V
    .registers 5

    if-eqz p1, :cond_21

    .line 114
    iget-object p1, p0, Lcom/android/server/wm/FlexibleDisplayController;->mDeviceStateRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    if-nez p1, :cond_2d

    const/4 p1, 0x0

    .line 115
    invoke-static {p1}, Landroid/hardware/devicestate/DeviceStateRequest;->newBuilder(I)Landroid/hardware/devicestate/DeviceStateRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceStateRequest$Builder;->build()Landroid/hardware/devicestate/DeviceStateRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/FlexibleDisplayController;->mDeviceStateRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    .line 116
    iget-object v0, p0, Lcom/android/server/wm/FlexibleDisplayController;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v1, Lcom/android/server/wm/FlexibleDisplayController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/FlexibleDisplayController$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcom/android/server/wm/FlexibleDisplayController$1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/FlexibleDisplayController$1;-><init>(Lcom/android/server/wm/FlexibleDisplayController;)V

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/devicestate/DeviceStateManager;->requestState(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V

    goto :goto_2d

    .line 129
    :cond_21
    iget-object p1, p0, Lcom/android/server/wm/FlexibleDisplayController;->mDeviceStateRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    if-eqz p1, :cond_2d

    .line 130
    iget-object p1, p0, Lcom/android/server/wm/FlexibleDisplayController;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceStateManager;->cancelStateRequest()V

    const/4 p1, 0x0

    .line 131
    iput-object p1, p0, Lcom/android/server/wm/FlexibleDisplayController;->mDeviceStateRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    :cond_2d
    :goto_2d
    return-void
.end method


# virtual methods
.method public beginSurfacePlacementNoTrace()V
    .registers 2

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/android/server/wm/FlexibleDisplayController;->mDualScreenOn:Z

    return-void
.end method

.method public canTurnDualScreenOn()Z
    .registers 1

    .line 155
    invoke-virtual {p0}, Lcom/android/server/wm/FlexibleDisplayController;->isFolded()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getCallback()Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;
    .registers 2

    .line 62
    new-instance v0, Lcom/android/server/wm/FlexibleDisplayController$FlexibleStateCallback;

    invoke-direct {v0, p0}, Lcom/android/server/wm/FlexibleDisplayController$FlexibleStateCallback;-><init>(Lcom/android/server/wm/FlexibleDisplayController;)V

    return-object v0
.end method

.method public getFoldState()I
    .registers 1

    .line 70
    iget p0, p0, Lcom/android/server/wm/FlexibleDisplayController;->mFoldState:I

    return p0
.end method

.method public handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Ljava/lang/Boolean;
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method

.method public isDeviceFoldRequested()Z
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/android/server/wm/FlexibleDisplayController;->mDeviceStateRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isFolded()Z
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/server/wm/FlexibleDisplayController;->mFolded:Ljava/lang/Boolean;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isTableMode()Z
    .registers 2

    .line 180
    iget p0, p0, Lcom/android/server/wm/FlexibleDisplayController;->mFoldState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public abstract onFoldChangedLocked(Z)V
.end method

.method public performSurfacePlacementNoTrace()V
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/ExtraDisplayController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/android/server/wm/FlexibleDisplayController;->mLastDualScreenOn:Z

    iget-boolean v2, p0, Lcom/android/server/wm/FlexibleDisplayController;->mDualScreenOn:Z

    if-eq v1, v2, :cond_13

    .line 172
    iput-boolean v2, p0, Lcom/android/server/wm/FlexibleDisplayController;->mLastDualScreenOn:Z

    .line 173
    iget-object p0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, v2}, Landroid/hardware/display/DisplayManagerInternal;->applyDualScreenPolicy(Z)V

    :cond_13
    return-void
.end method

.method public requestDeviceFolded(Z)V
    .registers 4

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/ExtraDisplayController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/FlexibleDisplayController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/FlexibleDisplayController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/FlexibleDisplayController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDeviceStateListener(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/android/server/wm/FlexibleDisplayController;->mDeviceStateListener:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    return-void
.end method

.method public setFocusedAppIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    if-eqz p1, :cond_1b

    .line 160
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/ExtraDisplayController;->getExtraDisplayId()I

    move-result p0

    if-ne v0, p0, :cond_1b

    .line 161
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-ne p1, p0, :cond_1b

    .line 162
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    :cond_1b
    return-void
.end method
