.class public Lcom/android/server/wm/AsyncRotationController;
.super Lcom/android/server/wm/FadeAnimationController;
.source "AsyncRotationController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AsyncRotationController$Operation;,
        Lcom/android/server/wm/AsyncRotationController$TransitionOp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/FadeAnimationController;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/wm/WindowState;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final OP_APP_SWITCH:I = 0x1

.field public static final OP_CHANGE:I = 0x2

.field public static final OP_CHANGE_MAY_SEAMLESS:I = 0x3

.field public static final OP_LEGACY:I = 0x0

.field public static final TAG:Ljava/lang/String; = "AsyncRotation_WindowManager"


# instance fields
.field public final mForceTargetWindowTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field public final mHasScreenRotationAnimation:Z

.field public mHasUnlockTransitionAnimation:Z

.field public mHideImmediately:Z

.field public mIsInDisplaySwapped:Z

.field public mIsStartTransactionCommitted:Z

.field public mIsSyncDrawRequested:Z

.field public mNavBarToken:Lcom/android/server/wm/WindowToken;

.field public mOnShowRunnable:Ljava/lang/Runnable;

.field public final mOriginalRotation:I

.field public mRotator:Lcom/android/server/wm/SeamlessRotator;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTargetWindowTokens:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowToken;",
            "Lcom/android/server/wm/AsyncRotationController$Operation;",
            ">;"
        }
    .end annotation
.end field

.field public mTimeoutRunnable:Ljava/lang/Runnable;

.field public final mTransitionOp:I


