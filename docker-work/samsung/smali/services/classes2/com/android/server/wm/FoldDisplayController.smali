.class public Lcom/android/server/wm/FoldDisplayController;
.super Lcom/android/server/wm/FlexibleDisplayController;
.source "FoldDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/FoldDisplayController$FoldStateCallback;,
        Lcom/android/server/wm/FoldDisplayController$Policy;
    }
.end annotation


# static fields
.field public static final MIN_SMALLEST_WIDTH_DP:I = 0x140

.field public static final MIN_SMALLEST_WIDTH_PX_FOR_EXTRA_BUILT_IN_DISPLAY:I = 0x348

.field public static final SWAPPED_STATE_FINISHED:I = 0x3

.field public static final SWAPPED_STATE_IDLE:I = 0x0

.field public static final SWAPPED_STATE_READY:I = 0x1

.field public static final SWAPPED_STATE_RUNNING:I = 0x2

.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public mAppContinuityGuideConfirmDialog:Lcom/android/server/wm/AppContinuityGuideConfirmDialog;

.field public mDisplaySwappedState:I

.field public mFoldChangePolicy:Lcom/android/server/wm/FoldDisplayController$Policy;

.field public mForcedDisplaySizeRequested:Z

.field public final mPolices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/FoldDisplayController$Policy;",
            ">;"
        }
    .end annotation
.end field

.field public mPrimaryDisplayPhysicalAddress:Landroid/view/DisplayAddress;

.field public final mTmpDisplaySize:Landroid/graphics/Point;


