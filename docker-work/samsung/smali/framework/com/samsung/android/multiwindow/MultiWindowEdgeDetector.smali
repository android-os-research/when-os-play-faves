.class public Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;
.super Ljava/lang/Object;
.source "MultiWindowEdgeDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;
    }
.end annotation


# static fields
.field public static final blacklist EDGE_LEFT_TOP:I = 0x5

.field public static final blacklist EDGE_NONE:I = 0x0

.field public static final blacklist EDGE_RIGHT_TOP:I = 0x9

.field private static final blacklist MAX_EFFECTIVE_DEGREES:I = 0x46

.field private static final blacklist MIN_EFFECTIVE_DEGREES:I = 0x14

.field private static final blacklist SAFE_DEBUG:Z

.field private static final blacklist STRAIGHT_ANGLE:I = 0xb4

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist WIDTH_SCALE_FOR_LANDSCAPE_CORNER_R:F = 1.25f

.field private static blacklist sDefaultValue:I

.field private static blacklist sHeight:I

.field private static blacklist sScreenHeight:I

.field private static blacklist sScreenWidth:I

.field private static blacklist sWidth:I


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCornerRadius:I

.field private blacklist mEdgeFlags:I

.field private blacklist mGestureThreshold:I

.field private blacklist mIsMultiWindowPointerDetector:Z

.field private blacklist mMaxDegrees:I

.field private blacklist mMinDegrees:I

.field private blacklist mMoving:Z

.field private blacklist mScreenOrientation:I

.field private blacklist mStartX:I

.field private blacklist mStartY:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    const-class v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->TAG:Ljava/lang/String;

    .line 56
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;Z)V

    .line 97
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isMultiWindowPointerDetector"    # Z

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/16 v0, 0x14

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMinDegrees:I

    .line 77
    const/16 v0, 0x46

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMaxDegrees:I

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mIsMultiWindowPointerDetector:Z

    .line 86
    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenOrientation:I

    .line 87
    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlags:I

    .line 92
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMoving:Z

    .line 101
    iput-object p1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    .line 102
    iput-boolean p2, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mIsMultiWindowPointerDetector:Z

    .line 103
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sDefaultValue:I

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->loadResources()V

    .line 105
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->updateScreenInfo()V

    .line 106
    return-void
.end method

.method private blacklist ensureScreenInfo()V
    .registers 7

    .line 183
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 184
    .local v0, "currentWidth":I
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 185
    .local v1, "currentHeight":I
    if-le v0, v1, :cond_1c

    const/4 v2, 0x2

    goto :goto_1d

    .line 186
    :cond_1c
    const/4 v2, 0x1

    :goto_1d
    nop

    .line 187
    .local v2, "currentOrientation":I
    iget v3, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenOrientation:I

    if-eq v3, v2, :cond_49

    .line 188
    sget-object v3, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ensureScreenInfo: ScreenInfo is wrong, mScreenOr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenOrientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currentOr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->updateScreenInfo()V

    .line 191
    :cond_49
    return-void
.end method

.method private blacklist getEdgeFlags(Landroid/view/MotionEvent;)I
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 267
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 269
    .local v1, "y":F
    const/4 v2, 0x0

    .line 272
    .local v2, "flags":I
    sget v3, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sHeight:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_11

    .line 273
    return v2

    .line 275
    :cond_11
    const/4 v2, 0x1

    .line 278
    sget v3, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sWidth:I

    int-to-float v4, v3

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1c

    .line 279
    or-int/lit8 v2, v2, 0x4

    goto :goto_26

    .line 280
    :cond_1c
    sget v4, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sScreenWidth:I

    sub-int/2addr v4, v3

    int-to-float v3, v4

    cmpl-float v3, v0, v3

    if-lez v3, :cond_26

    .line 281
    or-int/lit8 v2, v2, 0x8

    .line 284
    :cond_26
    :goto_26
    iget-boolean v3, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mIsMultiWindowPointerDetector:Z

    if-eqz v3, :cond_8d

    .line 285
    sget-object v3, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkEdgeFlags: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->edgeFlagToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", screenWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sScreenWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    .line 286
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 285
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_8d
    return v2