# direct methods
.method public static synthetic $r8$lambda$FwZt4XS_Tmjft095bASPMEGxAXQ(Landroid/view/SurfaceControl$Transaction;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/AsyncRotationController;->lambda$keepAppearanceInPreviousRotation$0(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S0onWPYtDSmMpQM6PmY0KEx-irY(Lcom/android/server/wm/AsyncRotationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/AsyncRotationController;->lambda$setupStartTransaction$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$mEF7JzKpk_FZ-dpuWX2DBbtEhEE(Lcom/android/server/wm/AsyncRotationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/AsyncRotationController;->lambda$scheduleTimeout$1()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 10

    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/wm/FadeAnimationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 82
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mForceTargetWindowTokens:Ljava/util/ArrayList;

    .line 135
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 136
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AsyncRotationController;->mOriginalRotation:I

    .line 137
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 138
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x6

    if-ne v1, v5, :cond_56

    .line 140
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v1

    .line 141
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-eqz v5, :cond_53

    .line 145
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_53

    .line 146
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_53

    .line 147
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation;->getRotation()I

    move-result v5

    invoke-virtual {v1, v0, v5}, Lcom/android/server/wm/DisplayRotation;->canRotateSeamlessly(II)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 148
    iput v7, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    goto :goto_5d

    .line 150
    :cond_53
    iput v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    goto :goto_5d

    :cond_56
    if-eqz v1, :cond_5b

    .line 153
    iput v4, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    goto :goto_5d

    .line 155
    :cond_5b
    iput v3, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    .line 167
    :goto_5d
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isKeyguardGoingAway()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 168
    iput-boolean v4, p0, Lcom/android/server/wm/AsyncRotationController;->mHasUnlockTransitionAnimation:Z

    .line 177
    :cond_65
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    if-nez v0, :cond_70

    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    if-eq v0, v2, :cond_70

    goto :goto_71

    :cond_70
    move v3, v4

    :goto_71
    iput-boolean v3, p0, Lcom/android/server/wm/AsyncRotationController;->mHasScreenRotationAnimation:Z

    if-eqz v3, :cond_77

    .line 184
    iput-boolean v4, p0, Lcom/android/server/wm/AsyncRotationController;->mHideImmediately:Z

    .line 188
    :cond_77
    invoke-virtual {p1, p0, v4}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 191
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    if-nez v0, :cond_81

    .line 192
    iput-boolean v4, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    goto :goto_94

    .line 193
    :cond_81
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result v0

    if-nez v0, :cond_91

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 194
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result p1

    if-eqz p1, :cond_94

    .line 195
    :cond_91
    invoke-virtual {p0}, Lcom/android/server/wm/AsyncRotationController;->keepAppearanceInPreviousRotation()V

    :cond_94
    :goto_94
    return-void
.end method

.method public static synthetic lambda$keepAppearanceInPreviousRotation$0(Landroid/view/SurfaceControl$Transaction;)V
    .registers 1

    return-void
.end method

.method private synthetic lambda$scheduleTimeout$1()V
    .registers 5

    .line 403
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string v1, "AsyncRotation_WindowManager"

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Async rotation timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 405
    iput-boolean v1, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    .line 406
    iget-object v1, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotationIfPossible()V

    .line 407
    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 408
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_34
    move-exception p0

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method private synthetic lambda$setupStartTransaction$2()V
    .registers 6

    .line 489
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string v1, "AsyncRotation_WindowManager"

    const-string v2, "Start transaction is committed"

    .line 490
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 491
    iput-boolean v1, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    .line 492
    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_19
    if-ltz v2, :cond_59

    .line 493
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AsyncRotationController$Operation;

    iget-boolean v1, v1, Lcom/android/server/wm/AsyncRotationController$Operation;->mIsCompletionPending:Z

    if-eqz v1, :cond_56

    const-string v1, "AsyncRotation_WindowManager"

    .line 495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Continue pending completion "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 496
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 495
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v1, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotation(Lcom/android/server/wm/WindowToken;)V

    :cond_56
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    .line 501
    :cond_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_5 .. :try_end_5a} :catchall_5e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_5e
    move-exception p0

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method


# virtual methods
.method public accept(Lcom/android/server/wm/WindowState;)V
    .registers 7

    .line 202
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_b3

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_b3

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v0, :cond_b3

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v0, :cond_b3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f8

    if-ne v0, v1, :cond_1a

    goto/16 :goto_b3

    .line 206
    :cond_1a
    iget v1, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    if-nez v1, :cond_23

    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    if-eqz v1, :cond_23

    return-void

    :cond_23
    const/16 v1, 0x7e3

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v0, v1, :cond_61

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 213
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result v0

    .line 214
    iget v1, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    if-nez v1, :cond_4e

    .line 215
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mNavBarToken:Lcom/android/server/wm/WindowToken;

    if-eqz v0, :cond_3f

    return-void

    .line 219
    :cond_3f
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 220
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->isNavigationBarAttachedToApp()Z

    move-result v0

    if-eqz v0, :cond_53

    return-void

    :cond_4e
    if-nez v0, :cond_54

    if-ne v1, v3, :cond_53

    goto :goto_54

    :cond_53
    move v2, v4

    .line 226
    :cond_54
    :goto_54
    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    new-instance v0, Lcom/android/server/wm/AsyncRotationController$Operation;

    invoke-direct {v0, v2}, Lcom/android/server/wm/AsyncRotationController$Operation;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 230
    :cond_61
    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 231
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_7e

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v1, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 232
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-ne v0, v1, :cond_7e

    return-void

    .line 239
    :cond_7e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowType()I

    move-result v0

    const/16 v1, 0xa2c

    if-ne v0, v1, :cond_87

    return-void

    .line 243
    :cond_87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncRotationController, added w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    if-eq v0, v3, :cond_a7

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    if-eqz v0, :cond_a6

    goto :goto_a7

    :cond_a6
    move v2, v4

    .line 248
    :cond_a7
    :goto_a7
    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    new-instance v0, Lcom/android/server/wm/AsyncRotationController$Operation;

    invoke-direct {v0, v2}, Lcom/android/server/wm/AsyncRotationController$Operation;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b3
    :goto_b3
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 72
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AsyncRotationController;->accept(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public clearForceHideImmediately(Lcom/android/server/wm/WindowToken;Ljava/lang/String;)Z
    .registers 4

    .line 640
    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController;->mForceTargetWindowTokens:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 642
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearForceHideImmediately "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", reason="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AsyncRotation_WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method public completeAll()V
    .registers 3

    .line 326
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 327
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AsyncRotationController;->finishOp(Lcom/android/server/wm/WindowToken;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 329
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 330
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_28

    .line 331
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 333
    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mOnShowRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_32

    .line 334
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 335
    iput-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mOnShowRunnable:Ljava/lang/Runnable;

    :cond_32
    return-void
.end method

.method public completeRotation(Lcom/android/server/wm/WindowToken;)Z
    .registers 7

    .line 344
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    const-string v1, "AsyncRotation_WindowManager"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2d

    .line 345
    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/AsyncRotationController$Operation;

    if-eqz p0, :cond_2c

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Complete set pending "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iput-boolean v2, p0, Lcom/android/server/wm/AsyncRotationController$Operation;->mIsCompletionPending:Z

    :cond_2c
    return v3

    .line 356
    :cond_2d
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    if-ne v0, v2, :cond_61

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 357
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AsyncRotationController$Operation;

    if-eqz v0, :cond_61

    .line 358
    iget v0, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_61

    .line 360
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Defer completion "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 364
    :cond_61
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AsyncRotationController;->isTargetToken(Lcom/android/server/wm/WindowToken;)Z

    move-result v0

    if-nez v0, :cond_68

    return v3

    .line 365
    :cond_68
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mHasScreenRotationAnimation:Z

    if-nez v0, :cond_70

    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    if-eqz v0, :cond_9f

    .line 366
    :cond_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Complete directly "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AsyncRotationController;->finishOp(Lcom/android/server/wm/WindowToken;)V

    .line 368
    iget-object p1, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9f

    .line 369
    iget-object p1, p0, Lcom/android/server/wm/AsyncRotationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_9e

    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_9e
    return v2

    :cond_9f
    return v3
.end method

.method public fadeWindowToken(ZLcom/android/server/wm/WindowToken;I)V
    .registers 6

    .line 595
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mHideImmediately:Z

    .line 597
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/android/server/wm/AsyncRotationController;->shouldHideImmediately(Lcom/android/server/wm/WindowToken;)Z

    move-result v1

    or-int/2addr v1, v0

    iput-boolean v1, p0, Lcom/android/server/wm/AsyncRotationController;->mHideImmediately:Z

    .line 599
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/FadeAnimationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;I)V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_f

    .line 601
    iput-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mHideImmediately:Z

    return-void

    :catchall_f
    move-exception p1

    iput-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mHideImmediately:Z

    .line 602
    throw p1
.end method

.method public final finishOp(Lcom/android/server/wm/WindowToken;)V
    .registers 8

    .line 288
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AsyncRotationController$Operation;

    if-nez v0, :cond_b

    return-void

    .line 290
    :cond_b
    iget-object v1, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mCapturedDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x0

    const-string v3, "AsyncRotation_WindowManager"

    if-eqz v1, :cond_37

    .line 292
    iget-object v1, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v4, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mCapturedDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 293
    iput-object v2, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mCapturedDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishOp merge transaction "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_37
    iget v1, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v1, v4, :cond_5b

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishOp fade-in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x40

    .line 300
    invoke-virtual {p0, v5, p1, v0}, Lcom/android/server/wm/AsyncRotationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;I)V

    goto :goto_98

    :cond_5b
    if-ne v1, v5, :cond_98

    .line 301
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    if-eqz v1, :cond_98

    iget-object v1, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_98

    .line 302
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_98

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishOp undo seamless "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    iget-object p0, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    iget-object v0, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/SeamlessRotator;->setIdentityMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 307
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz p0, :cond_98

    const/4 p0, 0x0

    .line 309
    invoke-virtual {p1, p0, v2}, Lcom/android/server/wm/WindowToken;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    :cond_98
    :goto_98
    return-void
.end method

.method public forceHideImmediately(Lcom/android/server/wm/WindowToken;Ljava/lang/String;)V
    .registers 4

    .line 631
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mForceTargetWindowTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AsyncRotationController;->hideImmediately(Lcom/android/server/wm/WindowToken;)V

    .line 635
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "forceHideImmediately "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", reason="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AsyncRotation_WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getFadeInAnimation()Landroid/view/animation/Animation;
    .registers 2

    .line 563
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mHasScreenRotationAnimation:Z

    if-eqz v0, :cond_e

    .line 565
    iget-object p0, p0, Lcom/android/server/wm/FadeAnimationController;->mContext:Landroid/content/Context;

    const v0, 0x10a00e5

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    .line 567
    :cond_e
    invoke-super {p0}, Lcom/android/server/wm/FadeAnimationController;->getFadeInAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public getFadeOutAnimation()Landroid/view/animation/Animation;
    .registers 2

    .line 572
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mHideImmediately:Z

    if-eqz v0, :cond_13

    .line 575
    iget p0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    .line 576
    :goto_d
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    return-object v0

    .line 578
    :cond_13
    invoke-super {p0}, Lcom/android/server/wm/FadeAnimationController;->getFadeOutAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public handleFinishDrawing(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Transaction;)Z
    .registers 8

    .line 541
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5f

    if-eqz p2, :cond_5f

    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mIsSyncDrawRequested:Z

    if-eqz v0, :cond_5f

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 542
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_5f

    .line 545
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AsyncRotationController$Operation;

    if-nez v0, :cond_21

    return v1

    .line 547
    :cond_21
    iget v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2d

    iget v2, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2d

    move v2, v3

    goto :goto_2e

    :cond_2d
    move v2, v1

    .line 549
    :goto_2e
    iget-boolean p0, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    if-nez p0, :cond_38

    iget p0, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    if-ne p0, v3, :cond_38

    move p0, v3

    goto :goto_39

    :cond_38
    move p0, v1

    :goto_39
    if-nez v2, :cond_3e

    if-nez p0, :cond_3e

    return v1

    .line 552
    :cond_3e
    iget-object p0, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mCapturedDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    if-nez p0, :cond_45

    .line 553
    iput-object p2, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mCapturedDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    goto :goto_48

    .line 555
    :cond_45
    invoke-virtual {p0, p2}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 557
    :goto_48
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Capture draw transaction "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AsyncRotation_WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5f
    :goto_5f
    return v1
.end method

.method public hideImmediately(Lcom/android/server/wm/WindowToken;)V
    .registers 6

    .line 417
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mHideImmediately:Z

    const/4 v1, 0x1

    .line 418
    iput-boolean v1, p0, Lcom/android/server/wm/AsyncRotationController;->mHideImmediately:Z

    .line 419
    new-instance v1, Lcom/android/server/wm/AsyncRotationController$Operation;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/server/wm/AsyncRotationController$Operation;-><init>(I)V

    .line 420
    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x40

    .line 421
    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/wm/AsyncRotationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;I)V

    .line 422
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getAnimationLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    .line 423
    iput-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mHideImmediately:Z

    .line 424
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hideImmediately "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AsyncRotation_WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public hideWindowTokenIfDisplaySwapped(Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 608
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mIsInDisplaySwapped:Z

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 609
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AsyncRotationController;->accept(Lcom/android/server/wm/WindowState;)V

    .line 611
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AsyncRotationController$Operation;

    if-eqz v0, :cond_5d

    .line 612
    iget v0, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    goto :goto_5d

    .line 617
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideWindowTokenIfDisplaySwapped, w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    .line 618
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsyncRotation_WindowManager"

    .line 617
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 621
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/16 v1, 0x40

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/AsyncRotationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;I)V

    .line 623
    iget-object p1, p0, Lcom/android/server/wm/AsyncRotationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_5d

    .line 624
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 625
    invoke-virtual {p0}, Lcom/android/server/wm/AsyncRotationController;->scheduleTimeout()V

    nop

    :cond_5d
    :goto_5d
    return-void
.end method

.method public isAsync(Lcom/android/server/wm/WindowState;)Z
    .registers 4

    .line 429
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mNavBarToken:Lcom/android/server/wm/WindowToken;

    if-eq v0, v1, :cond_17

    iget-boolean p1, p1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    if-eqz p1, :cond_e

    iget p1, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    if-eqz p1, :cond_17

    .line 431
    :cond_e
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AsyncRotationController;->isTargetToken(Lcom/android/server/wm/WindowToken;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public isTargetToken(Lcom/android/server/wm/WindowToken;)Z
    .registers 2

    .line 436
    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public keepAppearanceInPreviousRotation()V
    .registers 7

    .line 259
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_3f

    .line 260
    iget-boolean v2, p0, Lcom/android/server/wm/AsyncRotationController;->mHasScreenRotationAnimation:Z

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 261
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AsyncRotationController$Operation;

    iget v2, v2, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1c

    goto :goto_3c

    .line 266
    :cond_1c
    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 267
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_29
    if-ltz v3, :cond_3c

    .line 268
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    new-instance v5, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowState;->applyWithNextDraw(Ljava/util/function/Consumer;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_29

    :cond_3c
    :goto_3c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 272
    :cond_3f
    iput-boolean v1, p0, Lcom/android/server/wm/AsyncRotationController;->mIsSyncDrawRequested:Z

    const-string p0, "AsyncRotation_WindowManager"

    const-string v0, "Requested to sync draw transaction"

    .line 273
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTransitionFinished()V
    .registers 5

    .line 507
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    return-void

    .line 512
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTransitionFinished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsyncRotation_WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_27
    if-ltz v0, :cond_5d

    .line 516
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 517
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 518
    iget-object v2, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotation(Lcom/android/server/wm/WindowToken;)V

    goto :goto_5a

    .line 521
    :cond_3d
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_43
    if-ltz v2, :cond_5a

    .line 524
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDrawFinishedLw()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 525
    iget-object v2, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotation(Lcom/android/server/wm/WindowToken;)V

    goto :goto_5a

    :cond_57
    add-int/lit8 v2, v2, -0x1

    goto :goto_43

    :cond_5a
    :goto_5a
    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    .line 530
    :cond_5d
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_68

    .line 531
    invoke-virtual {p0}, Lcom/android/server/wm/AsyncRotationController;->scheduleTimeout()V

    :cond_68
    return-void
.end method

.method public final scheduleTimeout()V
    .registers 4

    .line 401
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 402
    new-instance v0, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AsyncRotationController;)V

    iput-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 411
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setOnShowRunnable(Ljava/lang/Runnable;)V
    .registers 2

    .line 449
    iput-object p1, p0, Lcom/android/server/wm/AsyncRotationController;->mOnShowRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setupStartTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 10

    .line 457
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_94

    .line 458
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AsyncRotationController$Operation;

    .line 459
    iget-object v2, v1, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_90

    .line 460
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_90

    .line 461
    :cond_1d
    iget-boolean v3, p0, Lcom/android/server/wm/AsyncRotationController;->mHasScreenRotationAnimation:Z

    const-string v4, "AsyncRotation_WindowManager"

    if-eqz v3, :cond_4d

    iget v1, v1, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4d

    const/4 v1, 0x0

    .line 463
    invoke-virtual {p1, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setup alpha0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 471
    :cond_4d
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    if-nez v1, :cond_6b

    .line 472
    new-instance v1, Lcom/android/server/wm/SeamlessRotator;

    iget v3, p0, Lcom/android/server/wm/AsyncRotationController;->mOriginalRotation:I

    iget-object v5, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 473
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 474
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v1, v3, v5, v6, v7}, Lcom/android/server/wm/SeamlessRotator;-><init>(IILandroid/view/DisplayInfo;Z)V

    iput-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    .line 477
    :cond_6b
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/SeamlessRotator;->applyTransform(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setup unrotate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    :goto_90
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    .line 484
    :cond_94
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    if-eqz v0, :cond_99

    return-void

    .line 488
    :cond_99
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v1, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/AsyncRotationController;)V

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public shouldFreezeInsetsPosition(Lcom/android/server/wm/WindowState;)Z
    .registers 4

    .line 444
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 445
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AsyncRotationController;->isTargetToken(Lcom/android/server/wm/WindowToken;)Z

    move-result p0

    if-eqz p0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public shouldHideImmediately(Lcom/android/server/wm/WindowToken;)Z
    .registers 4

    .line 583
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mHasUnlockTransitionAnimation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    if-eqz p1, :cond_18

    .line 587
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getWindowLayerFromType()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v0, 0x7f8

    .line 588
    invoke-interface {p0, v0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result p0

    if-ge p1, p0, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public start()V
    .registers 8

    .line 383
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_67

    .line 384
    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 385
    iget-object v3, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AsyncRotationController$Operation;

    .line 386
    iget v4, v3, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    const/4 v5, 0x2

    const-string v6, "AsyncRotation_WindowManager"

    if-ne v4, v5, :cond_46

    const/4 v4, 0x0

    const/16 v5, 0x40

    .line 387
    invoke-virtual {p0, v4, v2, v5}, Lcom/android/server/wm/AsyncRotationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;I)V

    .line 388
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getAnimationLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start fade-out "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :cond_46
    if-ne v4, v1, :cond_64

    .line 391
    iget-object v4, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v4, v3, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start seamless "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    :goto_64
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 395
    :cond_67
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mHasScreenRotationAnimation:Z

    if-eqz v0, :cond_6e

    .line 396
    invoke-virtual {p0}, Lcom/android/server/wm/AsyncRotationController;->scheduleTimeout()V

    :cond_6e
    return-void
.end method
