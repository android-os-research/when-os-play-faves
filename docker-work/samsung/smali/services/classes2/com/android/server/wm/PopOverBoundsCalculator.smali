.class public Lcom/android/server/wm/PopOverBoundsCalculator;
.super Ljava/lang/Object;
.source "PopOverBoundsCalculator.java"


# static fields
.field public static final POP_OVER_DEFAULT_BOTTOM_MARGIN_DP:I = 0x10

.field public static final POP_OVER_DEFAULT_SIDE_MARGIN_DP:I = 0xc

.field public static final POP_OVER_DEFAULT_TOP_MARGIN_DP:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyDefaultMargin(FLandroid/graphics/Rect;Landroid/app/ActivityOptions;)V
    .registers 5

    .line 208
    iget-boolean p2, p2, Landroid/app/ActivityOptions;->mPopOverRemoveDefaultMargin:Z

    if-eqz p2, :cond_5

    return-void

    .line 211
    :cond_5
    iget p2, p1, Landroid/graphics/Rect;->top:I

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 212
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    sub-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 213
    iget p0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 214
    iget p0, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, v0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public static applyHeight(IILandroid/graphics/Rect;ILandroid/graphics/Rect;)V
    .registers 6

    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1d

    const/4 p3, 0x4

    if-eq p0, p3, :cond_c

    goto :goto_41

    .line 299
    :cond_c
    iget p0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/2addr p2, v0

    add-int/2addr p0, p2

    .line 300
    div-int/lit8 p2, p1, 0x2

    sub-int/2addr p0, p2

    iput p0, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p1

    .line 301
    iput p0, p4, Landroid/graphics/Rect;->bottom:I

    goto :goto_41

    .line 291
    :cond_1d
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p3

    iput p0, p4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    .line 292
    iput p0, p4, Landroid/graphics/Rect;->top:I

    .line 293
    iget p2, p2, Landroid/graphics/Rect;->top:I

    if-ge p0, p2, :cond_41

    add-int/2addr p1, p2

    .line 294
    iput p1, p4, Landroid/graphics/Rect;->bottom:I

    .line 295
    iput p2, p4, Landroid/graphics/Rect;->top:I

    goto :goto_41

    .line 283
    :cond_2f
    iget p0, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p3

    iput p0, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p1

    .line 284
    iput p0, p4, Landroid/graphics/Rect;->bottom:I

    .line 285
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-ge p2, p0, :cond_41

    sub-int p0, p2, p1

    .line 286
    iput p0, p4, Landroid/graphics/Rect;->top:I

    .line 287
    iput p2, p4, Landroid/graphics/Rect;->bottom:I

    :cond_41
    :goto_41
    return-void
.end method

