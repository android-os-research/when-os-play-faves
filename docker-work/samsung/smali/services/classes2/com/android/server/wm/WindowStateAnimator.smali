.class public Lcom/android/server/wm/WindowStateAnimator;
.super Ljava/lang/Object;
.source "WindowStateAnimator.java"


# static fields
.field public static final COMMIT_DRAW_PENDING:I = 0x2

.field public static final DRAW_PENDING:I = 0x1

.field public static final HAS_DRAWN:I = 0x4

.field public static final NO_SURFACE:I = 0x0

.field public static final PRESERVED_SURFACE_LAYER:I = 0x1

.field public static final READY_TO_SHOW:I = 0x3

.field public static final ROOT_TASK_CLIP_AFTER_ANIM:I = 0x0

.field public static final ROOT_TASK_CLIP_NONE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public mAlpha:F

.field public mAnimationIsEntrance:Z

.field public final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field public mAttrType:I

.field public final mContext:Landroid/content/Context;

.field public mDrawState:I

.field public mEnterAnimationPending:Z

.field public mEnteringAnimation:Z

.field public final mIsWallpaper:Z

.field public mLastAlpha:F

.field public mLastHidden:Z

.field public final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field public mPopOverAlpha:F

.field public final mPostDrawTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mRemoteInjection:Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mSession:Lcom/android/server/wm/Session;

.field public mShownAlpha:F

.field public mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

.field public final mSystemDecorRect:Landroid/graphics/Rect;

.field public final mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

.field public final mWin:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 127
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 128
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 131
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPopOverAlpha:F

    .line 138
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    .line 190
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPostDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 197
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 199
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 200
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 201
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 202
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    .line 204
    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 205
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    .line 206
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    .line 207
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    .line 208
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    return-void
.end method


# virtual methods
.method public applyAnimationLocked(IZ)Z
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 789
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_14

    iget-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-ne v3, v2, :cond_14

    return v4

    .line 795
    :cond_14
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7db

    const/4 v7, 0x0

    if-ne v5, v6, :cond_21

    move v5, v4

    goto :goto_22

    :cond_21
    move v5, v7

    :goto_22
    if-eqz v2, :cond_39

    if-eqz v5, :cond_39

    .line 797
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 798
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 799
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 803
    :cond_39
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 804
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v3

    if-eqz v3, :cond_45

    move/from16 v17, v5

    goto/16 :goto_131

    .line 814
    :cond_45
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    move-result v3

    if-eqz v3, :cond_128

    .line 815
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v6, v1}, Lcom/android/server/wm/DisplayPolicy;->selectAnimation(Lcom/android/server/wm/WindowState;I)I

    move-result v3

    const/4 v6, 0x4

    const/4 v9, -0x1

    const/4 v10, 0x3

    const/4 v11, 0x2

    const-wide/16 v12, 0x20

    if-eqz v3, :cond_7a

    if-eq v3, v9, :cond_78

    const-string v14, "WSA#loadAnimation"

    .line 820
    invoke-static {v12, v13, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 821
    iget-object v14, v0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    invoke-static {v14, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    .line 822
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_9c

    :cond_78
    const/4 v14, 0x0

    goto :goto_9c

    :cond_7a
    if-eq v1, v4, :cond_89

    if-eq v1, v11, :cond_87

    if-eq v1, v10, :cond_85

    if-eq v1, v6, :cond_83

    goto :goto_8a

    :cond_83
    move v9, v10

    goto :goto_8a

    :cond_85
    move v9, v11

    goto :goto_8a

    :cond_87
    move v9, v4

    goto :goto_8a

    :cond_89
    move v9, v7

    :goto_8a
    if-ltz v9, :cond_78

    .line 840
    iget-object v14, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v15, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v15, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v14, v15, v9, v7}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;

    move-result-object v14

    .line 844
    :goto_9c
    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v15}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v15

    if-eqz v15, :cond_ff

    .line 845
    sget-boolean v15, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v15, :cond_ff

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    int-to-long v12, v3

    int-to-long v8, v9

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    int-to-long v10, v1

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    move/from16 v17, v5

    int-to-long v4, v3

    const/16 v3, 0x14

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v15, v7, v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v7, v13

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    const/4 v8, 0x3

    aput-object v16, v7, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    const/4 v8, 0x5

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v8

    const/4 v4, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x7

    aput-object v3, v7, v4

    const v3, -0x4e966131

    const/16 v4, 0x3514

    const/4 v5, 0x0

    invoke-static {v6, v3, v4, v5, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_101

    :cond_ff
    move/from16 v17, v5

    :goto_101
    if-eqz v14, :cond_131

    const-string v3, "WSA#startAnimation"

    const-wide/16 v4, 0x20

    .line 850
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 852
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_11b

    .line 853
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 854
    invoke-static {v14, v3, v1}, Lcom/android/server/wm/FreeformAnimationLoader;->loadWindowAnimationIfNeeded(Landroid/view/animation/Animation;Lcom/android/server/wm/WindowState;I)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_11b

    move-object v14, v1

    .line 860
    :cond_11b
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v14}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v3, 0x20

    .line 861
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 862
    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    goto :goto_131

    :cond_128
    move/from16 v17, v5

    if-nez v17, :cond_131

    .line 865
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    :cond_131
    :goto_131
    if-nez v2, :cond_13e

    if-eqz v17, :cond_13e

    .line 869
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 872
    :cond_13e
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v0

    return v0
