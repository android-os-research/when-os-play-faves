.class public Lcom/android/server/policy/DisplayFoldController;
.super Ljava/lang/Object;
.source "DisplayFoldController.java"


# instance fields
.field public final mDisplayId:I

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

.field public mFocusedApp:Ljava/lang/String;

.field public mFolded:Ljava/lang/Boolean;

.field public final mFoldedArea:Landroid/graphics/Rect;

.field public final mHandler:Landroid/os/Handler;

.field public final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/IDisplayFoldListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field public mOverrideFoldedArea:Landroid/graphics/Rect;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$oSfPwfFebSlf2AzSy4qMIMhkmbE(Lcom/android/server/policy/DisplayFoldController;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/DisplayFoldController;->lambda$new$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$omgOs7VKVxWoFfed5TNLZ53wYYM(Lcom/android/server/policy/DisplayFoldController;Landroid/view/IDisplayFoldListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/DisplayFoldController;->lambda$registerDisplayFoldListener$1(Landroid/view/IDisplayFoldListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Landroid/hardware/display/DisplayManagerInternal;ILandroid/graphics/Rect;Landroid/os/Handler;)V
    .registers 8

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 51
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    .line 54
    new-instance v0, Lcom/android/server/policy/DisplayFoldDurationLogger;

    invoke-direct {v0}, Lcom/android/server/policy/DisplayFoldDurationLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    .line 60
    iput-object p2, p0, Lcom/android/server/policy/DisplayFoldController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 61
    iput-object p3, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 62
    iput p4, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    .line 63
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    .line 64
    iput-object p6, p0, Lcom/android/server/policy/DisplayFoldController;->mHandler:Landroid/os/Handler;

    .line 66
    const-class p2, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/devicestate/DeviceStateManager;

    .line 67
    new-instance p3, Landroid/os/HandlerExecutor;

    invoke-direct {p3, p6}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance p4, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    new-instance p5, Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda1;

    invoke-direct {p5, p0}, Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/DisplayFoldController;)V

    invoke-direct {p4, p1, p5}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    invoke-virtual {p2, p3, p4}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/android/server/policy/DisplayFoldController;
    .registers 10

    .line 166
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 167
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    .line 168
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 169
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/hardware/display/DisplayManagerInternal;

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104034c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 174
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_2b

    .line 177
    :cond_26
    invoke-static {v0}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_30

    .line 175
    :cond_2b
    :goto_2b
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :goto_30
    move-object v6, v0

    .line 180
    new-instance v0, Lcom/android/server/policy/DisplayFoldController;

    .line 181
    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/DisplayFoldController;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Landroid/hardware/display/DisplayManagerInternal;ILandroid/graphics/Rect;Landroid/os/Handler;)V

    return-object v0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Boolean;)V
    .registers 2

    .line 68
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/policy/DisplayFoldController;->setDeviceFolded(Z)V

    return-void
.end method

.method private synthetic lambda$registerDisplayFoldListener$1(Landroid/view/IDisplayFoldListener;)V
    .registers 3

    .line 138
    :try_start_0
    iget v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    iget-object p0, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p1, v0, p0}, Landroid/view/IDisplayFoldListener;->onDisplayFoldChanged(IZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method


# virtual methods
.method public finishedGoingToSleep()V
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    invoke-virtual {p0}, Lcom/android/server/policy/DisplayFoldDurationLogger;->onFinishedGoingToSleep()V

    return-void
.end method

.method public finishedWakingUp()V
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    iget-object p0, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lcom/android/server/policy/DisplayFoldDurationLogger;->onFinishedWakingUp(Ljava/lang/Boolean;)V

    return-void
.end method

.method public getFoldedArea()Landroid/graphics/Rect;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 155
    iget-object p0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    return-object p0

    .line 157
    :cond_b
    iget-object p0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    return-object p0
.end method

.method public onDefaultDisplayFocusChanged(Ljava/lang/String;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/android/server/policy/DisplayFoldController;->mFocusedApp:Ljava/lang/String;

    return-void
.end method

.method public registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 133
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    if-nez v0, :cond_a

    return-void

    .line 136
    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/DisplayFoldController;Landroid/view/IDisplayFoldListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setDeviceFolded(Z)V
    .registers 9

    .line 80
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_b

    return-void

    .line 85
    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 86
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    goto :goto_22

    .line 87
    :cond_16
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 88
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    const/4 v1, 0x0

    if-eqz v0, :cond_82

    if-eqz p1, :cond_6d

    .line 97
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v3, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    iget-object v4, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 99
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 101
    iget-object v3, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 105
    iget-object v4, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v5, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayScalingDisabled(IZ)V

    .line 106
    iget-object v4, p0, Lcom/android/server/policy/DisplayFoldController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v5, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    .line 107
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 106
    invoke-virtual {v4, v5, v6, v0}, Lcom/android/server/wm/WindowManagerInternal;->setForcedDisplaySize(III)V

    .line 108
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v4, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    neg-int v2, v2

    neg-int v3, v3

    invoke-virtual {v0, v4, v2, v3}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    goto :goto_82

    .line 110
    :cond_6d
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    invoke-virtual {v0, v2, v1}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayScalingDisabled(IZ)V

    .line 111
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v2, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerInternal;->clearForcedDisplaySize(I)V

    .line 112
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    invoke-virtual {v0, v2, v1, v1}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    .line 116
    :cond_82
    :goto_82
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/DisplayFoldDurationLogger;->setDeviceFolded(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mFocusedApp:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/policy/DisplayFoldDurationLogger;->logFocusedAppWithFoldState(ZLjava/lang/String;)V

    .line 118
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    .line 120
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_9a
    if-ge v1, v0, :cond_ac

    .line 123
    :try_start_9c
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDisplayFoldListener;

    iget v3, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    invoke-interface {v2, v3, p1}, Landroid/view/IDisplayFoldListener;->onDisplayFoldChanged(IZ)V
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_a9} :catch_a9

    :catch_a9
    add-int/lit8 v1, v1, 0x1

    goto :goto_9a

    .line 128
    :cond_ac
    iget-object p0, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public setOverrideFoldedArea(Landroid/graphics/Rect;)V
    .registers 2

    .line 150
    iget-object p0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 2

    .line 146
    iget-object p0, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