# direct methods
.method public static synthetic $r8$lambda$XR0Tdc3wKTWDDoXLrrD2Y9aLwc0(Lcom/android/server/wm/FoldDisplayController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/FoldDisplayController;->lambda$throwIfExtraBuiltInDisplaySize$2(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/wm/FlexibleDisplayController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    const/4 p1, 0x0

    .line 56
    iput p1, p0, Lcom/android/server/wm/FoldDisplayController;->mDisplaySwappedState:I

    .line 266
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/FoldDisplayController;->mPolices:Ljava/util/ArrayList;

    .line 317
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/FoldDisplayController;->mTmpDisplaySize:Landroid/graphics/Point;

    return-void
.end method

.method public static synthetic lambda$applyDisplaySwappedPolicy$1(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 176
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v0, :cond_17

    .line 177
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_17

    :cond_13
    const/4 v0, 0x1

    .line 180
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    :cond_17
    :goto_17
    return-void
.end method

.method private synthetic lambda$onFoldChangedLocked$0(II)V
    .registers 4

    .line 109
    iget-object p0, p0, Lcom/android/server/wm/ExtraDisplayController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/core/RunestoneLogger;->sendRunestoneLogging(Landroid/content/Context;IILjava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$throwIfExtraBuiltInDisplaySize$2(Ljava/lang/String;)V
    .registers 2

    .line 407
    iget-object p0, p0, Lcom/android/server/wm/ExtraDisplayController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mMultiResolutionController:Lcom/android/server/wm/MultiResolutionController;

    .line 408
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiResolutionController;->updateDefaultDisplaySizeDensityChangedReason(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public applyDisplaySwappedPolicy(Z)Z
    .registers 4

    .line 169
    iget-object p1, p0, Lcom/android/server/wm/ExtraDisplayController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    const/4 p1, 0x2

    const/4 v0, 0x3

    .line 171
    :try_start_9
    iput p1, p0, Lcom/android/server/wm/FoldDisplayController;->mDisplaySwappedState:I

    .line 172
    iget-object p1, p0, Lcom/android/server/wm/ExtraDisplayController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v1, Lcom/android/server/wm/FoldDisplayController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/FoldDisplayController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_22

    .line 184
    iget-object p1, p0, Lcom/android/server/wm/ExtraDisplayController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 185
    iput v0, p0, Lcom/android/server/wm/FoldDisplayController;->mDisplaySwappedState:I

    const/4 p0, 0x0

    return p0

    :catchall_22
    move-exception p1

    .line 184
    iget-object v1, p0, Lcom/android/server/wm/ExtraDisplayController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 185
    iput v0, p0, Lcom/android/server/wm/FoldDisplayController;->mDisplaySwappedState:I

    .line 186
    throw p1
.end method

.method public applyExtraDisplaySizeIfNeeded(Lcom/android/server/wm/DisplayContent;)Z
    .registers 6

    .line 327
    iget-boolean v0, p0, Lcom/android/server/wm/FoldDisplayController;->mForcedDisplaySizeRequested:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 331
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/FlexibleDisplayController;->isFolded()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2a

    .line 332
    iget-object v0, p0, Lcom/android/server/wm/ExtraDisplayController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v3, p1, Lcom/android/server/wm/DisplayContent;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v2, v3}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 334
    iget-object v0, p0, Lcom/android/server/wm/FoldDisplayController;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v2, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iget-object v3, p1, Lcom/android/server/wm/DisplayContent;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wm/FoldDisplayController;->getExtraBuiltInDisplaySize(Landroid/graphics/Point;ILandroid/view/DisplayInfo;)V

    .line 336
    iget-object p0, p0, Lcom/android/server/wm/FoldDisplayController;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->x:I

    iput v0, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 337
    iget p0, p0, Landroid/graphics/Point;->y:I

    iput p0, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    return v1

    :cond_2a
    return v2
.end method

.method public beginDisplaySwappedPolicy()V
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/android/server/wm/ExtraDisplayController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 157
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 159
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimationForDisplaySwap()V

    :cond_b
    return-void
.end method

.method public canTurnDualScreenOn()Z
    .registers 2

    .line 125
    invoke-super {p0}, Lcom/android/server/wm/FlexibleDisplayController;->canTurnDualScreenOn()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/FlexibleDisplayController;->isDeviceFoldRequested()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public finishDisplaySwappedPolicy(Z)V
    .registers 3

    .line 206
    iget-object p1, p0, Lcom/android/server/wm/ExtraDisplayController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 220
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_SA_LOGGING:Z

    if-eqz v0, :cond_21

    if-eqz p1, :cond_15

    .line 222
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v0, "W004"

    invoke-static {v0, p1}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_15
    iget-object p0, p0, Lcom/android/server/wm/ExtraDisplayController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    const/4 p1, 0x1

    const-string v0, "Unfolding"

    invoke-interface {p0, v0, p1}, Lcom/android/server/policy/WindowManagerPolicyExt;->sendFoldSaLoggingCanceledIfNeeded(Ljava/lang/String;Z)V

    :cond_21
    return-void
.end method

.method public getCallback()Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;
    .registers 2

    .line 302
    new-instance v0, Lcom/android/server/wm/FoldDisplayController$FoldStateCallback;

    invoke-direct {v0, p0}, Lcom/android/server/wm/FoldDisplayController$FoldStateCallback;-><init>(Lcom/android/server/wm/FoldDisplayController;)V

    return-object v0
.end method

.method public getExtraBuiltInDisplaySize(Landroid/graphics/Point;ILandroid/view/DisplayInfo;)V
    .registers 4

    mul-int/lit16 p2, p2, 0x140

    int-to-float p0, p2

    const p2, 0x3bcccccd    # 0.00625f

    mul-float/2addr p0, p2

    float-to-int p0, p0

    const/16 p2, 0x348

    if-ge p0, p2, :cond_d

    move p0, p2

    .line 362
    :cond_d
    iget p2, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ge p2, p0, :cond_1a

    .line 363
    iput p0, p1, Landroid/graphics/Point;->x:I

    .line 364
    iget p3, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/2addr p0, p3

    div-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Point;->y:I

    goto :goto_20

    .line 366
    :cond_1a
    iput p2, p1, Landroid/graphics/Point;->x:I

    .line 367
    iget p0, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    iput p0, p1, Landroid/graphics/Point;->y:I

    :goto_20
    return-void
.end method

.method public getExtraDisplayPolicy()Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;
    .registers 2

    .line 70
    new-instance v0, Lcom/android/server/wm/FoldDisplayController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/FoldDisplayController$1;-><init>(Lcom/android/server/wm/FoldDisplayController;)V

    return-object v0
.end method

.method public handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Ljava/lang/Boolean;
    .registers 4

    .line 116
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/FlexibleDisplayController;->handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public hideAppContinuityGuideConfirmDialog()V
    .registers 1

    .line 418
    iget-object p0, p0, Lcom/android/server/wm/FoldDisplayController;->mAppContinuityGuideConfirmDialog:Lcom/android/server/wm/AppContinuityGuideConfirmDialog;

    if-eqz p0, :cond_7

    .line 419
    invoke-virtual {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->hide()V

    :cond_7
    return-void
.end method

.method public isDisplaySwappedRunning()Z
    .registers 2

    .line 152
    iget p0, p0, Lcom/android/server/wm/FoldDisplayController;->mDisplaySwappedState:I

    const/4 v0, 0x2

    if-lt p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isForcedDisplaySizeRequested()Z
    .registers 1

    .line 354
    iget-boolean p0, p0, Lcom/android/server/wm/FoldDisplayController;->mForcedDisplaySizeRequested:Z

    return p0
.end method

.method public isInDisplaySwapped()Z
    .registers 1

    .line 148
    iget p0, p0, Lcom/android/server/wm/FoldDisplayController;->mDisplaySwappedState:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isInPrimaryDevice(Landroid/view/DisplayInfo;)Z
    .registers 2

    .line 143
    iget-object p1, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/android/server/wm/FoldDisplayController;->mPrimaryDisplayPhysicalAddress:Landroid/view/DisplayAddress;

    .line 144
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public onFoldChangedLocked(Z)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 94
    :try_start_2
    iput v0, p0, Lcom/android/server/wm/FoldDisplayController;->mDisplaySwappedState:I

    .line 96
    invoke-virtual {p0}, Lcom/android/server/wm/FoldDisplayController;->beginDisplaySwappedPolicy()V

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/server/wm/FoldDisplayController;->applyDisplaySwappedPolicy(Z)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/wm/FoldDisplayController;->finishDisplaySwappedPolicy(Z)V
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_13

    .line 101
    :cond_10
    iput v1, p0, Lcom/android/server/wm/FoldDisplayController;->mDisplaySwappedState:I

    return-void

    :catchall_13
    move-exception p1

    iput v1, p0, Lcom/android/server/wm/FoldDisplayController;->mDisplaySwappedState:I

    .line 102
    throw p1
.end method

.method public final prepareFoldChangePolicy(II)V
    .registers 6

    const/4 v0, 0x0

    .line 280
    iput-object v0, p0, Lcom/android/server/wm/FoldDisplayController;->mFoldChangePolicy:Lcom/android/server/wm/FoldDisplayController$Policy;

    .line 281
    iget-object v1, p0, Lcom/android/server/wm/ExtraDisplayController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v1, :cond_4d

    const/4 v1, -0x1

    if-eq p2, v1, :cond_4d

    .line 282
    invoke-virtual {p0}, Lcom/android/server/wm/FlexibleDisplayController;->isDeviceFoldRequested()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_4d

    .line 285
    :cond_13
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    if-nez v1, :cond_32

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/FoldDisplayController;->mPolices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/FoldDisplayController$Policy;

    .line 294
    invoke-interface {v1, p1, p2}, Lcom/android/server/wm/FoldDisplayController$Policy;->prepare(II)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 295
    iput-object v1, p0, Lcom/android/server/wm/FoldDisplayController;->mFoldChangePolicy:Lcom/android/server/wm/FoldDisplayController$Policy;

    :cond_31
    return-void

    .line 287
    :cond_32
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "FoldPolicy: Skip fold policy, isFactoryBinary="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    :goto_4d
    return-void
.end method

.method public registerPolicy(Lcom/android/server/wm/FoldDisplayController$Policy;)Lcom/android/server/wm/FoldDisplayController$Policy;
    .registers 2

    .line 275
    iget-object p0, p0, Lcom/android/server/wm/FoldDisplayController;->mPolices:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public requestDisplaySwappedAnim(Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 232
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayRotation;->selectDisplayChangeAnimation(I)Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    move-result-object v0

    .line 233
    iget v1, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    if-nez v1, :cond_11

    iget v1, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    if-eqz v1, :cond_25

    .line 234
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation;->cancelSeamlessRotation()V

    const/4 v1, -0x1

    .line 237
    invoke-virtual {p1, v1, v1}, Lcom/android/server/wm/DisplayContent;->requestToUseBlackScreenshotIfNeeded(II)V

    .line 239
    iget-object p0, p0, Lcom/android/server/wm/ExtraDisplayController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    iget v0, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplay(IILcom/android/server/wm/DisplayContent;)V
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_29

    .line 243
    :cond_25
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->clearToUseBlackScreenshot()V

    return-void

    :catchall_29
    move-exception p0

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->clearToUseBlackScreenshot()V

    .line 245
    throw p0
.end method

.method public setForcedDisplaySizeRequested(Z)V
    .registers 3

    .line 344
    iget-boolean v0, p0, Lcom/android/server/wm/FoldDisplayController;->mForcedDisplaySizeRequested:Z

    if-eq v0, p1, :cond_2e

    .line 345
    iput-boolean p1, p0, Lcom/android/server/wm/FoldDisplayController;->mForcedDisplaySizeRequested:Z

    .line 346
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_2e

    .line 347
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setForcedDisplaySizeRequested: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", Callers="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x6

    .line 348
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    .line 347
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    return-void
.end method

.method public systemReady()V
    .registers 3

    .line 130
    invoke-static {}, Landroid/view/SurfaceControl;->getPrimaryPhysicalDisplayId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/FoldDisplayController;->mPrimaryDisplayPhysicalAddress:Landroid/view/DisplayAddress;

    return-void
.end method

.method public throwIfExtraBuiltInDisplaySize(Lcom/android/server/wm/DisplayContent;III)V
    .registers 15

    .line 374
    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v0, :cond_5

    return-void

    .line 378
    :cond_5
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 379
    iget-object v1, p0, Lcom/android/server/wm/ExtraDisplayController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 380
    invoke-virtual {p0}, Lcom/android/server/wm/FlexibleDisplayController;->isFolded()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_17

    move v2, v3

    goto :goto_1b

    :cond_17
    invoke-virtual {p0}, Lcom/android/server/wm/ExtraDisplayController;->getExtraDisplayId()I

    move-result v2

    .line 379
    :goto_1b
    invoke-virtual {v1, v2, v0}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 382
    :try_start_1e
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_c9

    const-string v2, ") is not allowed from "

    const-string v4, ","

    const-string v5, "ExtraBuiltInDisplaySize("

    if-ne p2, v1, :cond_5e

    :try_start_28
    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_c9

    if-eq p3, v1, :cond_2d

    goto :goto_5e

    .line 404
    :cond_2d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 407
    iget-object p2, p0, Lcom/android/server/wm/ExtraDisplayController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance p3, Lcom/android/server/wm/FoldDisplayController$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lcom/android/server/wm/FoldDisplayController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/FoldDisplayController;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 410
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5e
    :goto_5e
    const/4 v1, 0x3

    :try_start_5f
    new-array v6, v1, [I

    .line 386
    iget v7, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    aput v7, v6, v3

    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    const/4 v7, 0x1

    aput p1, v6, v7

    const/4 p1, 0x2

    aput p4, v6, p1

    move p4, v3

    :goto_6e
    if-ge p4, p1, :cond_c8

    .line 388
    aget v7, v6, p4

    if-nez v7, :cond_75

    goto :goto_c5

    .line 391
    :cond_75
    iget-object v8, p0, Lcom/android/server/wm/FoldDisplayController;->mTmpDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p0, v8, v7, v0}, Lcom/android/server/wm/FoldDisplayController;->getExtraBuiltInDisplaySize(Landroid/graphics/Point;ILandroid/view/DisplayInfo;)V

    .line 392
    iget-object v7, p0, Lcom/android/server/wm/FoldDisplayController;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    if-ne p2, v8, :cond_b6

    iget v7, v7, Landroid/graphics/Point;->y:I
    :try_end_82
    .catchall {:try_start_5f .. :try_end_82} :catchall_c9

    if-eq p3, v7, :cond_85

    goto :goto_b6

    .line 404
    :cond_85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 407
    iget-object p2, p0, Lcom/android/server/wm/ExtraDisplayController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance p3, Lcom/android/server/wm/FoldDisplayController$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lcom/android/server/wm/FoldDisplayController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/FoldDisplayController;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 410
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b6
    :goto_b6
    add-int/lit8 v7, p4, 0x1

    :goto_b8
    if-ge v7, v1, :cond_c5

    .line 397
    :try_start_ba
    aget v8, v6, p4

    aget v9, v6, v7

    if-ne v8, v9, :cond_c2

    .line 398
    aput v3, v6, v7
    :try_end_c2
    .catchall {:try_start_ba .. :try_end_c2} :catchall_c9

    :cond_c2
    add-int/lit8 v7, v7, 0x1

    goto :goto_b8

    :cond_c5
    :goto_c5
    add-int/lit8 p4, p4, 0x1

    goto :goto_6e

    :cond_c8
    return-void

    :catchall_c9
    move-exception p0

    .line 412
    throw p0
.end method
