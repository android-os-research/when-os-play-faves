.class public Lcom/android/server/wm/DisplayPolicyExt;
.super Ljava/lang/Object;
.source "DisplayPolicyExt.java"


# static fields
.field public static final AOD_FORCE_HIDING_LAYER:I = 0x1a

.field public static final FORCE_USER_TIMEOUT:I = 0x146a

.field public static final SAMSUNG_PAY_APP_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.spay"

.field public static final SAMSUNG_PAY_ID_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.rajaampat"

.field public static final TAG:Ljava/lang/String; = "DisplayPolicyExt"


# instance fields
.field public mCarLifePolicy:Lcom/android/server/wm/CarLifePolicy;

.field public final mContext:Landroid/content/Context;

.field public mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

.field public final mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

.field public mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

.field public mGameToolsWindow:Lcom/android/server/wm/WindowState;

.field public final mLastPayHandlerFrame:Landroid/graphics/Rect;

.field public mLastPayHandlerVisible:Z

.field public mNavBarImeBtnAllRotationsAllowed:Z

.field public mNavigationMode:I

.field public mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

.field public mPayHandlerWin:Lcom/android/server/wm/WindowState;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTaskbarController:Lcom/android/server/wm/TaskbarController;

.field public final mTmpFrame:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$95wYSSnfmD17rvYoufIRzOjedRo(Lcom/android/server/wm/WindowState;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicyExt;->lambda$getDisableTransientBarsWindow$2(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Wrdq_QtzYPs3u3Ud1PG5s7RSPm0(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/CustomLetterboxEnhancedController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayPolicyExt;->lambda$addWindowLw$0(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/CustomLetterboxEnhancedController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oR7nx8DYU6Ui3P2cOsIsdBVbcn8(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/CustomLetterboxEnhancedController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayPolicyExt;->lambda$removeWindowLw$1(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/CustomLetterboxEnhancedController;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayPolicy;)V
    .registers 5

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mTmpFrame:Landroid/graphics/Rect;

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerFrame:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    .line 124
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 126
    iput-object p3, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 128
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p3, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_2d

    .line 130
    new-instance v0, Lcom/android/server/wm/CoverPolicy;

    invoke-direct {v0, p0}, Lcom/android/server/wm/CoverPolicy;-><init>(Lcom/android/server/wm/DisplayPolicyExt;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    .line 134
    :cond_2d
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_3a

    .line 135
    new-instance v0, Lcom/android/server/wm/OneHandOpPolicy;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wm/OneHandOpPolicy;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

    .line 139
    :cond_3a
    new-instance v0, Lcom/android/server/wm/TaskbarController;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TaskbarController;-><init>(Lcom/android/server/wm/DisplayPolicyExt;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    .line 143
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    if-eqz v0, :cond_54

    iget-object v0, p3, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 144
    new-instance v0, Lcom/android/server/wm/CarLifePolicy;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wm/CarLifePolicy;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCarLifePolicy:Lcom/android/server/wm/CarLifePolicy;

    :cond_54
    return-void
.end method

.method public static synthetic lambda$addWindowLw$0(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/CustomLetterboxEnhancedController;)V
    .registers 2

    .line 188
    invoke-virtual {p1, p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->addWindowLocked(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic lambda$getDisableTransientBarsWindow$2(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 543
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDisableTransientBars()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static synthetic lambda$removeWindowLw$1(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/CustomLetterboxEnhancedController;)V
    .registers 2

    .line 217
    invoke-virtual {p1, p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V

    return-void
.end method


# virtual methods
.method public addWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 5

    .line 151
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e8

    if-eq v0, v1, :cond_2a

    const/16 v1, 0x833

    if-eq v0, v1, :cond_23

    const/16 v1, 0x97e

    if-eq v0, v1, :cond_16

    const/16 v1, 0x97f

    if-eq v0, v1, :cond_13

    goto :goto_40

    .line 172
    :cond_13
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

    goto :goto_40

    .line 166
    :cond_16
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsWindow:Lcom/android/server/wm/WindowState;

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicyExt;->notifyRequestedGameToolsWin(Z)V

    goto :goto_40

    .line 153
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    if-eqz v0, :cond_40

    .line 154
    iput-object p1, v0, Lcom/android/server/wm/CoverPolicy;->mCoverWindow:Lcom/android/server/wm/WindowState;

    goto :goto_40

    .line 158
    :cond_2a
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v1, "com.samsung.android.spay"

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v1, "com.samsung.android.rajaampat"

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 161
    :cond_3e
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    .line 177
    :cond_40
    :goto_40
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

    if-eqz v0, :cond_47

    .line 178
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/OneHandOpPolicy;->addWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 180
    :cond_47
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p2, :cond_5c

    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 182
    invoke-virtual {p2}, Lcom/android/server/wm/PopOverState;->hasOptions()Z

    move-result p2

    if-eqz p2, :cond_5c

    .line 183
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p2, p2, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mPopOverController:Lcom/android/server/wm/PopOverController;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/PopOverController;->addPopOverWindowLw(Lcom/android/server/wm/WindowState;)V

    .line 185
    :cond_5c
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED_AS_CAPTURED_BLUR:Z

    if-eqz p2, :cond_6c

    .line 186
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance p2, Lcom/android/server/wm/DisplayPolicyExt$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/server/wm/DisplayPolicyExt$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowState;)V

    invoke-static {p0, p2}, Lcom/android/server/wm/CustomLetterboxConfiguration;->performEnhancedControllerIfNonNull(Lcom/android/server/wm/DisplayContent;Ljava/util/function/Consumer;)V

    :cond_6c
    return-void
.end method

.method public applyForceHidePolicyLw(Lcom/android/server/wm/WindowState;)Z
    .registers 4

    .line 263
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 264
    invoke-virtual {v0, p1}, Lcom/android/server/wm/FreeformController;->applyForceHidePolicyIfNeededLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    return v1

    .line 267
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    if-eqz p0, :cond_19

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CoverPolicy;->applyForceHidePolicyLw(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    if-eqz p0, :cond_19

    return v1

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 7

    .line 243
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicyExt;->getWakingUpReason()I

    move-result v0

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_23

    .line 244
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_23

    iget-wide v0, p2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_23

    const-wide/16 v0, 0x146a

    .line 247
    iput-wide v0, p2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 248
    iput-wide v2, p2, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 252
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_30

    .line 253
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_30

    .line 254
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 257
    :cond_30
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    if-eqz p0, :cond_37

    .line 258
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/CoverPolicy;->applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    :cond_37
    return-void
.end method

.method public beginPostLayoutPolicyLw()V
    .registers 2

    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 230
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    if-eqz p0, :cond_a

    .line 231
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicy;->beginPostLayoutPolicyLw()V

    :cond_a
    return-void
.end method

.method public canBeForceHiddenByAodLw(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    .line 490
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    .line 491
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v2, 0x0

    if-nez v1, :cond_18

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExtraDisplayController:Lcom/android/server/wm/ExtraDisplayController;

    .line 493
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ExtraDisplayController;->canHaveCoverHomeDisplay(I)Z

    move-result v0

    if-nez v0, :cond_18

    return v2

    .line 497
    :cond_18
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1d

    return v2

    .line 500
    :cond_1d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_5c

    const/16 v1, 0x7dd

    if-eq v0, v1, :cond_5c

    const/16 v1, 0x7e3

    if-eq v0, v1, :cond_5c

    const/16 v1, 0x7f8

    if-eq v0, v1, :cond_5c

    const/16 v1, 0x833

    if-eq v0, v1, :cond_5c

    const/16 v1, 0x96f

    if-eq v0, v1, :cond_3f

    packed-switch v0, :pswitch_data_5e

    goto :goto_44

    .line 516
    :cond_3f
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_AOD_FACE_WIDGET:Z

    if-eqz v0, :cond_44

    return v2

    .line 522
    :cond_44
    :goto_44
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/TaskbarController;->isTaskbar(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_4f

    return v2

    .line 525
    :cond_4f
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result p0

    const/16 p1, 0x1a

    if-ge p0, p1, :cond_5c

    const/4 v2, 0x1

    :cond_5c
    :pswitch_5c
    return v2

    nop

    :pswitch_data_5e
    .packed-switch 0xa3d
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
    .end packed-switch
.end method

.method public canBeNavColorWinLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_6d

    if-ne p1, p2, :cond_6

    goto :goto_6d

    .line 408
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_15

    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 409
    :goto_15
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    .line 407
    invoke-static {v1, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z

    move-result v1

    if-nez v1, :cond_24

    return v0

    .line 413
    :cond_24
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x988

    if-ne v1, v2, :cond_2d

    return v0

    .line 417
    :cond_2d
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-ne p1, v1, :cond_3e

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 418
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v1

    if-nez v1, :cond_3e

    return v0

    .line 422
    :cond_3e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isImeLayeringTarget()Z

    move-result v1

    if-eqz v1, :cond_4b

    if-eqz p2, :cond_4b

    iget-boolean p2, p2, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz p2, :cond_4b

    return v0

    .line 427
    :cond_4b
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicyExt;->isBlurringWinNotAffectingLightBarAppearance(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    if-eqz p0, :cond_52

    return v0

    .line 431
    :cond_52
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 p2, p2, 0x20

    const/4 v1, 0x1

    if-eqz p2, :cond_5c

    return v1

    .line 441
    :cond_5c
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result p0

    if-nez p0, :cond_68

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result p0

    if-eqz p0, :cond_6d

    :cond_68
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez p0, :cond_6d

    move v0, v1

    :cond_6d
    :goto_6d
    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 341
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "DisplayPolicyExt"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 344
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_3e

    .line 345
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPayHandlerWin="

    .line 346
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mLastPayHandlerVisible="

    .line 347
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mLastPayHandlerFrame="

    .line 348
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerFrame:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 350
    :cond_3e
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    if-eqz v0, :cond_45

    .line 351
    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/CoverPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 353
    :cond_45
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_56

    .line 354
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFakeFocusedWindow="

    .line 355
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 357
    :cond_56
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

    if-eqz p0, :cond_5d

    .line 358
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/OneHandOpPolicy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_5d
    return-void
.end method

.method public finishPostLayoutPolicyLw()V
    .registers 5

    .line 287
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    if-eqz v0, :cond_7

    .line 288
    invoke-virtual {v0}, Lcom/android/server/wm/CoverPolicy;->finishPostLayoutPolicyLw()V

    .line 291
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicyExt;->isNavigationGestureMode()Z

    move-result v0

    if-eqz v0, :cond_72

    const/4 v0, 0x0

    .line 293
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 295
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_26

    .line 296
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    .line 297
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mTmpFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 300
    :cond_26
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerVisible:Z

    if-ne v0, v1, :cond_36

    if-eqz v0, :cond_72

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mTmpFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerFrame:Landroid/graphics/Rect;

    .line 301
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    .line 302
    :cond_36
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerVisible:Z

    .line 303
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 304
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 305
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicyExt;->mTmpFrame:Landroid/graphics/Rect;

    .line 304
    invoke-interface {v1, v2, v0, v3}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notifySamsungPayInfo(IZLandroid/graphics/Rect;)V

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySamsungPayInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DisplayPolicyExt"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    return-void
.end method

.method public finishScreenTurningOn()V
    .registers 3

    .line 463
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1e

    .line 465
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TspStateController;->updateWindowPolicy(Lcom/android/server/wm/WindowState;)V

    .line 466
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE:Z

    if-eqz v0, :cond_1e

    .line 467
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController;->finishScreenTurningOn()V

    :cond_1e
    return-void
.end method

.method public getCoverPolicy()Lcom/android/server/wm/CoverPolicy;
    .registers 1

    .line 476
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    return-object p0
.end method

.method public getDisableTransientBarsWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 542
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v0, Lcom/android/server/wm/DisplayPolicyExt$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayPolicyExt$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0
.end method

.method public getFakeFocusedWindow()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 482
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public getForceLightNavigationBar(Landroid/view/WindowManager$LayoutParams;)I
    .registers 3

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicyExt;->needsForceLightNavigationBar(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 366
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicyExt;->isUsingBlurEffect(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 367
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicyExt;->isUsingTranslucentNavigation(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 368
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicyExt;->isClearingCompatInsets(Landroid/view/WindowManager$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1c

    :cond_19
    const/16 p0, 0x10

    return p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return p0
.end method

.method public getTaskbarController()Lcom/android/server/wm/TaskbarController;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    return-object p0
.end method

.method public isBlurringWinNotAffectingLightBarAppearance(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    if-eqz p1, :cond_15

    .line 395
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicyExt;->isUsingBlurEffect(Landroid/view/WindowManager$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_15

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 p1, 0x400000

    and-int/2addr p0, p1

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public final isClearingCompatInsets(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 3

    .line 384
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/InsetsState;->clearsCompatInsets(III)Z

    move-result p0

    return p0
.end method

.method public isDeviceProvisioned()Z
    .registers 3

    .line 336
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mContext:Landroid/content/Context;

    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    .line 336
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public isGameToolsOverlayVisibleLw()Z
    .registers 1

    .line 536
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isGameToolsVisibleLw()Z
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsWindow:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isNavBarImeBtnAllowed(I)Z
    .registers 3

    .line 455
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicyExt;->isNavBarImeBtnEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mNavBarImeBtnAllRotationsAllowed:Z

    if-nez v0, :cond_1e

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 457
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result p0

    if-eqz p0, :cond_20

    :cond_1e
    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method public isNavigationGestureMode()Z
    .registers 1

    .line 451
    iget p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mNavigationMode:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isUsingBlurEffect(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 2

    .line 390
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_e

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final isUsingTranslucentNavigation(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 2

    .line 379
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 p1, -0x80000000

    and-int/2addr p1, p0

    if-eqz p1, :cond_e

    const/high16 p1, 0x8000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final needsForceLightNavigationBar(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 2

    .line 375
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 p1, 0x100000

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public onConfigurationChanged()V
    .registers 3

    .line 312
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00d6

    .line 315
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mNavigationMode:I

    .line 316
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    if-nez v1, :cond_1f

    const v1, 0x111018c

    .line 317
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mNavBarImeBtnAllRotationsAllowed:Z

    return-void
.end method

.method public removeWindowLw(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object v2, v0, Lcom/android/server/wm/CoverPolicy;->mCoverWindow:Lcom/android/server/wm/WindowState;

    if-ne v2, p1, :cond_b

    .line 195
    iput-object v1, v0, Lcom/android/server/wm/CoverPolicy;->mCoverWindow:Lcom/android/server/wm/WindowState;

    .line 199
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_11

    .line 200
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    .line 204
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_22

    .line 205
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsWindow:Lcom/android/server/wm/WindowState;

    .line 206
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicyExt;->notifyRequestedGameToolsWin(Z)V

    goto :goto_28

    .line 207
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_28

    .line 208
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

    .line 211
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

    if-eqz v0, :cond_2f

    .line 212
    invoke-virtual {v0, p1}, Lcom/android/server/wm/OneHandOpPolicy;->removeWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 214
    :cond_2f
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED_AS_CAPTURED_BLUR:Z

    if-eqz v0, :cond_3f

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/DisplayPolicyExt$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/wm/DisplayPolicyExt$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowState;)V

    invoke-static {v0, v1}, Lcom/android/server/wm/CustomLetterboxConfiguration;->performEnhancedControllerIfNonNull(Lcom/android/server/wm/DisplayContent;Ljava/util/function/Consumer;)V

    .line 219
    :cond_3f
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_54

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 221
    invoke-virtual {v0}, Lcom/android/server/wm/PopOverState;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 222
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mPopOverController:Lcom/android/server/wm/PopOverController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/PopOverController;->removePopOverWindowLw(Lcom/android/server/wm/WindowState;)V

    :cond_54
    return-void
.end method

.method public screenTurnedOff()V
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

    if-eqz p0, :cond_7

    .line 331
    invoke-virtual {p0}, Lcom/android/server/wm/OneHandOpPolicy;->screenTurnedOff()V

    :cond_7
    return-void
.end method

.method public updateConfigurationAndScreenSizeDependentBehaviors(IIII)V
    .registers 6

    .line 323
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_15

    .line 324
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/TspStateController;->setDefaultDisplaySizeDensity(IIII)V

    :cond_15
    return-void
.end method