.end method

.method public applyEnterAnimationLocked()V
    .registers 4

    .line 755
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    if-eqz v0, :cond_7

    return-void

    .line 760
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    .line 761
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    move v0, v1

    goto :goto_12

    :cond_11
    const/4 v0, 0x3

    .line 770
    :goto_12
    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    if-eq v2, v1, :cond_1d

    iget-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-nez v2, :cond_1d

    .line 771
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 774
    :cond_1d
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 775
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/AccessibilityController;->onWindowTransition(Lcom/android/server/wm/WindowState;I)V

    :cond_30
    return-void
.end method

.method public final applyMultiWindowAlpha()V
    .registers 5

    .line 973
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v0, v2

    goto :goto_d

    :cond_9
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 974
    :goto_d
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v3, :cond_39

    .line 975
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 976
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 977
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v2

    :cond_33
    if-eqz v2, :cond_39

    .line 979
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    :cond_39
    if-eqz v0, :cond_5d

    .line 983
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-nez v1, :cond_42

    goto :goto_5d

    .line 988
    :cond_42
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isMultiWindowMenuPopup()Z

    move-result v1

    if-eqz v1, :cond_4b

    return-void

    .line 992
    :cond_4b
    iget v0, v0, Lcom/android/server/wm/WindowContainer;->mFreeformAlpha:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5d

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5d

    .line 993
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    :cond_5d
    :goto_5d
    return-void
.end method