.end method

.method private blacklist getStatusBarHeight(Landroid/content/Context;)I
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 447
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getStatusBarHeight(Landroid/content/res/Resources;Landroid/view/DisplayCutout;)I

    move-result v0

    return v0
.end method

.method private blacklist getStatusBarHeight(Landroid/content/res/Resources;Landroid/view/DisplayCutout;)I
    .registers 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "cutout"    # Landroid/view/DisplayCutout;

    .line 454
    const v0, 0x10504cc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 455
    .local v0, "defaultSize":I
    const/4 v1, 0x0

    if-nez p2, :cond_c

    move v2, v1

    goto :goto_10

    :cond_c
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    .line 456
    .local v2, "safeInsetTop":I
    :goto_10
    if-nez p2, :cond_13

    goto :goto_19

    :cond_13
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->top:I

    .line 459
    .local v1, "waterfallInsetTop":I
    :goto_19
    add-int v3, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3
.end method

.method private blacklist getTopFullscreenTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 7

    .line 238
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    move-result-object v0

    .line 239
    .local v0, "taskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_2c

    .line 242
    :cond_12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 243
    .local v3, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 244
    return-object v3

    .line 246
    .end local v3    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2a
    goto :goto_16

    .line 247
    :cond_2b
    return-object v1

    .line 240
    :cond_2c
    :goto_2c
    return-object v1
.end method

.method private blacklist isEffectiveAngle(II)Z
    .registers 8
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "degrees":I
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlags:I

    sparse-switch v1, :sswitch_data_50

    .line 328
    const/4 v0, 0x0

    goto :goto_22

    .line 325
    :sswitch_8
    int-to-double v1, p2

    int-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-int v1, v1

    rsub-int v0, v1, 0xb4

    .line 326
    goto :goto_22

    .line 322
    :sswitch_16
    int-to-double v1, p2

    int-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 323
    nop

    .line 331
    :goto_22
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMinDegrees:I

    if-lt v0, v1, :cond_2c

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMaxDegrees:I

    if-gt v0, v1, :cond_2c

    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    .line 332
    .local v1, "result":Z
    :goto_2d
    sget-object v2, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEffectiveAngle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", degrees="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return v1

    :sswitch_data_50
    .sparse-switch
        0x5 -> :sswitch_16
        0x9 -> :sswitch_8
    .end sparse-switch
.end method

.method private blacklist isExceedThreshold(II)Z
    .registers 8
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 310
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 311
    .local v0, "distance":I
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mGestureThreshold:I

    if-lt v0, v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 312
    .local v1, "result":Z
    :goto_10
    sget-object v2, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isExceedThreshold: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 313
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", distance="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", threshold="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mGestureThreshold:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return v1
.end method

