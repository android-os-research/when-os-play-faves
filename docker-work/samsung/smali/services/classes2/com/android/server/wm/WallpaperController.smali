.class public Lcom/android/server/wm/WallpaperController;
.super Ljava/lang/Object;
.source "WallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WindowManager"

.field public static final WALLPAPER_DRAW_NORMAL:I = 0x0

.field public static final WALLPAPER_DRAW_PENDING:I = 0x1

.field public static final WALLPAPER_DRAW_PENDING_TIMEOUT_DURATION:J = 0x1f4L

.field public static final WALLPAPER_DRAW_TIMEOUT:I = 0x2

.field public static final WALLPAPER_TIMEOUT:J = 0x96L

.field public static final WALLPAPER_TIMEOUT_RECOVERY:J = 0x2710L


# instance fields
.field public mComputeMaxZoomOutFunction:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

.field public final mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field public mLastFrozen:Z

.field public mLastWallpaperDisplayOffsetX:I

.field public mLastWallpaperDisplayOffsetY:I

.field public mLastWallpaperTimeoutTime:J

.field public mLastWallpaperX:F

.field public mLastWallpaperXStep:F

.field public mLastWallpaperY:F

.field public mLastWallpaperYStep:F

.field public mLastWallpaperZoomOut:F

.field public final mMaxWallpaperScale:F

.field public mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

.field public mService:Lcom/android/server/wm/WindowManagerService;

.field public mShouldUpdateZoom:Z

.field public mTmpTopWallpaper:Lcom/android/server/wm/WindowState;

.field public mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

.field public mWallpaperDrawState:I