.method public commitFinishDrawingLocked()Z
    .registers 8

    .line 324
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW_VERBOSE:Z

    const-string v1, " cur mDrawState="

    const-string v2, "WindowManager"

    const/4 v3, 0x3

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v3, :cond_31

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "commitFinishDrawingLocked: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_31
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v0, v4, :cond_3a

    if-eq v0, v3, :cond_3a

    return v5

    .line 334
    :cond_3a
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mWaitToHandleResizing:Z

    if-eqz v0, :cond_65

    .line 336
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_64

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commitFinishDrawingLocked, waiting to handle resizing win="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 337
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    return v5

    .line 344
    :cond_65
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0xc1f020d

    const/4 v4, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    invoke-static {v1, v2, v5, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 346
    :cond_7d
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 348
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_93

    .line 349
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->canShowWindows()Z

    move-result v0

    if-nez v0, :cond_93

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v3, :cond_99

    .line 351
    :cond_93
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    move-result v5

    :cond_99
    return v5
.end method

.method public computeShownFrameLocked()V
    .registers 3

    .line 558
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    if-eqz v0, :cond_d

    return-void

    .line 560
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    .line 569
    :cond_16
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v0, :cond_3a

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "computeShownFrameLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not attached, mAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_3a
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 577
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->applyMultiWindowAlpha()V

    .line 581
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/NaturalSwitchingController;->adjustShownAlphaIfNeeded(Lcom/android/server/wm/WindowState;)V

    .line 584
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPopOverAlpha:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_56

    .line 585
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    :cond_56
    return-void
.end method

.method public createSurfaceLocked()Lcom/android/server/wm/WindowSurfaceController;
    .registers 18

    move-object/from16 v7, p0

    const-string v8, "WindowManager"

    .line 369
    iget-object v0, v7, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 371
    iget-object v1, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_b

    return-object v1

    :cond_b
    const/4 v9, 0x0

    .line 375
    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 377
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_25

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x4f9e8e05    # 5.320215E9f

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v1, v4, v9

    invoke-static {v2, v3, v9, v10, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 379
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->resetDrawState()V

    .line 381
    iget-object v1, v7, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 384
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 386
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    move-result v1

    if-eqz v1, :cond_38

    const/16 v1, 0x84

    goto :goto_39

    :cond_38
    const/4 v1, 0x4

    .line 392
    :goto_39
    :try_start_39
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->getRemoteInjection()Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 393
    iget-object v3, v7, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, v3}, Lcom/android/server/wm/WindowStateAnimator;->isWindowNotAnExceptionForDisableRemote(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, v7, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 395
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 394
    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;->isRemoteControlDisabled(I)Z

    move-result v2
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_53} :catch_59

    if-eqz v2, :cond_5e

    const/high16 v2, 0xf00000

    or-int/2addr v1, v2

    goto :goto_5e

    :catch_59
    const-string v2, "Exception occurred while checking for isRemoteControlDisabled"

    .line 399
    invoke-static {v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_5e
    :goto_5e
    iget-object v2, v7, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_6b

    or-int/lit8 v1, v1, 0x40

    .line 409
    :cond_6b
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_73

    or-int/2addr v1, v4

    .line 415
    :cond_73
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0xa29

    if-ne v2, v3, :cond_7c

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    :cond_7c
    move v14, v1

    .line 420
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_b3

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating surface in session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v2, v2, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_b3
    :try_start_b3
    iget v1, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v15, 0x1000000

    and-int/2addr v1, v15

    if-eqz v1, :cond_bc

    move v1, v11

    goto :goto_bd

    :cond_bc
    move v1, v9

    :goto_bd
    if-eqz v1, :cond_c1

    const/4 v1, -0x3

    goto :goto_c3

    .line 431
    :cond_c1
    iget v1, v12, Landroid/view/WindowManager$LayoutParams;->format:I

    :goto_c3
    move v3, v1

    .line 433
    new-instance v6, Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v12}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget v5, v12, Landroid/view/WindowManager$LayoutParams;->type:I
    :try_end_d0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_b3 .. :try_end_d0} :catch_1d3
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_d0} :catch_1c9

    move-object v1, v6

    move v4, v14

    move/from16 v16, v5

    move-object/from16 v5, p0

    move-object v10, v6

    move/from16 v6, v16

    :try_start_d9
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowSurfaceController;-><init>(Ljava/lang/String;IILcom/android/server/wm/WindowStateAnimator;I)V

    iput-object v10, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 435
    iget v1, v12, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/2addr v1, v15

    if-eqz v1, :cond_e5

    move v1, v11

    goto :goto_e6

    :cond_e5
    move v1, v9

    :goto_e6
    invoke-virtual {v10, v1}, Lcom/android/server/wm/WindowSurfaceController;->setColorSpaceAgnostic(Z)V

    .line 438
    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 448
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->forceChange()V

    .line 450
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    if-eqz v1, :cond_13e

    iget-object v1, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v2, v2, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v7, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    int-to-long v3, v3

    iget v5, v12, Landroid/view/WindowManager$LayoutParams;->format:I

    int-to-long v5, v5

    int-to-long v14, v14

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v1, v13, v9

    aput-object v2, v13, v11

    const/4 v1, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v13, v1

    const/4 v1, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v13, v1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v13, v2

    const/4 v1, 0x5

    aput-object v10, v13, v1
    :try_end_131
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_d9 .. :try_end_131} :catch_1c7
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_131} :catch_1c9

    const v1, 0x2c6dc63d

    const/16 v2, 0x150

    const/4 v3, 0x0

    :try_start_137
    invoke-static {v12, v1, v2, v3, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_13a
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_137 .. :try_end_13a} :catch_13b
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_13a} :catch_1c9

    goto :goto_13e

    :catch_13b
    move-object v1, v3

    goto/16 :goto_1d4

    .line 465
    :cond_13e
    :goto_13e
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v1, :cond_174

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", set left="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " top="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 466
    invoke-static {v8, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_174
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_1aa

    const-string v1, ">>> OPEN TRANSACTION createSurfaceLocked"

    .line 471
    invoke-static {v8, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE pos=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") HIDE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-static {v0, v1, v9}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 476
    :cond_1aa
    iput-boolean v11, v7, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 478
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v0, :cond_1c4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created surface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_1c4
    iget-object v0, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    return-object v0

    :catch_1c7
    const/4 v1, 0x0

    goto :goto_1d4

    :catch_1c9
    move-exception v0

    const-string v1, "Exception creating surface (parent dead?)"

    .line 460
    invoke-static {v8, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    iput v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x0

    return-object v1

    :catch_1d3
    move-object v1, v10

    :goto_1d4
    const-string v0, "OutOfResourcesException creating surface"

    .line 455
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v0, v7, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const-string v2, "create"

    invoke-virtual {v0, v7, v2, v11}, Lcom/android/server/wm/RootWindowContainer;->reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    .line 457
    iput v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    return-object v1
.end method

.method public destroySurface(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    .line 938
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPostDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 941
    :try_start_7
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_e

    .line 942
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowSurfaceController;->destroy(Landroid/view/SurfaceControl$Transaction;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_e} :catch_1a
    .catchall {:try_start_7 .. :try_end_e} :catchall_18

    .line 948
    :cond_e
    :goto_e
    iget-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 949
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 950
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    goto :goto_4e

    :catchall_18
    move-exception p1

    goto :goto_4f

    :catch_1a
    move-exception p1

    :try_start_1b
    const-string v2, "WindowManager"

    .line 945
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown when destroying surface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " surface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_1b .. :try_end_4d} :catchall_18

    goto :goto_e

    :goto_4e
    return-void

    .line 948
    :goto_4f
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 949
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 950
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 951
    throw p1
.end method

.method public destroySurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V
    .registers 11

    const-string v0, "WindowManager"

    .line 516
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x0

    if-eqz v2, :cond_f

    .line 518
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-ne v1, v4, :cond_f

    .line 519
    iput-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    .line 523
    :cond_f
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v2, :cond_14

    return-void

    :cond_14
    const/4 v2, 0x1

    .line 527
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mHidden:Z

    const/4 v1, 0x0

    .line 530
    :try_start_18
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v4, :cond_44

    .line 531
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " destroying surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_44
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    if-eqz v4, :cond_6a

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x52f7643c

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v3

    aput-object v5, v8, v2

    invoke-static {v6, v7, v3, v1, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 536
    :cond_6a
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 539
    iget-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V
    :try_end_74
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_74} :catch_75

    goto :goto_aa

    :catch_75
    move-exception p1

    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown when destroying Window "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " surface "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " session "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 541
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :goto_aa
    iget-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 550
    iget-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz p1, :cond_b6

    .line 551
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 553
    :cond_b6
    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 554
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    return-void
.end method

.method public drawStateToString()Ljava/lang/String;
    .registers 2

    .line 165
    iget p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-eqz p0, :cond_21

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_18

    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    .line 171
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    const-string p0, "HAS_DRAWN"

    return-object p0

    :cond_18
    const-string p0, "READY_TO_SHOW"

    return-object p0

    :cond_1b
    const-string p0, "COMMIT_DRAW_PENDING"

    return-object p0

    :cond_1e
    const-string p0, "DRAW_PENDING"

    return-object p0

    :cond_21
    const-string p0, "NO_SURFACE"

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 5

    .line 886
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-eqz v0, :cond_11

    .line 887
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mAnimationIsEntrance="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 889
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_18

    .line 890
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/WindowSurfaceController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_18
    if-eqz p3, :cond_5f

    .line 893
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mDrawState="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 894
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, " mLastHidden="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 895
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mEnterAnimationPending="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 896
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mSystemDecorRect="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 898
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 902
    :cond_5f
    iget-object p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPostDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p3, p3, Landroid/view/SurfaceControl$Transaction;->mName:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_85

    .line 903
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "PendingPostDrawTransaction"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 904
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, " ["

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPostDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p3, p3, Landroid/view/SurfaceControl$Transaction;->mName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "]"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 908
    :cond_85
    iget p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p3, p3, v0

    if-nez p3, :cond_99

    iget p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    cmpl-float p3, p3, v0

    if-nez p3, :cond_99

    iget p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_ba

    .line 909
    :cond_99
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mShownAlpha="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(F)V

    const-string p3, " mAlpha="

    .line 910
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(F)V

    const-string p3, " mLastAlpha="

    .line 911
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(F)V

    .line 913
    :cond_ba
    iget-object p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget p3, p3, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_d1

    .line 914
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mGlobalScale="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget p0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(F)V

    :cond_d1
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 876
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 877
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_10

    const-wide v1, 0x10b00000002L

    .line 878
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/WindowSurfaceController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_10
    const-wide v0, 0x10e00000003L

    .line 880
    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 881
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    const-wide v0, 0x10b00000004L

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 882
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public finishDrawingLocked(Landroid/view/SurfaceControl$Transaction;ZI)Z
    .registers 14

    .line 254
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_d

    move v1, v2

    goto :goto_e

    :cond_d
    move v1, v3

    :goto_e
    const/4 v4, 0x2

    if-eqz v1, :cond_31

    .line 257
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v5, :cond_31

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x14887ae1

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v0, v8, v3

    aput-object v5, v8, v2

    const-string v0, "Finishing drawing window %s: mDrawState=%s"

    invoke-static {v6, v7, v3, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 263
    :cond_31
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v0, v2, :cond_71

    .line 264
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_DRAW_enabled:Z

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_DRAW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x3b35bfb1

    const/4 v8, 0x0

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v0, v9, v3

    aput-object v5, v9, v2

    invoke-static {v6, v7, v3, v8, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_54
    if-eqz v1, :cond_6e

    .line 268
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x31702c29

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v3

    const-string v0, "Draw state now committed in %s"

    invoke-static {v1, v5, v3, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 270
    :cond_6e
    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    move v3, v2

    :cond_71
    if-eqz p1, :cond_cb

    if-lez p3, :cond_94

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishDrawing_syncId("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/SurfaceControl$Transaction;->mName:Ljava/lang/String;

    .line 285
    :cond_94
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v0, :cond_c1

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-eqz v0, :cond_c1

    if-nez p2, :cond_c1

    .line 287
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->shouldMergePostDrawTransactionImmediately()Z

    move-result p2

    if-nez p2, :cond_c1

    if-lez p3, :cond_bb

    .line 290
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p1, Landroid/view/SurfaceControl$Transaction;->mName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "<pending>"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/view/SurfaceControl$Transaction;->mName:Ljava/lang/String;

    .line 294
    :cond_bb
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPostDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_cc

    .line 296
    :cond_c1
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_cc

    :cond_cb
    move v2, v3

    :goto_cc
    return v2
.end method

.method public final getRemoteInjection()Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;
    .registers 2

    .line 483
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mRemoteInjection:Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;

    if-nez v0, :cond_e

    .line 484
    const-class v0, Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mRemoteInjection:Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;

    .line 486
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mRemoteInjection:Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;

    return-object p0
.end method

.method public getShown()Z
    .registers 1

    .line 929
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz p0, :cond_9

    .line 930
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfaceController;->getShown()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 955
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 958
    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public hasSurface()Z
    .registers 1

    .line 512
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfaceController;->hasSurface()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V
    .registers 4

    .line 241
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 245
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz p0, :cond_e

    .line 246
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowSurfaceController;->hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public final isInBlastSync()Z
    .registers 2

    .line 591
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->useBLASTSync()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->useBLASTSync()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public final isWindowNotAnExceptionForDisableRemote(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    if-eqz p1, :cond_30

    .line 491
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p1, 0x7d0

    if-eq p0, p1, :cond_2e

    const/16 p1, 0x7de

    if-eq p0, p1, :cond_2e

    const/16 p1, 0x7e1

    if-eq p0, p1, :cond_2e

    const/16 p1, 0x7e8

    if-eq p0, p1, :cond_2e

    const/16 p1, 0x82f

    if-eq p0, p1, :cond_2e

    const/16 p1, 0x8b2

    if-eq p0, p1, :cond_2e

    const/16 p1, 0xa3d

    if-eq p0, p1, :cond_2e

    const/16 p1, 0x7e3

    if-eq p0, p1, :cond_2e

    const/16 p1, 0x7e4

    if-eq p0, p1, :cond_2e

    packed-switch p0, :pswitch_data_32

    goto :goto_30

    :cond_2e
    :pswitch_2e
    const/4 p0, 0x0

    return p0

    :cond_30
    :goto_30
    const/4 p0, 0x1

    return p0

    :pswitch_data_32
    .packed-switch 0x961
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method public onAnimationFinished()V
    .registers 11

    .line 213
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v0, :cond_36

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_18

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    if-eqz v1, :cond_18

    move v1, v3

    goto :goto_19

    :cond_18
    move v1, v4

    :goto_19
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x6be59b59

    const/16 v7, 0x3c

    const/4 v8, 0x0

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v9, v3

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v9, v0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 217
    :cond_36
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->checkPolicyVisibilityChange()V

    .line 218
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 219
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    const/16 v2, 0x7d0

    if-eq v1, v2, :cond_4b

    const/16 v2, 0x7f8

    if-ne v1, v2, :cond_56

    :cond_4b
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 220
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 223
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 225
    :cond_56
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onExitAnimationDone()V

    .line 226
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 227
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 228
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 230
    :cond_71
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v1, :cond_80

    .line 231
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v2, "WindowStateAnimator"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 235
    :cond_80
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_89

    .line 236
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    :cond_89
    return-void
.end method

.method public prepareSurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 595
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v3

    const v4, 0x68abb2c2

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v3, :cond_3b

    .line 608
    iget-boolean v0, v2, Lcom/android/server/wm/WindowState;->mWaitToHandleResizing:Z

    if-eqz v0, :cond_1a

    .line 610
    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowState;->forceExecuteDrawHandlers(I)V

    .line 616
    :cond_1a
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 617
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_37

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v1, v4, v8, v7, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 618
    :cond_37
    invoke-virtual {v2, v8}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    :cond_3a
    return-void

    .line 623
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    .line 631
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v3

    if-nez v3, :cond_10b

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v3

    if-nez v3, :cond_4c

    goto/16 :goto_10b

    .line 644
    :cond_4c
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    cmpl-float v3, v3, v4

    const/4 v9, 0x3

    if-nez v3, :cond_78

    iget-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v3, :cond_5a

    goto :goto_78

    .line 677
    :cond_5a
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v9}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v1

    if-eqz v1, :cond_137

    .line 678
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v1, :cond_137

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x6ffe26f3

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v8

    invoke-static {v3, v4, v8, v7, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_137

    .line 646
    :cond_78
    :goto_78
    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 647
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v3, :cond_b7

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    float-to-double v10, v10

    iget v12, v2, Lcom/android/server/wm/WindowState;->mHScale:F

    float-to-double v12, v12

    iget v14, v2, Lcom/android/server/wm/WindowState;->mVScale:F

    float-to-double v14, v14

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v8

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v4, v6

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v4, v9

    const/4 v3, 0x4

    aput-object v16, v4, v3

    const v5, -0x71a12abd

    const/16 v9, 0xa8

    const/4 v10, 0x0

    invoke-static {v7, v5, v9, v10, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b8

    :cond_b7
    const/4 v3, 0x4

    .line 651
    :goto_b8
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 652
    invoke-virtual {v4, v1, v5}, Lcom/android/server/wm/WindowSurfaceController;->prepareToShowInTransaction(Landroid/view/SurfaceControl$Transaction;F)Z

    move-result v4

    if-eqz v4, :cond_137

    .line 654
    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v4, v3, :cond_137

    .line 655
    iget-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v3, :cond_137

    .line 656
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowStateAnimator;->showSurfaceRobustlyLocked(Landroid/view/SurfaceControl$Transaction;)Z

    move-result v1

    if-eqz v1, :cond_107

    .line 657
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->requestRemovalOfReplacedWindows(Lcom/android/server/wm/WindowState;)V

    .line 658
    iput-boolean v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 659
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 660
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getLastHasContent()Z

    move-result v3

    if-nez v3, :cond_137

    .line 664
    iget v3, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 665
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v3, :cond_137

    .line 666
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showSurfaceRobustlyLocked "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto :goto_137

    .line 672
    :cond_107
    invoke-virtual {v2, v8}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    goto :goto_137

    :cond_10b
    :goto_10b
    const-string/jumbo v3, "prepareSurfaceLocked"

    .line 632
    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/WindowStateAnimator;->hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 633
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    .line 639
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v1

    if-eqz v1, :cond_137

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    move-result v1

    if-eqz v1, :cond_137

    .line 640
    invoke-virtual {v2, v8}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 641
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v1, :cond_137

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v8

    const/4 v1, 0x0

    invoke-static {v3, v4, v8, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 682
    :cond_137
    :goto_137
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v1

    if-eqz v1, :cond_1a1

    .line 683
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v1

    if-nez v1, :cond_189

    .line 686
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/ScreenRotationAnimation;

    .line 694
    iget-object v1, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->shouldSyncRotationChange(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_15d

    .line 695
    iget-object v1, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v8, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 696
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    goto :goto_173

    .line 699
    :cond_15d
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_173

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x2aa64a0d

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v8

    const/4 v0, 0x0

    invoke-static {v1, v3, v8, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_174

    :cond_173
    :goto_173
    const/4 v0, 0x0

    .line 703
    :goto_174
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v1, :cond_1a1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x43680740

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v8

    invoke-static {v2, v3, v8, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1a1

    .line 707
    :cond_189
    invoke-virtual {v2, v8}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 708
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_1a1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x369bfa1e

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v8

    const/4 v0, 0x0

    invoke-static {v1, v2, v8, v0, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1a1
    :goto_1a1
    return-void
.end method

.method public resetDrawState()V
    .registers 3

    const/4 v0, 0x1

    .line 357
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 359
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_a

    return-void

    .line 363
    :cond_a
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 364
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearAllDrawn()V

    :cond_17
    return-void
.end method

.method public setColorSpaceAgnosticLocked(Z)V
    .registers 2

    .line 728
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez p0, :cond_5

    return-void

    .line 731
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setColorSpaceAgnostic(Z)V

    return-void
.end method

.method public setInternalPresentationOnly(Z)V
    .registers 2

    .line 963
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez p0, :cond_5

    return-void

    .line 966
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setInternalPresentationOnly(Z)V

    return-void
.end method

.method public setOpaqueLocked(Z)V
    .registers 2

    .line 714
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez p0, :cond_5

    return-void

    .line 717
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setOpaque(Z)V

    return-void
.end method

.method public setSecureLocked(Z)V
    .registers 2

    .line 721
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez p0, :cond_5

    return-void

    .line 724
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setSecure(Z)V

    return-void
.end method

.method public shouldMergePostDrawTransactionImmediately()Z
    .registers 3

    .line 306
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_1b

    .line 314
    :cond_12
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mWaitToHandleResizing:Z

    if-eqz p0, :cond_19

    return v1

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    return v1
.end method

.method public final showSurfaceRobustlyLocked(Landroid/view/SurfaceControl$Transaction;)Z
    .registers 3

    .line 743
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->showRobustly(Landroid/view/SurfaceControl$Transaction;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 747
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPostDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 920
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "WindowStateAnimator{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 921
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    .line 922
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 923
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const/16 p0, 0x7d

    .line 924
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 925
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