.method private blacklist isNotSupportEdge(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 256
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private blacklist isTopTaskHomeOrRecents()Z
    .registers 5

    .line 224
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getTopFullscreenTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 225
    .local v0, "topTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 226
    return v1

    .line 228
    :cond_8
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_18

    .line 229
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_17

    goto :goto_18

    .line 233
    :cond_17
    return v1

    .line 230
    :cond_18
    :goto_18
    sget-object v1, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->TAG:Ljava/lang/String;

    const-string v2, "isTopTaskHomeOrRecents"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist loadResources()V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sHeight:I

    sput v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sWidth:I

    .line 121
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->updateCustomBounds()V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105023c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mCornerRadius:I

    .line 124
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105023d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mGestureThreshold:I

    .line 127
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->SAFE_DEBUG:Z

    if-eqz v0, :cond_32

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->updateFromSystemProperties()V

    .line 130
    :cond_32
    return-void
.end method

.method public static blacklist updateCustomBounds()V
    .registers 3

    .line 133
    sget v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_CUSTOM_VALUE:I

    .line 134
    .local v0, "customValue":I
    if-ltz v0, :cond_16

    const/16 v1, 0xff

    if-gt v0, v1, :cond_16

    .line 136
    if-nez v0, :cond_11

    .line 137
    sget v1, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sDefaultValue:I

    sput v1, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sHeight:I

    sput v1, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sWidth:I

    goto :goto_25

    .line 139
    :cond_11
    sput v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sHeight:I

    sput v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sWidth:I

    goto :goto_25

    .line 142
    :cond_16
    sget v1, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sDefaultValue:I

    sput v1, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sHeight:I

    sput v1, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sWidth:I

    .line 143
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    sget v2, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sDefaultValue:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setCornerGestureCustomValue(I)V

    .line 145
    :goto_25
    return-void
.end method

.method private blacklist updateFromSystemProperties()V
    .registers 9

    .line 337
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->SAFE_DEBUG:Z

    if-nez v0, :cond_5

    return-void

    .line 339
    :cond_5
    const-string v0, "persist.dev.freeform.gesture.w"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 340
    .local v0, "sysWidth":I
    const-string v2, "persist.dev.freeform.gesture.h"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 341
    .local v2, "sysHeight":I
    const-string v3, "persist.dev.freeform.gesture.r"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 342
    .local v3, "sysCornerRadius":I
    const-string v4, "persist.dev.freeform.gesture.dr"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 343
    .local v1, "sysDegrees":I
    const/4 v4, 0x0

    .line 345
    .local v4, "changed":Z
    if-ltz v0, :cond_28

    sget v5, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sWidth:I

    if-eq v5, v0, :cond_28

    .line 346
    sput v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sWidth:I

    .line 347
    const/4 v4, 0x1

    .line 349
    :cond_28
    if-ltz v2, :cond_31

    sget v5, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sHeight:I

    if-eq v5, v2, :cond_31

    .line 350
    sput v2, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sHeight:I

    .line 351
    const/4 v4, 0x1

    .line 353
    :cond_31
    if-ltz v3, :cond_3a

    iget v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mCornerRadius:I

    if-eq v5, v3, :cond_3a

    .line 354
    iput v3, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mCornerRadius:I

    .line 355
    const/4 v4, 0x1

    .line 357
    :cond_3a
    if-ltz v1, :cond_43

    iget v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMaxDegrees:I

    if-eq v5, v1, :cond_43

    .line 358
    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMaxDegrees:I

    .line 359
    const/4 v4, 0x1

    .line 361
    :cond_43
    if-eqz v4, :cond_84

    .line 362
    sget-object v5, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateFromSystemProperties: sWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mCornerRadius="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mCornerRadius:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mMaxDegrees="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMaxDegrees:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_84
    return-void
.end method

.method private blacklist updateScreenInfo()V
    .registers 9

    .line 148
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 149
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_23

    .line 150
    sget-object v1, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display is null, mContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void

    .line 154
    :cond_23
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 155
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 157
    sget v2, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sScreenWidth:I

    iget v3, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_3c

    sget v2, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sScreenHeight:I

    iget v3, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    if-eq v2, v3, :cond_3a

    goto :goto_3c

    :cond_3a
    move v2, v4

    goto :goto_3d

    :cond_3c
    :goto_3c
    move v2, v5

    .line 160
    .local v2, "changed":Z
    :goto_3d
    if-nez v2, :cond_43

    iget v3, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenOrientation:I

    if-nez v3, :cond_44

    :cond_43
    move v4, v5

    :cond_44
    move v3, v4

    .line 161
    .local v3, "needUpdate":Z
    if-eqz v3, :cond_a8

    .line 162
    iget v4, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    sput v4, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sScreenWidth:I

    .line 163
    iget v4, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    sput v4, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sScreenHeight:I

    .line 164
    sget v6, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sScreenWidth:I

    const/4 v7, 0x2

    if-le v6, v4, :cond_55

    move v5, v7

    :cond_55
    iput v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenOrientation:I

    .line 166
    if-ne v5, v7, :cond_65

    .line 167
    sget v4, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x3fa00000    # 1.25f

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sWidth:I

    .line 170
    :cond_65
    sget-boolean v4, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->SAFE_DEBUG:Z

    if-eqz v4, :cond_a8

    .line 171
    sget-object v4, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateScreenInfo: sScreenWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sScreenWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sScreenHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sScreenHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mScreenOrientation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenOrientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_a8
    return-void
.end method


# virtual methods
.method public blacklist getEdgeFlags()I
    .registers 2

    .line 261
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlags:I

    return v0
.end method

.method public blacklist interceptTouchForCornerGesture(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 469
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 470
    return v1

    .line 472
    :cond_6
    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_47

    .line 473
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 474
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 475
    .local v3, "y":I
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->readyToFreeform(II)Z

    move-result v4

    .line 476
    .local v4, "readyToFreeform":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_26

    .line 477
    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mStartX:I

    .line 478
    iput v3, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mStartY:I

    .line 479
    return v1

    .line 481
    :cond_26
    iget-boolean v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMoving:Z

    if-nez v5, :cond_3e

    if-eqz v4, :cond_3e

    iget v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mStartX:I

    sub-int v5, v0, v5

    iget v6, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mStartY:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isValidGesture(II)Z

    move-result v5

    if-nez v5, :cond_3e

    .line 482
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    .line 483
    return v1

    .line 485
    :cond_3e
    if-eqz v4, :cond_46

    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMoving:Z

    if-nez v1, :cond_46

    .line 486
    iput-boolean v2, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMoving:Z

    .line 488
    :cond_46
    return v2

    .line 490
    .end local v0    # "x":I
    .end local v3    # "y":I
    .end local v4    # "readyToFreeform":Z
    :cond_47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_54

    .line 491
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_56

    .line 492
    :cond_54
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMoving:Z

    .line 494
    :cond_56
    return v1
.end method

.method public blacklist isEdge()Z
    .registers 3

    .line 252
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlags:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_c

    const/16 v1, 0x9

    if-ne v0, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method public blacklist isValidGesture(II)Z
    .registers 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 306
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isExceedThreshold(II)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEffectiveAngle(II)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist onConfigurationChanged()V
    .registers 1

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    .line 110
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->loadResources()V

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->updateScreenInfo()V

    .line 112
    return-void
.end method

.method public blacklist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 199
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_ENABLED:Z

    if-nez v0, :cond_6

    .line 201
    const/4 v0, 0x0

    return v0

    .line 203
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    move-result v0

    .line 204
    .local v0, "onTouchEvent":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_34

    :pswitch_11
    goto :goto_33

    .line 216
    :pswitch_12
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    goto :goto_33

    .line 206
    :pswitch_16
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->ensureScreenInfo()V

    .line 207
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getEdgeFlags(Landroid/view/MotionEvent;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlags:I

    .line 208
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isNotSupportEdge(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isTopTaskHomeOrRecents()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 209
    :cond_2b
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    .line 211
    :cond_2e
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    move-result v0

    .line 212
    nop

    .line 220
    :goto_33
    return v0

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_16
        :pswitch_12
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public blacklist readyToFreeform(II)Z
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 292
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mCornerRadius:I

    mul-int/2addr v0, v0

    .line 293
    .local v0, "radius":I
    const/4 v1, 0x0

    .line 294
    .local v1, "distance":I
    iget v2, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlags:I

    sparse-switch v2, :sswitch_data_22

    goto :goto_1c

    .line 299
    :sswitch_a
    sget v2, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->sScreenWidth:I

    sub-int v3, v2, p1

    sub-int/2addr v2, p1

    mul-int/2addr v3, v2

    mul-int v2, p2, p2

    add-int v1, v3, v2

    goto :goto_1c

    .line 296
    :sswitch_15
    mul-int v2, p1, p1

    mul-int v3, p2, p2

    add-int v1, v2, v3

    .line 297
    nop

    .line 302
    :goto_1c
    if-ge v0, v1, :cond_20

    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    return v2

    :sswitch_data_22
    .sparse-switch
        0x5 -> :sswitch_15
        0x9 -> :sswitch_a
    .end sparse-switch
.end method

.method public blacklist reset()V
    .registers 2

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlags:I

    .line 117
    return-void
.end method