.method public static applyInsets(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;ILandroid/graphics/Rect;Landroid/app/ActivityOptions;)V
    .registers 10

    .line 124
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 125
    new-instance v1, Landroid/graphics/Rect;

    .line 127
    invoke-static {p0, p2, p4, v0}, Lcom/android/server/wm/PopOverBoundsCalculator;->getStatusBarHeight(Lcom/android/server/wm/DisplayContent;ILandroid/app/ActivityOptions;Lcom/android/server/wm/WindowState;)I

    move-result v2

    .line 132
    invoke-static {p0, p2, p4, v0}, Lcom/android/server/wm/PopOverBoundsCalculator;->getNavigationBarHeight(Lcom/android/server/wm/DisplayContent;ILandroid/app/ActivityOptions;Lcom/android/server/wm/WindowState;)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 146
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 147
    iget p1, p3, Landroid/graphics/Rect;->top:I

    .line 148
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayPolicy;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 149
    invoke-virtual {p0}, Lcom/android/server/wm/FreeformController;->getFreeformHeaderType()I

    move-result p0

    const/4 p4, 0x1

    if-ne p0, p4, :cond_32

    move v4, p4

    .line 147
    :cond_32
    invoke-static {p2, v4}, Lcom/android/internal/widget/DecorCaptionView;->getDecorCaptionHeight(Landroid/content/Context;Z)I

    move-result p0

    add-int/2addr p1, p0

    iput p1, p3, Landroid/graphics/Rect;->top:I

    return-void

    .line 153
    :cond_3a
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_45

    return-void

    .line 158
    :cond_45
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isConfigurationNeededInUdcCutout()Z

    move-result p1

    .line 157
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(IZ)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object p1

    .line 160
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_OVERLAPPING_WITH_CUTOUT_AS_DEFAULT:Z

    if-eqz v2, :cond_60

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mIsOverlappingWithCutoutAsDefault:Z

    if-eqz v2, :cond_60

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 166
    :cond_60
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicyExt;->getTaskbarController()Lcom/android/server/wm/TaskbarController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskbarController;->hasTaskbar()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 167
    invoke-static {v1, p0, p2, v0, p4}, Lcom/android/server/wm/PopOverBoundsCalculator;->applyTaskbarHeight(Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;ILcom/android/server/wm/WindowState;Landroid/app/ActivityOptions;)V

    .line 174
    :cond_73
    iget p0, p3, Landroid/graphics/Rect;->top:I

    iget p2, v1, Landroid/graphics/Rect;->top:I

    iget p4, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr p0, p2

    iput p0, p3, Landroid/graphics/Rect;->top:I

    .line 175
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    iget p4, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, p4

    sub-int/2addr p0, p2

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    .line 176
    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget p2, v1, Landroid/graphics/Rect;->left:I

    iget p4, p1, Landroid/graphics/Rect;->left:I

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr p0, p2

    iput p0, p3, Landroid/graphics/Rect;->left:I

    .line 177
    iget p0, p3, Landroid/graphics/Rect;->right:I

    iget p2, v1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p0, p1

    iput p0, p3, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public static applyLeftPosition(ILandroid/graphics/Rect;ILandroid/graphics/Rect;)V
    .registers 5

    .line 342
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p0

    .line 343
    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 344
    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-ge p1, v0, :cond_12

    sub-int p0, p1, p0

    .line 345
    iput p0, p3, Landroid/graphics/Rect;->left:I

    .line 346
    iput p1, p3, Landroid/graphics/Rect;->right:I

    :cond_12
    return-void
.end method

.method public static applyRightPosition(ILandroid/graphics/Rect;ILandroid/graphics/Rect;)V
    .registers 5

    .line 351
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p2

    iput v0, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p0

    .line 352
    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 353
    iget p1, p1, Landroid/graphics/Rect;->left:I

    if-ge v0, p1, :cond_11

    add-int/2addr p0, p1

    .line 354
    iput p0, p3, Landroid/graphics/Rect;->right:I

    .line 355
    iput p1, p3, Landroid/graphics/Rect;->left:I

    :cond_11
    return-void
.end method