.field public mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field public final mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WallpaperWindowToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$D7w0PRblSwSAeTCuh4JaH2hP_6s(Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WallpaperController;->lambda$new$1(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Etr_DTxnsDybFGN2AsLZlLMCbd4(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/WallpaperController;->lambda$updateWallpaperWindowsTarget$2(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$N6slyzhASnX3CUGjcoXUyUxUTt4(Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WallpaperController;->lambda$getTopVisibleWallpaper$4(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NiIuLetB0NOsLItwf9x4jlYs0EY(Lcom/android/server/wm/CustomLetterboxEnhancedController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/WallpaperController;->lambda$adjustWallpaperWindows$3(Lcom/android/server/wm/CustomLetterboxEnhancedController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pu1QMhn9RZJIEjCsVJQF6nLiBNA(Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WallpaperController;->lambda$new$0(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 83
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/high16 v1, -0x40800000    # -1.0f

    .line 85
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 86
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 87
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 88
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    const/4 v1, 0x0

    .line 89
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    const/high16 v1, -0x80000000

    .line 90
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 91
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    const/4 v1, 0x0

    .line 94
    iput-boolean v1, p0, Lcom/android/server/wm/WallpaperController;->mLastFrozen:Z

    .line 112
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 122
    new-instance v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;-><init>(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult-IA;)V

    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 124
    new-instance v0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WallpaperController;)V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;

    .line 245
    new-instance v0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WallpaperController;)V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mComputeMaxZoomOutFunction:Ljava/util/function/Consumer;

    .line 253
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 254
    iput-object p2, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 255
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10500e6

    .line 256
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    return-void
.end method

.method public static synthetic lambda$adjustWallpaperWindows$3(Lcom/android/server/wm/CustomLetterboxEnhancedController;)V
    .registers 1

    .line 732
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->adjustWallpaperWindowsLocked()V

    return-void
.end method

.method private synthetic lambda$getTopVisibleWallpaper$4(Lcom/android/server/wm/WindowState;)Z
    .registers 4

    .line 916
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_15

    .line 917
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v1

    if-eqz v1, :cond_15

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_15

    .line 918
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mTmpTopWallpaper:Lcom/android/server/wm/WindowState;

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(Lcom/android/server/wm/WindowState;)Z
    .registers 11

    .line 125
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x0

    const/16 v2, 0x7dd

    if-ne v0, v2, :cond_1b

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v2, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_13

    iget-boolean v2, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    if-eqz v2, :cond_1a

    .line 127
    :cond_13
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setTopWallpaper(Lcom/android/server/wm/WindowState;)V

    .line 128
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iput-boolean v1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    :cond_1a
    return v1

    .line 133
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    .line 134
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    const/4 v3, 0x3

    const-string v4, "WindowManager"

    if-nez v0, :cond_56

    .line 135
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_69

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 136
    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v0

    if-nez v0, :cond_69

    .line 138
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz p0, :cond_55

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipping hidden and not animating token: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    return v1

    .line 142
    :cond_56
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 143
    iget-object v5, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    if-eqz v0, :cond_69

    .line 147
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisibleRequested()Z

    move-result v6

    if-nez v6, :cond_69

    invoke-virtual {v5, v0}, Lcom/android/server/wm/TransitionController;->inTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_69

    return v1

    .line 152
    :cond_69
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    const-string v5, "Win "

    if-eqz v0, :cond_99

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": isOnScreen="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mDrawState="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_99
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_aa

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v6, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    if-nez v6, :cond_aa

    .line 160
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    .line 163
    :cond_aa
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_b3

    .line 164
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getAnimatingContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_b4

    :cond_b3
    const/4 v0, 0x0

    :goto_b4
    if-eqz v0, :cond_cc

    .line 166
    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v6

    if-eqz v6, :cond_cc

    iget v6, v0, Lcom/android/server/wm/WindowContainer;->mTransit:I

    .line 167
    invoke-static {v6}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransitOld(I)Z

    move-result v6

    if-eqz v6, :cond_cc

    iget v6, v0, Lcom/android/server/wm/WindowContainer;->mTransitFlags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_cc

    move v6, v2

    goto :goto_cd

    :cond_cc
    move v6, v1

    .line 174
    :goto_cd
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_e4

    .line 176
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v7

    if-nez v7, :cond_e2

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    move-result v7

    if-eqz v7, :cond_e0

    goto :goto_e2

    :cond_e0
    move v7, v1

    goto :goto_ee

    :cond_e2
    :goto_e2
    move v7, v2

    goto :goto_ee

    .line 178
    :cond_e4
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x80000

    and-int/2addr v7, v8

    if-eqz v7, :cond_e0

    goto :goto_e2

    :goto_ee
    if-eqz v7, :cond_13d

    .line 180
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v7

    if-eqz v7, :cond_13d

    .line 181
    iget-object v7, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 182
    invoke-virtual {v7}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v8

    if-eqz v8, :cond_10a

    .line 183
    invoke-virtual {v7, p1}, Lcom/android/server/wm/TransitionController;->inTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v7

    if-eqz v7, :cond_10a

    move v7, v2

    goto :goto_10b

    :cond_10a
    move v7, v1

    .line 184
    :goto_10b
    iget-object v8, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v8}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v8

    if-nez v8, :cond_121

    iget-object v8, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v8}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardUnoccluding()Z

    move-result v8

    if-nez v8, :cond_121

    if-eqz v7, :cond_13d

    .line 188
    :cond_121
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/android/server/wm/WallpaperController;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v7

    if-eqz v7, :cond_136

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_134

    .line 189
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v7

    if-nez v7, :cond_134

    goto :goto_136

    :cond_134
    move v7, v1

    goto :goto_137

    :cond_136
    :goto_136
    move v7, v2

    .line 192
    :goto_137
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v8

    or-int/2addr v7, v8

    goto :goto_13e

    :cond_13d
    move v7, v1

    :goto_13e
    if-nez v6, :cond_142

    if-eqz v7, :cond_147

    .line 207
    :cond_142
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    .line 210
    :cond_147
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 211
    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v6

    if-eqz v0, :cond_161

    .line 213
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v7

    if-eqz v7, :cond_161

    .line 214
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/AnimationAdapter;->getShowWallpaper()Z

    move-result v0

    if-eqz v0, :cond_161

    move v0, v2

    goto :goto_162

    :cond_161
    move v0, v1

    .line 215
    :goto_162
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v7

    if-nez v7, :cond_16d

    if-eqz v0, :cond_16b

    goto :goto_16d

    :cond_16b
    move v0, v1

    goto :goto_16e

    :cond_16d
    :goto_16d
    move v0, v2

    :goto_16e
    if-eqz v6, :cond_178

    .line 217
    invoke-virtual {v6, p1}, Lcom/android/server/wm/RecentsAnimationController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v6

    if-eqz v6, :cond_178

    move v6, v2

    goto :goto_179

    :cond_178
    move v6, v1

    :goto_179
    if-eqz v6, :cond_199

    .line 219
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_193

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found recents animation wallpaper target: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_193
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    return v2

    :cond_199
    if-eqz v0, :cond_1fb

    .line 222
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    if-eqz v0, :cond_1fb

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v0, p1, :cond_1ab

    .line 223
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawFinishedLw()Z

    move-result v0

    if-eqz v0, :cond_1fb

    .line 224
    :cond_1ab
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_1c3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found wallpaper target: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_1c3
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 226
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_1ed

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_1ed

    .line 229
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_1ed

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": token animating, looking behind."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_1ed
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasWallpaperForLetterboxBackground()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setIsWallpaperTargetForLetterbox(Z)V

    .line 237
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_1fb

    move v1, v2

    :cond_1fb
    return v1
.end method

.method private synthetic lambda$new$1(Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 246
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v0, :cond_12

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    iget v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 247
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_12

    .line 248
    iget p1, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    iput p1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    :cond_12
    return-void
.end method

.method public static synthetic lambda$updateWallpaperWindowsTarget$2(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .registers 2

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method


# virtual methods
.method public addWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V
    .registers 2

    .line 818
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public adjustWallpaperWindows()V
    .registers 11

    .line 683
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 687
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->findWallpaperTarget()V

    .line 688
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperWindowsTarget(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V

    .line 692
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v1

    .line 693
    :goto_15
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v3, :cond_3d

    .line 694
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wallpaper visibility: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " at display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 695
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    .line 694
    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_3d
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED_HIDING_WALLPAPER:Z

    if-eqz v3, :cond_4c

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 700
    invoke-static {v3}, Lcom/android/server/wm/CustomLetterboxConfiguration;->shouldHideWallpaper(Lcom/android/server/wm/DisplayContent;)Z

    move-result v3

    if-nez v3, :cond_4a

    goto :goto_4c

    :cond_4a
    move v3, v1

    goto :goto_4d

    :cond_4c
    :goto_4c
    move v3, v2

    :goto_4d
    if-eqz v0, :cond_7f

    if-eqz v3, :cond_7f

    .line 703
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v5, v4, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    if-ltz v7, :cond_60

    .line 704
    iput v5, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 705
    iget v4, v4, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v4, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 707
    :cond_60
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->computeLastWallpaperZoomOut()V

    .line 708
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v5, v4, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_71

    .line 709
    iput v5, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 710
    iget v5, v4, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v5, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 712
    :cond_71
    iget v5, v4, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_79

    .line 713
    iput v5, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 715
    :cond_79
    iget v4, v4, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v4, v6, :cond_7f

    .line 716
    iput v4, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    :cond_7f
    if-eqz v0, :cond_85

    if-eqz v3, :cond_85

    move v3, v2

    goto :goto_86

    :cond_85
    move v3, v1

    .line 720
    :goto_86
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WallpaperController;->updateWallpaperTokens(Z)V

    if-eqz v0, :cond_a6

    .line 722
    iget-boolean v0, p0, Lcom/android/server/wm/WallpaperController;->mLastFrozen:Z

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v3, v3, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    if-eq v0, v3, :cond_a6

    .line 723
    iput-boolean v3, p0, Lcom/android/server/wm/WallpaperController;->mLastFrozen:Z

    if-eqz v3, :cond_9a

    const-string v0, "android.wallpaper.freeze"

    goto :goto_9c

    :cond_9a
    const-string v0, "android.wallpaper.unfreeze"

    :goto_9c
    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    .line 724
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/WallpaperController;->sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    .line 730
    :cond_a6
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED_AS_CAPTURED_BLUR:Z

    if-eqz v0, :cond_b4

    .line 731
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v3, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v3}, Lcom/android/server/wm/CustomLetterboxConfiguration;->performEnhancedControllerIfNonNull(Lcom/android/server/wm/DisplayContent;Ljava/util/function/Consumer;)V

    .line 736
    :cond_b4
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WALLPAPER_enabled:Z

    if-eqz v0, :cond_d4

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x1229c997

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v1

    aput-object p0, v6, v2

    invoke-static {v3, v4, v1, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_d4
    return-void
.end method

.method public adjustWallpaperWindowsForAppTransitionIfNeeded(Landroid/util/ArraySet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 800
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    goto :goto_22

    .line 803
    :cond_a
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_f
    if-ltz v0, :cond_21

    .line 804
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 805
    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_22

    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_21
    const/4 v1, 0x0

    :goto_22
    if-eqz v1, :cond_27

    .line 813
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    :cond_27
    return-void
.end method

.method public canScreenshotWallpaper()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 828
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public final canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z
    .registers 4

    .line 832
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result p0

    const-string v0, "WindowManager"

    const/4 v1, 0x0

    if-nez p0, :cond_17

    .line 833
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz p0, :cond_16

    const-string p0, "Attempted to take screenshot while display was off."

    .line 834
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return v1

    :cond_17
    if-nez p1, :cond_23

    .line 840
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz p0, :cond_22

    const-string p0, "No visible wallpaper to screenshot"

    .line 841
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return v1

    :cond_23
    const/4 p0, 0x1

    return p0
.end method

.method public clearLastWallpaperTimeoutTime()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 544
    iput-wide v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    return-void
.end method

.method public final computeLastWallpaperZoomOut()V
    .registers 4

    .line 937
    iget-boolean v0, p0, Lcom/android/server/wm/WallpaperController;->mShouldUpdateZoom:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    .line 938
    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 939
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mComputeMaxZoomOutFunction:Ljava/util/function/Consumer;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    const/4 v0, 0x0

    .line 940
    iput-boolean v0, p0, Lcom/android/server/wm/WallpaperController;->mShouldUpdateZoom:Z

    :cond_12
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 961
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "displayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 962
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 963
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2f

    .line 964
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPrevWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 966
    :cond_2f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastWallpaperX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " mLastWallpaperY="

    .line 967
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 968
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_50

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    if-eq v0, v1, :cond_67

    .line 970
    :cond_50
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mLastWallpaperDisplayOffsetX="

    .line 971
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mLastWallpaperDisplayOffsetY="

    .line 972
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    :cond_67
    return-void
.end method

.method public final findWallpaperTarget()V
    .registers 4

    .line 564
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->reset()V

    .line 576
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    .line 577
    invoke-virtual {v0}, Lcom/android/server/wm/NaturalSwitchingController;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 578
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    .line 581
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 583
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    if-eqz v0, :cond_2d

    .line 584
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    :cond_2d
    return-void
.end method

.method public getPrevWallpaperTarget()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 956
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;
    .registers 5

    const/4 v0, 0x0

    .line 911
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mTmpTopWallpaper:Lcom/android/server/wm/WindowState;

    .line 913
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_b
    if-ltz v0, :cond_20

    .line 914
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    .line 915
    new-instance v3, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/WallpaperController;)V

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 925
    :cond_20
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mTmpTopWallpaper:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public getWallpaperTarget()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 260
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public hideDeferredWallpapersIfNeededLegacy()V
    .registers 4

    .line 312
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1f

    .line 313
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 314
    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperWindowToken;->isVisibleRequested()Z

    move-result v2

    if-nez v2, :cond_1c

    const/4 v2, 0x0

    .line 315
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WallpaperWindowToken;->commitVisibility(Z)V

    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1f
    return-void
.end method

.method public hideWallpapers(Lcom/android/server/wm/WindowState;)V
    .registers 14

    .line 321
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_b

    if-ne v0, p1, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_b

    :cond_a
    return-void

    .line 325
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    if-eqz v0, :cond_12

    return-void

    .line 330
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_1a
    if-ltz v0, :cond_72

    .line 331
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    const/4 v3, 0x0

    .line 332
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WallpaperWindowToken;->setVisibility(Z)V

    .line 333
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v4}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v4

    if-eqz v4, :cond_6f

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperWindowToken;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 334
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WALLPAPER_enabled:Z

    if-eqz v4, :cond_6f

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, 0x764e4df3

    const/4 v11, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v3

    aput-object v4, v7, v1

    const/4 v2, 0x2

    aput-object v5, v7, v2

    const/4 v2, 0x3

    aput-object v6, v7, v2

    const/4 v2, 0x4

    aput-object v8, v7, v2

    invoke-static {v9, v10, v3, v11, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6f
    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    :cond_72
    return-void
.end method

.method public isBelowWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 268
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_c

    iget p0, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    iget p1, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-lt p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isFrozen()Z
    .registers 1

    .line 950
    iget-boolean p0, p0, Lcom/android/server/wm/WallpaperController;->mLastFrozen:Z

    return p0
.end method

.method public final isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 3

    .line 589
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez p0, :cond_13

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez p0, :cond_13

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_13

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne p0, v0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 264
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isWallpaperTargetAnimating()Z
    .registers 3

    .line 297
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_19

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_17

    .line 299
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isWaitingForTransitionStart()Z

    move-result p0

    if-nez p0, :cond_19

    :cond_17
    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method public isWallpaperVisible()Z
    .registers 4

    .line 272
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 273
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperWindowToken;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_19

    return v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public mirrorWallpaperSurface()Landroid/view/SurfaceControl;
    .registers 1

    .line 904
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 906
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-static {p0}, Landroid/view/SurfaceControl;->mirrorSurface(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method public processWallpaperDrawPendingTimeout()Z
    .registers 4

    .line 741
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    const/4 v0, 0x2

    .line 742
    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 743
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_13

    const-string v0, "WindowManager"

    const-string v2, "*** WALLPAPER DRAW TIMEOUT"

    .line 744
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 750
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->startAnimation()V

    :cond_24
    return v1

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public removeWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V
    .registers 2

    .line 822
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public screenshotWallpaperLocked()Landroid/graphics/Bitmap;
    .registers 2

    const/4 v0, 0x0

    .line 855
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->screenshotWallpaperLocked(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public screenshotWallpaperLocked(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .registers 6

    .line 860
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 861
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_c

    return-object v1

    :cond_c
    if-eqz p1, :cond_21

    .line 869
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 870
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 871
    iget p1, p0, Landroid/graphics/Rect;->left:I

    neg-int p1, p1

    iget p0, p0, Landroid/graphics/Rect;->top:I

    neg-int p0, p0

    invoke-virtual {v2, p1, p0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_29

    .line 873
    :cond_21
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/4 p0, 0x0

    .line 874
    invoke-virtual {v2, p0, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 879
    :goto_29
    iget-object p0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz p0, :cond_3c

    iget-boolean v3, p0, Lcom/android/server/wm/WindowToken;->mIsPortraitWindowToken:Z

    if-eqz v3, :cond_3c

    .line 882
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    .line 881
    invoke-static {p0, v2, p1}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p0

    goto :goto_44

    .line 887
    :cond_3c
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    .line 886
    invoke-static {p0, v2, p1}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p0

    :goto_44
    if-nez p0, :cond_4e

    const-string p0, "WindowManager"

    const-string p1, "Failed to screenshot wallpaper"

    .line 891
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 895
    :cond_4e
    invoke-virtual {p0}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p0

    .line 894
    invoke-static {p1, p0}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public sendWindowWallpaperCommand(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 15

    .line 471
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_12

    :cond_8
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move v6, p7

    .line 472
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WallpaperController;->sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public final sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .registers 16

    .line 481
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1f

    .line 482
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move v8, p6

    .line 483
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/WallpaperWindowToken;->sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1f
    return-void
.end method

.method public setShouldZoomOutWallpaper(Lcom/android/server/wm/WindowState;Z)V
    .registers 4

    .line 455
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mShouldScaleWallpaper:Z

    if-eq p2, v0, :cond_a

    .line 456
    iput-boolean p2, p1, Lcom/android/server/wm/WindowState;->mShouldScaleWallpaper:Z

    const/4 p2, 0x0

    .line 457
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    :cond_a
    return-void
.end method

.method public setWallpaperZoomOut(Lcom/android/server/wm/WindowState;F)V
    .registers 4

    .line 447
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_11

    .line 448
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    const/4 p2, 0x1

    .line 449
    iput-boolean p2, p0, Lcom/android/server/wm/WallpaperController;->mShouldUpdateZoom:Z

    const/4 p2, 0x0

    .line 450
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    :cond_11
    return-void
.end method

.method public setWindowWallpaperDisplayOffset(Lcom/android/server/wm/WindowState;II)V
    .registers 5

    .line 462
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-ne v0, p2, :cond_8

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v0, p3, :cond_10

    .line 463
    :cond_8
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 464
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    const/4 p2, 0x1

    .line 465
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    :cond_10
    return-void
.end method

.method public setWindowWallpaperPosition(Lcom/android/server/wm/WindowState;FFFF)V
    .registers 7

    .line 437
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_c

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_18

    .line 438
    :cond_c
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 439
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 440
    iput p4, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 441
    iput p5, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    const/4 p2, 0x1

    .line 442
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    :cond_18
    return-void
.end method

.method public final shouldWallpaperBeVisible(Lcom/android/server/wm/WindowState;)Z
    .registers 4

    .line 289
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_24

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wallpaper vis: target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " prev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    if-nez p1, :cond_2d

    .line 293
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p0, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 p0, 0x1

    :goto_2e
    return p0
.end method

.method public startWallpaperAnimation(Landroid/view/animation/Animation;)V
    .registers 4

    .line 282
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 283
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 284
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperWindowToken;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public updateWallpaperOffset(Lcom/android/server/wm/WindowState;Z)Z
    .registers 15

    .line 343
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getLastReportedBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 345
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 352
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_17

    move v2, v3

    goto :goto_18

    :cond_17
    move v2, v4

    .line 353
    :goto_18
    iget v5, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    cmpl-float v6, v5, v4

    if-ltz v6, :cond_1f

    move v2, v5

    .line 354
    :cond_1f
    iget v5, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    cmpl-float v6, v5, v4

    const/high16 v7, -0x40800000    # -1.0f

    if-ltz v6, :cond_28

    goto :goto_29

    :cond_28
    move v5, v7

    .line 355
    :goto_29
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v8

    sub-int/2addr v6, v1

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    if-lez v6, :cond_42

    int-to-float v6, v6

    mul-float/2addr v6, v2

    add-float/2addr v6, v1

    float-to-int v6, v6

    neg-int v6, v6

    goto :goto_43

    :cond_42
    move v6, v8

    .line 357
    :goto_43
    iget v9, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    const/high16 v10, -0x80000000

    if-eq v9, v10, :cond_4a

    add-int/2addr v6, v9

    .line 362
    :cond_4a
    iget v9, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v9, v9, v2

    const/4 v11, 0x1

    if-nez v9, :cond_5a

    iget v9, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v9, v9, v5

    if-eqz v9, :cond_58

    goto :goto_5a

    :cond_58
    move v2, v8

    goto :goto_5f

    .line 363
    :cond_5a
    :goto_5a
    iput v2, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 364
    iput v5, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    move v2, v11

    .line 368
    :goto_5f
    iget v5, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    cmpl-float v9, v5, v4

    if-ltz v9, :cond_66

    goto :goto_67

    :cond_66
    move v5, v1

    .line 369
    :goto_67
    iget v9, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    cmpl-float v4, v9, v4

    if-ltz v4, :cond_6e

    move v7, v9

    .line 370
    :cond_6e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v9

    sub-int/2addr v4, v0

    if-lez v4, :cond_83

    int-to-float v0, v4

    mul-float/2addr v0, v5

    add-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v8, v0

    .line 372
    :cond_83
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    if-eq v0, v10, :cond_88

    add-int/2addr v8, v0

    .line 377
    :cond_88
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_94

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_99

    .line 378
    :cond_94
    iput v5, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 379
    iput v7, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    move v2, v11

    .line 383
    :cond_99
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    iget v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_a8

    .line 384
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    iput v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    goto :goto_a9

    :cond_a8
    move v11, v2

    .line 389
    :goto_a9
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mShouldScaleWallpaper:Z

    if-eqz v0, :cond_b3

    .line 390
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->zoomOutToScale(F)F

    move-result v3

    .line 388
    :cond_b3
    invoke-virtual {p1, v6, v8, v3}, Lcom/android/server/wm/WindowState;->setWallpaperOffset(IIF)Z

    move-result v0

    if-eqz v11, :cond_15d

    .line 392
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_15d

    .line 395
    :try_start_c1
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z
    :try_end_c3
    .catch Landroid/os/RemoteException; {:try_start_c1 .. :try_end_c3} :catch_15d

    const-string v2, "WindowManager"

    if-eqz v1, :cond_f9

    :try_start_c7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Report new wp offset "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " x="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " y="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " zoom="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f9
    if-eqz p2, :cond_fd

    .line 400
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 402
    :cond_fd
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget v4, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iget v5, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iget v6, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iget v7, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iget v8, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    move v9, p2

    invoke-interface/range {v3 .. v9}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFFZ)V

    if-eqz p2, :cond_15d

    .line 408
    iget-object p2, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz p2, :cond_15d

    .line 409
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 410
    iget-wide v5, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J
    :try_end_119
    .catch Landroid/os/RemoteException; {:try_start_c7 .. :try_end_119} :catch_15d

    const-wide/16 v7, 0x2710

    add-long/2addr v5, v7

    cmp-long p2, v5, v3

    if-gez p2, :cond_15a

    const-wide/16 v5, 0x96

    .line 413
    :try_start_122
    sget-boolean p2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz p2, :cond_12b

    const-string p2, "Waiting for offset complete..."

    invoke-static {v2, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_12b
    iget-object p2, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p2, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_132
    .catch Ljava/lang/InterruptedException; {:try_start_122 .. :try_end_132} :catch_132
    .catch Landroid/os/RemoteException; {:try_start_122 .. :try_end_132} :catch_15d

    .line 418
    :catch_132
    :try_start_132
    sget-boolean p2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz p2, :cond_13b

    const-string p2, "Offset complete!"

    invoke-static {v2, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13b
    add-long/2addr v5, v3

    .line 419
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    cmp-long p2, v5, v7

    if-gez p2, :cond_15a

    .line 420
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timeout waiting for wallpaper to offset: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iput-wide v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    :cond_15a
    const/4 p1, 0x0

    .line 425
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_15d
    .catch Landroid/os/RemoteException; {:try_start_132 .. :try_end_15d} :catch_15d

    :catch_15d
    :cond_15d
    return v0
.end method

.method public final updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V
    .registers 7

    .line 492
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_15

    .line 493
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 494
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_19

    :cond_15
    if-nez v0, :cond_1a

    if-eqz p1, :cond_1a

    :goto_19
    move-object v0, p1

    :cond_1a
    if-eqz v0, :cond_80

    .line 505
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_26

    .line 506
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    goto :goto_2e

    .line 507
    :cond_26
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_2e

    .line 508
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 510
    :cond_2e
    :goto_2e
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_37

    .line 511
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    goto :goto_3f

    .line 512
    :cond_37
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_3f

    .line 513
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 515
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->computeLastWallpaperZoomOut()V

    .line 516
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_4b

    .line 517
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    goto :goto_51

    .line 518
    :cond_4b
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-eq v1, v3, :cond_51

    .line 519
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 521
    :cond_51
    :goto_51
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v1, v3, :cond_58

    .line 522
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    goto :goto_5e

    .line 523
    :cond_58
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v1, v3, :cond_5e

    .line 524
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    .line 526
    :cond_5e
    :goto_5e
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_67

    .line 527
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    goto :goto_6f

    .line 528
    :cond_67
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_6f

    .line 529
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 531
    :cond_6f
    :goto_6f
    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v1, v0, v2

    if-ltz v1, :cond_78

    .line 532
    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    goto :goto_80

    .line 533
    :cond_78
    iget p1, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v0, p1, v2

    if-ltz v0, :cond_80

    .line 534
    iput p1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 538
    :cond_80
    :goto_80
    iget-object p1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_88
    if-ltz p1, :cond_98

    .line 539
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperOffset(Z)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_88

    :cond_98
    return-void
.end method

.method public final updateWallpaperTokens(Z)V
    .registers 5

    .line 674
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_21

    .line 675
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 676
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperWindows(Z)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 677
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_21
    return-void
.end method

.method public updateWallpaperVisibility()V
    .registers 4

    .line 303
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->shouldWallpaperBeVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    .line 305
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_e
    if-ltz v1, :cond_1e

    .line 306
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    .line 307
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WallpaperWindowToken;->setVisibility(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_1e
    return-void
.end method

.method public final updateWallpaperWindowsTarget(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 596
    iget-object v2, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 598
    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v3, v2, :cond_10a

    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_14

    if-ne v3, v2, :cond_14

    goto/16 :goto_10a

    .line 614
    :cond_14
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WALLPAPER_enabled:Z

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v3, :cond_3e

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v9, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, 0x6cc94e7

    new-array v13, v6, [Ljava/lang/Object;

    aput-object v3, v13, v5

    aput-object v9, v13, v8

    aput-object v10, v13, v7

    invoke-static {v11, v12, v5, v4, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 617
    :cond_3e
    iput-object v4, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 619
    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 620
    iput-object v2, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v3, :cond_4b

    if-eqz v2, :cond_4b

    .line 623
    invoke-virtual {v0, v2, v5}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    :cond_4b
    if-eqz v2, :cond_109

    if-nez v3, :cond_51

    goto/16 :goto_109

    .line 631
    :cond_51
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v9

    .line 632
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v10

    .line 633
    sget-boolean v11, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WALLPAPER_enabled:Z

    if-eqz v11, :cond_73

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v14, -0x10655a5b

    new-array v15, v7, [Ljava/lang/Object;

    aput-object v11, v15, v5

    aput-object v12, v15, v8

    invoke-static {v13, v14, v5, v4, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_73
    if-eqz v10, :cond_109

    if-nez v9, :cond_79

    goto/16 :goto_109

    .line 640
    :cond_79
    iget-object v9, v0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v10, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda3;

    invoke-direct {v10, v3}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/WindowState;)V

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v9

    if-nez v9, :cond_87

    return-void

    .line 644
    :cond_87
    iget-object v9, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v9, :cond_91

    iget-boolean v9, v9, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v9, :cond_91

    move v9, v8

    goto :goto_92

    :cond_91
    move v9, v5

    .line 646
    :goto_92
    iget-object v10, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v10, :cond_9c

    iget-boolean v10, v10, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v10, :cond_9c

    move v10, v8

    goto :goto_9d

    :cond_9c
    move v10, v5

    .line 649
    :goto_9d
    sget-boolean v11, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WALLPAPER_enabled:Z

    if-eqz v11, :cond_c8

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v14, -0x1578579a    # -8.200011E25f

    const/16 v15, 0xcc

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v11, v4, v5

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v4, v8

    aput-object v12, v4, v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x0

    invoke-static {v13, v14, v15, v6, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c9

    :cond_c8
    move-object v6, v4

    .line 653
    :goto_c9
    iput-object v3, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_de

    if-nez v10, :cond_de

    .line 656
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WALLPAPER_enabled:Z

    if-eqz v4, :cond_db

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x4640d1fd

    invoke-static {v4, v7, v5, v6, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 659
    :cond_db
    iput-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto :goto_106

    :cond_de
    if-ne v9, v10, :cond_106

    .line 660
    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 661
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_106

    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 662
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_104

    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 663
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_106

    .line 667
    :cond_104
    iput-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 670
    :cond_106
    :goto_106
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    :cond_109
    :goto_109
    return-void

    .line 601
    :cond_10a
    :goto_10a
    iget-object v1, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_10f

    return-void

    .line 606
    :cond_10f
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v1

    if-nez v1, :cond_128

    .line 607
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WALLPAPER_enabled:Z

    if-eqz v1, :cond_123

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x581b2b35

    const/4 v4, 0x0

    invoke-static {v1, v3, v5, v4, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_124

    :cond_123
    const/4 v4, 0x0

    .line 608
    :goto_124
    iput-object v4, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 609
    iput-object v2, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    :cond_128
    return-void
.end method

.method public wallpaperCommandComplete(Landroid/os/IBinder;)V
    .registers 3

    .line 548
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 549
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_16

    const/4 p1, 0x0

    .line 550
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 551
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_16
    return-void
.end method

.method public wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .registers 3

    .line 556
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 557
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_16

    const/4 p1, 0x0

    .line 558
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 559
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_16
    return-void
.end method

.method public wallpaperTransitionReady()Z
    .registers 8

    .line 760
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/16 v2, 0x27

    const/4 v3, 0x0

    if-ltz v0, :cond_5c

    .line 762
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WallpaperWindowToken;

    .line 763
    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperWindowToken;->hasVisibleNotDrawnWallpaper()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 766
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    const/4 v4, 0x2

    if-eq v0, v4, :cond_22

    move v4, v3

    goto :goto_23

    :cond_22
    move v4, v1

    :goto_23
    if-nez v0, :cond_3b

    .line 771
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 772
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 773
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 774
    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v5, 0x1f4

    .line 773
    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 778
    :cond_3b
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_57

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wallpaper should be visible but has not been drawn yet. mWallpaperDrawState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    move v1, v3

    goto :goto_5d

    :cond_59
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_5c
    move v4, v1

    :goto_5d
    if-eqz v1, :cond_68

    .line 787
    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 788
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_68
    return v4
.end method

.method public final zoomOutToScale(F)F
    .registers 3

    .line 945
    iget p0, p0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    invoke-static {v0, p0, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method
