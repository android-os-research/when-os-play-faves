.class public Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;
.super Ljava/lang/Object;
.source "FullScreenMagnificationThumbnail.java"


# static fields
.field public static final DEFAULT_MAGNIFICATION_SCALE:F = 2.0f

.field public static final LOG_TAG:Ljava/lang/String; = "FullScreenMagnificationThumbnail"

.field public static final MAGNIFICATION_FADE_ANIMATION_DURATION:I = 0x3e8

.field public static final MAX_ALPHA:I = 0xff

.field public static final backgroundRatio:I = 0xe

.field public static final ratio:I = 0x1c


# instance fields
.field public mBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field public final mBackgroundParams:Landroid/view/WindowManager$LayoutParams;

.field public mBackgroundRect:Landroid/graphics/Rect;

.field public mBackgroundView:Landroid/widget/LinearLayout;

.field public final mContext:Landroid/content/Context;

.field public mMagnficationBoundary:Landroid/graphics/Point;

.field public final mParams:Landroid/view/WindowManager$LayoutParams;

.field public mThumbNailAnimator:Landroid/animation/ObjectAnimator;

.field public mThumbNailFrame:Landroid/graphics/Rect;

.field public mThumbNailOffsetX:F

.field public mThumbNailOffsetY:F

.field public mThumbNailScale:F

.field public mThumbNailView:Landroid/widget/LinearLayout;

.field public mVisible:Z