.method public static applyTaskbarHeight(Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;ILcom/android/server/wm/WindowState;Landroid/app/ActivityOptions;)V
    .registers 5

    .line 313
    iget-boolean p4, p4, Landroid/app/ActivityOptions;->mPopOverRemoveOutlineEffect:Z

    if-eqz p4, :cond_21

    .line 314
    invoke-static {p1, p3}, Lcom/android/server/wm/PopOverBoundsCalculator;->isNavigationBarVisible(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-eqz p2, :cond_20

    .line 315
    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 316
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicyExt;->getTaskbarController()Lcom/android/server/wm/TaskbarController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskbarController;->getTaskbarInsetHeight()I

    move-result p1

    .line 315
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    :cond_20
    return-void

    .line 320
    :cond_21
    iget p3, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 321
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicyExt;->getTaskbarController()Lcom/android/server/wm/TaskbarController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/wm/TaskbarController;->getTaskbarStableHeight(I)I

    move-result p1

    .line 320
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public static applyWidth(IILandroid/graphics/Rect;ILandroid/graphics/Rect;Z)V
    .registers 7

    and-int/lit16 p0, p0, 0x370

    const/16 v0, 0x10

    if-eq p0, v0, :cond_41

    const/16 v0, 0x20

    if-eq p0, v0, :cond_3d

    const/16 v0, 0x40

    if-eq p0, v0, :cond_2b

    const/16 v0, 0x100

    if-eq p0, v0, :cond_21

    const/16 v0, 0x200

    if-eq p0, v0, :cond_17

    goto :goto_44

    :cond_17
    if-eqz p5, :cond_1d

    .line 268
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/wm/PopOverBoundsCalculator;->applyLeftPosition(ILandroid/graphics/Rect;ILandroid/graphics/Rect;)V

    goto :goto_44

    .line 270
    :cond_1d
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/wm/PopOverBoundsCalculator;->applyRightPosition(ILandroid/graphics/Rect;ILandroid/graphics/Rect;)V

    goto :goto_44

    :cond_21
    if-eqz p5, :cond_27

    .line 261
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/wm/PopOverBoundsCalculator;->applyRightPosition(ILandroid/graphics/Rect;ILandroid/graphics/Rect;)V

    goto :goto_44

    .line 263
    :cond_27
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/wm/PopOverBoundsCalculator;->applyLeftPosition(ILandroid/graphics/Rect;ILandroid/graphics/Rect;)V

    goto :goto_44

    .line 254
    :cond_2b
    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p0, p2

    .line 255
    div-int/lit8 p2, p1, 0x2

    sub-int/2addr p0, p2

    iput p0, p4, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p1

    .line 256
    iput p0, p4, Landroid/graphics/Rect;->right:I

    goto :goto_44

    .line 250
    :cond_3d
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/wm/PopOverBoundsCalculator;->applyRightPosition(ILandroid/graphics/Rect;ILandroid/graphics/Rect;)V

    goto :goto_44

    .line 245
    :cond_41
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/wm/PopOverBoundsCalculator;->applyLeftPosition(ILandroid/graphics/Rect;ILandroid/graphics/Rect;)V

    :goto_44
    return-void
.end method

.method public static getAvailableArea(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;IFLandroid/app/ActivityOptions;)Landroid/graphics/Rect;
    .registers 7

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 107
    invoke-static {p1, p0, p2, v0, p4}, Lcom/android/server/wm/PopOverBoundsCalculator;->applyInsets(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;ILandroid/graphics/Rect;Landroid/app/ActivityOptions;)V

    .line 111
    invoke-static {p3, v0, p4}, Lcom/android/server/wm/PopOverBoundsCalculator;->applyDefaultMargin(FLandroid/graphics/Rect;Landroid/app/ActivityOptions;)V

    return-object v0
.end method

.method public static getBounds(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;
    .registers 13

    .line 60
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    invoke-virtual {v0}, Lcom/android/server/wm/PopOverState;->getOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    if-nez v0, :cond_d

    .line 62
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 65
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 66
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v2

    .line 67
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v3

    .line 69
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 71
    invoke-static {p0, v1, v2, v4, v0}, Lcom/android/server/wm/PopOverBoundsCalculator;->getAvailableArea(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;IFLandroid/app/ActivityOptions;)Landroid/graphics/Rect;

    move-result-object p0

    .line 76
    invoke-static {v0, v3, v4, p0}, Lcom/android/server/wm/PopOverBoundsCalculator;->getRequestedWidth(Landroid/app/ActivityOptions;IFLandroid/graphics/Rect;)I

    move-result v6

    .line 80
    invoke-static {v0, v3, v4, p0}, Lcom/android/server/wm/PopOverBoundsCalculator;->getRequestedHeight(Landroid/app/ActivityOptions;IFLandroid/graphics/Rect;)I

    move-result v2

    .line 84
    iget-object v5, v0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    aget v11, v5, v3

    .line 85
    iget-object v0, v0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    aget-object v0, v0, v3

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v8, v3

    .line 86
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 88
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 93
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_51

    move v10, v4

    goto :goto_53

    :cond_51
    const/4 v1, 0x0

    move v10, v1

    :goto_53
    move v5, v11

    move-object v7, p0

    move-object v9, v3

    .line 91
    invoke-static/range {v5 .. v10}, Lcom/android/server/wm/PopOverBoundsCalculator;->applyWidth(IILandroid/graphics/Rect;ILandroid/graphics/Rect;Z)V

    .line 95
    invoke-static {v11, v2, p0, v0, v3}, Lcom/android/server/wm/PopOverBoundsCalculator;->applyHeight(IILandroid/graphics/Rect;ILandroid/graphics/Rect;)V

    .line 97
    invoke-virtual {v3, p0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    return-object v3
.end method

.method public static getNavigationBarHeight(Lcom/android/server/wm/DisplayContent;ILandroid/app/ActivityOptions;Lcom/android/server/wm/WindowState;)I
    .registers 4

    .line 196
    iget-boolean p2, p2, Landroid/app/ActivityOptions;->mPopOverRemoveOutlineEffect:Z

    if-eqz p2, :cond_c

    .line 198
    invoke-static {p0, p3}, Lcom/android/server/wm/PopOverBoundsCalculator;->isNavigationBarVisible(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-nez p2, :cond_c

    const/4 p0, 0x0

    return p0

    .line 201
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(I)I

    move-result p0

    return p0
.end method

.method public static getRequestedHeight(Landroid/app/ActivityOptions;IFLandroid/graphics/Rect;)I
    .registers 5

    .line 231
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPopOverHeightWeight:[F

    if-eqz v0, :cond_e

    .line 232
    aget p0, v0, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p0, p1

    :goto_c
    float-to-int p0, p0

    return p0

    .line 234
    :cond_e
    iget-object p0, p0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    aget p0, p0, p1

    int-to-float p0, p0

    mul-float/2addr p0, p2

    goto :goto_c
.end method

.method public static getRequestedWidth(Landroid/app/ActivityOptions;IFLandroid/graphics/Rect;)I
    .registers 5

    .line 221
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPopOverWidthWeight:[F

    if-eqz v0, :cond_e

    .line 222
    aget p0, v0, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p0, p1

    :goto_c
    float-to-int p0, p0

    return p0

    .line 224
    :cond_e
    iget-object p0, p0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    aget p0, p0, p1

    int-to-float p0, p0

    mul-float/2addr p0, p2

    goto :goto_c
.end method

.method public static getStatusBarHeight(Lcom/android/server/wm/DisplayContent;ILandroid/app/ActivityOptions;Lcom/android/server/wm/WindowState;)I
    .registers 4

    .line 184
    iget-boolean p2, p2, Landroid/app/ActivityOptions;->mPopOverRemoveOutlineEffect:Z

    if-eqz p2, :cond_c

    .line 186
    invoke-static {p0, p3}, Lcom/android/server/wm/PopOverBoundsCalculator;->isStatusBarVisible(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-nez p2, :cond_c

    const/4 p0, 0x0

    return p0

    .line 189
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarHeight(I)I

    move-result p0

    return p0
.end method

.method public static isNavigationBarVisible(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)Z
    .registers 4

    .line 334
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isNavigationBarVisibleLw()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_28

    .line 335
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result v0

    if-nez v0, :cond_28

    .line 336
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object p0

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result p0

    if-nez p0, :cond_28

    .line 338
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    if-nez p0, :cond_28

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    return v1
.end method

.method public static isStatusBarVisible(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)Z
    .registers 4

    .line 327
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isStatusBarVisibleLw()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 328
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result p0

    if-nez p0, :cond_1c

    .line 330
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    if-nez p0, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method