.field public mWindowBounds:Landroid/graphics/Rect;

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mVisible:Z

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailFrame:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mBackgroundRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailOffsetX:F

    .line 59
    iput v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailOffsetY:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 60
    iput v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailScale:F

    .line 71
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mContext:Landroid/content/Context;

    .line 73
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mWindowManager:Landroid/view/WindowManager;

    .line 74
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mWindowBounds:Landroid/graphics/Rect;

    const/high16 v0, 0x41600000    # 14.0f

    .line 76
    iput v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailScale:F

    const v0, 0x10901a7

    const/4 v1, 0x0

    .line 78
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailView:Landroid/widget/LinearLayout;

    const v0, 0x10901a6

    .line 79
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mBackgroundView:Landroid/widget/LinearLayout;

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->createLayoutParams(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->createLayoutParams(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method


# virtual methods
.method public final createLayoutParams(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;
    .registers 8

    .line 312
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x7f7

    const/16 v4, 0x8

    const/4 v5, -0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 p1, 0x53

    .line 318
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 319
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 p1, 0x1

    .line 320
    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    return-object p0
.end method

.method public final getMagnificationThumbnailPadding(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 3

    .line 325
    new-instance p1, Landroid/graphics/Point;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 326
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10501f8

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 327
    iput p0, p1, Landroid/graphics/Point;->x:I

    .line 328
    iput p0, p1, Landroid/graphics/Point;->y:I

    return-object p1
.end method

.method public hideThumbNail()V
    .registers 3

    .line 178
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mVisible:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 181
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mVisible:Z

    .line 182
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mBackgroundView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 183
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mBackgroundView:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 185
    :cond_17
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 186
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailView:Landroid/widget/LinearLayout;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_26
    return-void
.end method

.method public final makeAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;
    .registers 9

    .line 333
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    const-string v1, "alpha"

    .line 334
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 335
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 336
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_23

    move v4, v2

    goto :goto_24

    :cond_23
    move v4, v3

    :goto_24
    const/4 v5, 0x0

    aput v4, v1, v5

    const/4 v4, 0x1

    if-eqz p2, :cond_2b

    move v2, v3

    :cond_2b
    aput v2, v1, v4

    .line 337
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 338
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_39

    .line 339
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 341
    :cond_39
    new-instance p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail$1;

    invoke-direct {p2, p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail$1;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public moveThumbNail(FFF)V
    .registers 11

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scale : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " offsetX : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " offsetY : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FullScreenMagnificationThumbnail"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    .line 233
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gez v0, :cond_3b

    .line 234
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    goto :goto_41

    :cond_3b
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 235
    :goto_41
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailFrame:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 236
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 238
    iget v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailOffsetX:F

    const/high16 v5, 0x41e00000    # 28.0f

    div-float/2addr p2, v5

    div-float/2addr p2, p1

    add-float/2addr v4, p2

    iput v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailOffsetX:F

    .line 239
    iget p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailOffsetY:F

    div-float/2addr p3, v5

    div-float/2addr p3, p1

    add-float/2addr p2, p3

    iput p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailOffsetY:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p3, v4, p1

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x1

    if-lez p3, :cond_68

    int-to-float p3, v3

    add-float/2addr p3, v4

    float-to-int v3, p3

    sub-float/2addr v4, p1

    .line 243
    iput v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailOffsetX:F

    :goto_66
    move p3, v6

    goto :goto_76

    :cond_68
    cmpg-float p3, v4, v5

    if-gez p3, :cond_75

    int-to-float p3, v3

    add-float v3, v4, p1

    add-float/2addr p3, v3

    float-to-int v3, p3

    add-float/2addr v4, p1

    .line 247
    iput v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailOffsetX:F

    goto :goto_66

    :cond_75
    const/4 p3, 0x0

    :goto_76
    cmpl-float v4, p2, p1

    if-lez v4, :cond_83

    int-to-float p3, v2

    sub-float v2, p2, p1

    sub-float/2addr p3, v2

    float-to-int v2, p3

    sub-float/2addr p2, p1

    .line 253
    iput p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailOffsetY:F

    goto :goto_8f

    :cond_83
    cmpg-float v4, p2, v5

    if-gez v4, :cond_8e

    int-to-float p3, v2

    sub-float/2addr p3, p2

    float-to-int v2, p3

    add-float/2addr p2, p1

    .line 257
    iput p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailOffsetY:F

    goto :goto_8f

    :cond_8e
    move v6, p3

    :goto_8f
    if-eqz v6, :cond_117

    .line 262
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mMagnficationBoundary:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    if-ge v3, p1, :cond_99

    move v3, p1

    goto :goto_c0

    .line 264
    :cond_99
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailFrame:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mMagnficationBoundary:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    add-int/2addr p1, p2

    if-le v3, p1, :cond_c0

    .line 266
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailFrame:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mMagnficationBoundary:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    add-int v3, p1, p2

    .line 270
    :cond_c0
    :goto_c0
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mBackgroundRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int p2, p1, v0

    if-le v2, p2, :cond_cb

    sub-int v2, p1, v0

    goto :goto_d2

    .line 272
    :cond_cb
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mMagnficationBoundary:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-ge v2, p1, :cond_d2

    move v2, p1

    .line 276
    :cond_d2
    :goto_d2
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p2, v2

    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailFrame:Landroid/graphics/Rect;

    .line 277
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    add-int/2addr p3, v3

    .line 276
    invoke-virtual {p1, v3, p2, p3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 279
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailFrame:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 280
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 282
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "moveThumbNail mParams : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_117

    .line 284
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailView:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_117
    return-void
.end method

.method public final setBackgroundBounds()V
    .registers 8

    .line 140
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->getMagnificationThumbnailPadding(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mMagnficationBoundary:Landroid/graphics/Point;

    .line 141
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mMagnficationBoundary:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xe

    .line 142
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mMagnficationBoundary:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0xe

    .line 144
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 146
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mBackgroundRect:Landroid/graphics/Rect;

    add-int v5, v2, v0

    add-int v6, v3, v1

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 148
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 149
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 150
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 151
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method public setMagnificationRect(Landroid/graphics/Rect;)V
    .registers 3

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_f

    .line 91
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mWindowBounds:Landroid/graphics/Rect;

    goto :goto_1b

    .line 93
    :cond_f
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mWindowBounds:Landroid/graphics/Rect;

    :goto_1b
    return-void
.end method

.method public setThumbNailBounds(FFF)V
    .registers 9

    .line 98
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->setBackgroundBounds()V

    .line 99
    iget v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailScale:F

    mul-float/2addr v0, p1

    .line 100
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 101
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 102
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mMagnficationBoundary:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    .line 103
    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int v2, v1, v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v0, v2

    const/4 v2, 0x0

    if-eqz p1, :cond_2f

    float-to-int p2, p2

    .line 107
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int/2addr p2, v4

    div-int/2addr p2, p1

    goto :goto_30

    :cond_2f
    move p2, v2

    :goto_30
    if-eqz v1, :cond_3c

    float-to-int p1, p3

    .line 112
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    mul-int/2addr p1, p3

    div-int v2, p1, v1

    .line 117
    :cond_3c
    div-int/lit8 p1, v3, 0x2

    sub-int/2addr p2, p1

    .line 118
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mMagnficationBoundary:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    if-ge p2, p1, :cond_47

    move p2, p1

    goto :goto_61

    .line 120
    :cond_47
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p1, v3

    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mMagnficationBoundary:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    add-int/2addr p1, p3

    if-le p2, p1, :cond_61

    .line 121
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p1, v3

    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mMagnficationBoundary:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    add-int/2addr p2, p1

    .line 124
    :cond_61
    :goto_61
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mBackgroundRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int p3, p1, v2

    div-int/lit8 v1, v0, 0x2

    sub-int/2addr p3, v1

    sub-int v1, p1, v0

    if-le p3, v1, :cond_71

    sub-int p3, p1, v0

    goto :goto_78

    .line 127
    :cond_71
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mMagnficationBoundary:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-ge p3, p1, :cond_78

    move p3, p1

    .line 130
    :cond_78
    :goto_78
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailFrame:Landroid/graphics/Rect;

    add-int v1, p3, v0

    add-int v2, p2, v3

    invoke-virtual {p1, p2, v1, v2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 131
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 132
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 133
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailFrame:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 134
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setThumbNailBounds mParams : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FullScreenMagnificationThumbnail"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setThumbnailAnimation(Z)V
    .registers 5

    .line 196
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3c

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mBackgroundView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3c

    .line 197
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->makeAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailAnimator:Landroid/animation/ObjectAnimator;

    .line 198
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mBackgroundView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->makeAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 199
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    .line 200
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x3e8

    .line 201
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 202
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_39

    .line 203
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 205
    :cond_39
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_3c
    return-void
.end method

.method public showThumbNail(FFF)V
    .registers 5

    .line 164
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mVisible:Z

    if-nez v0, :cond_21

    .line 165
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->setThumbNailBounds(FFF)V

    .line 166
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mBackgroundView:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailView:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 168
    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailOffsetX:F

    .line 169
    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailOffsetY:F

    const/4 p1, 0x1

    .line 170
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mVisible:Z

    :cond_21
    return-void
.end method

.method public updateThumbNail(FFF)V
    .registers 4

    .line 302
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->setThumbNailBounds(FFF)V

    .line 303
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 304
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mThumbNailView:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    :cond_14
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mBackgroundView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 307
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mBackgroundView:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_25
    return-void
.end method

.method public visible()Z
    .registers 1

    .line 215
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->mVisible:Z

    return p0
.end method
