.class public Lcom/android/server/wm/WindowChangeAnimationSpec;
.super Ljava/lang/Object;
.source "WindowChangeAnimationSpec.java"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0x190

.field public static final NATURAL_SWITCHING_ANIMATION_DURATION:I = 0xfa

.field public static final NATURAL_SWITCHING_ANIMATION_START_OFFSET:I = 0x32

.field public static final RESIZE_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final THUMBNAIL_ALPHA_ANIM_DURATION:I = 0x64

.field public static final THUMBNAIL_ALPHA_ANIM_START_OFFSET:I = 0x32


# instance fields
.field public mAnimation:Landroid/view/animation/Animation;

.field public mChangeTransitMode:I
    .annotation build Lcom/samsung/android/multiwindow/MultiWindowManager$ChangeTransitionMode;
    .end annotation
.end field

.field public mCornerRadius:F

.field public mDexCompatPadding:I

.field public final mEndBounds:Landroid/graphics/Rect;

.field public final mInternalPresentationOnly:Z

.field public final mIsAppAnimation:Z

.field public final mIsThumbnail:Z

.field public final mStartBounds:Landroid/graphics/Rect;

.field public final mThreadLocalTmps:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$a2PqJWhKykQtaQRSVuuvt30wRmU()Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;
    .registers 1

    invoke-static {}, Lcom/android/server/wm/WindowChangeAnimationSpec;->lambda$new$0()Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 5

    .line 86
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->RESIZE_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;FZZ)V
    .registers 16

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 96
    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/WindowChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;FZZLcom/android/server/wm/SurfaceFreezer;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;FZZLcom/android/server/wm/SurfaceFreezer;Z)V
    .registers 15

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/android/server/wm/WindowChangeAnimationSpec$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/WindowChangeAnimationSpec$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mChangeTransitMode:I

    const/4 v1, 0x0

    .line 84
    iput v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mCornerRadius:F

    .line 85
    iput v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mDexCompatPadding:I

    const/4 v0, 0x2

    if-eqz p7, :cond_46

    .line 104
    invoke-virtual {p7}, Lcom/android/server/wm/SurfaceFreezer;->getWmService()Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    .line 105
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v4, p3, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 106
    iget v4, p7, Lcom/android/server/wm/SurfaceFreezer;->mChangeTransitMode:I

    iput v4, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mChangeTransitMode:I

    .line 107
    iget v5, p7, Lcom/android/server/wm/SurfaceFreezer;->mCornerRadius:F

    iput v5, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mCornerRadius:F

    .line 113
    iget-boolean v5, p7, Lcom/android/server/wm/SurfaceFreezer;->mInternalPresentationOnly:Z

    or-int/2addr p8, v5

    .line 116
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz v5, :cond_46

    if-ne v4, v0, :cond_46

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 118
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->hasWallpaperBackgroundForLetterboxLocked(Lcom/android/server/wm/DisplayContent;)Z

    move-result v2

    if-eqz v2, :cond_46

    move p4, v1

    .line 124
    :cond_46
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    .line 125
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    .line 126
    iput-boolean p5, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsAppAnimation:Z

    .line 127
    iput-boolean p6, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsThumbnail:Z

    .line 131
    iput-boolean p8, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mInternalPresentationOnly:Z

    .line 135
    iget p1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mChangeTransitMode:I

    if-ne p1, v0, :cond_71

    .line 136
    iget-wide p1, p7, Lcom/android/server/wm/SurfaceFreezer;->mCustomDuration:J

    const-wide/16 p5, 0x0

    cmp-long p3, p1, p5

    if-lez p3, :cond_67

    goto :goto_69

    :cond_67
    const-wide/16 p1, 0x190

    :goto_69
    long-to-float p1, p1

    mul-float/2addr p1, p4

    float-to-int p1, p1

    int-to-long p1, p1

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowChangeAnimationSpec;->createDismissBoundsInterpolator(J)V

    goto :goto_91

    :cond_71
    const/4 p2, 0x5

    const/high16 p5, 0x43c80000    # 400.0f

    if-ne p1, p2, :cond_7d

    mul-float/2addr p4, p5

    float-to-int p1, p4

    int-to-long p1, p1

    .line 141
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/WindowChangeAnimationSpec;->createBoundsInterpolatorForFreeformHeaderTypeChange(JLandroid/view/DisplayInfo;)V

    goto :goto_91

    :cond_7d
    const/4 p2, 0x4

    if-ne p1, p2, :cond_84

    .line 145
    invoke-virtual {p0, p4, p3}, Lcom/android/server/wm/WindowChangeAnimationSpec;->createCustomBoundsInterpolator(FLandroid/view/DisplayInfo;)V

    goto :goto_91

    :cond_84
    const/4 p2, 0x6

    if-ne p1, p2, :cond_8e

    mul-float/2addr p4, p5

    float-to-int p1, p4

    int-to-long p1, p1

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowChangeAnimationSpec;->createFadeOutThumbnailInterpolator(J)V

    goto :goto_91

    .line 150
    :cond_8e
    invoke-virtual {p0, p4, p3}, Lcom/android/server/wm/WindowChangeAnimationSpec;->createCustomBoundsInterpolator(FLandroid/view/DisplayInfo;)V

    :goto_91
    return-void
.end method

.method public static synthetic lambda$new$0()Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;
    .registers 2

    .line 61
    new-instance v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;-><init>(Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues-IA;)V

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .registers 13

    .line 433
    iget-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;

    .line 434
    iget-boolean v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsThumbnail:Z

    if-eqz v1, :cond_2e

    iget v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mChangeTransitMode:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2e

    .line 437
    iget-object p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p0, p3, p4, v1}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 438
    iget-object p0, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    iget-object p3, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mFloats:[F

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 439
    iget-object p0, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p0}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_ad

    .line 441
    :cond_2e
    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p3, p4, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 442
    iget-object p3, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    .line 443
    iget-object p4, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mFloats:[F

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 447
    iget-object p4, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, p4, v1

    const/4 v1, 0x1

    aput v2, p4, v1

    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 448
    aput v4, p4, v3

    const/4 v5, 0x0

    aput v4, p4, v5

    .line 449
    invoke-virtual {p3, p4}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 450
    iget-object p3, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    aget p4, p3, v5

    div-float p4, v4, p4

    aput p4, p3, v5

    .line 451
    aget p4, p3, v3

    div-float/2addr v4, p4

    aput v4, p3, v3

    .line 452
    iget-object p3, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object p3

    .line 453
    iget-object p4, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget v4, p3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v6, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    aget v5, v6, v5

    mul-float/2addr v4, v5

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, p4, Landroid/graphics/Rect;->left:I

    .line 454
    iget v4, p3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, p4, Landroid/graphics/Rect;->right:I

    .line 455
    iget v4, p3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    aget v3, v6, v3

    mul-float/2addr v4, v3

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, p4, Landroid/graphics/Rect;->top:I

    .line 456
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p3, p3

    mul-float/2addr p3, v3

    add-float/2addr p3, v7

    float-to-int p3, p3

    iput p3, p4, Landroid/graphics/Rect;->bottom:I

    .line 464
    invoke-virtual {p1, p2, p4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 467
    iget-object p3, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 468
    iget p3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mCornerRadius:F

    cmpl-float p4, p3, v2

    if-lez p4, :cond_a6

    .line 469
    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 472
    :cond_a6
    iget-boolean p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mInternalPresentationOnly:Z

    if-eqz p0, :cond_ad

    .line 473
    invoke-virtual {p1, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setInternalPresentationOnly(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    :cond_ad
    :goto_ad
    return-void
.end method

.method public calculateStatusBarTransitionStartTime()J
    .registers 7

    .line 482
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 483
    iget-object p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    long-to-float p0, v2

    const v2, 0x3f7d70a4    # 0.99f

    mul-float/2addr p0, v2

    float-to-long v2, p0

    add-long/2addr v2, v0

    const-wide/16 v4, 0x78

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public canSkipFirstFrame()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final createBoundsInterpolator(JLandroid/view/DisplayInfo;)V
    .registers 13

    .line 179
    iget-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    .line 180
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_21

    move v0, v1

    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    const v3, 0x3f333333    # 0.7f

    long-to-float v4, p1

    mul-float/2addr v4, v3

    float-to-long v4, v4

    .line 183
    iget-object v6, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    iget-object v7, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    const v7, 0x3e99999a    # 0.3f

    add-float/2addr v6, v7

    .line 185
    iget-object v8, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    iget-object v3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v8, v3

    add-float/2addr v8, v7

    .line 187
    iget-boolean v3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsThumbnail:Z

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v3, :cond_97

    .line 188
    new-instance p3, Landroid/view/animation/AnimationSet;

    invoke-direct {p3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 189
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 190
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    if-nez v0, :cond_68

    sub-long v2, p1, v4

    .line 192
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 194
    :cond_68
    invoke-virtual {p3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    div-float v0, v7, v6

    div-float/2addr v7, v8

    .line 197
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v0, v0, v7, v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 198
    invoke-virtual {v1, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 199
    invoke-virtual {p3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 200
    iput-object p3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 201
    iget-object p1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    .line 202
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    .line 201
    invoke-virtual {p3, p1, p2, v0, p0}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_fd

    .line 204
    :cond_97
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 205
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v6, v7, v8, v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 206
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    if-nez v0, :cond_ab

    sub-long v4, p1, v4

    .line 208
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 210
    :cond_ab
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 211
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-direct {v0, v4, v6, v1, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 213
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 214
    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 215
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 216
    new-instance v1, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 217
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 218
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 219
    new-instance v2, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {v2, v0, v1}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 220
    invoke-virtual {v2, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 221
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 222
    iput-object v3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 223
    iget-object p1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iget p2, p3, Landroid/view/DisplayInfo;->appWidth:I

    iget p3, p3, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v3, p1, p0, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    :goto_fd
    return-void
.end method

.method public final createBoundsInterpolatorForFreeformHeaderTypeChange(JLandroid/view/DisplayInfo;)V
    .registers 10

    .line 360
    iget-boolean v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsThumbnail:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5a

    .line 361
    new-instance p3, Landroid/view/animation/AnimationSet;

    invoke-direct {p3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 363
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 364
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 365
    invoke-virtual {p3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 367
    iget-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 368
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    int-to-float v0, v2

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 370
    invoke-virtual {v1, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 371
    invoke-virtual {p3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 374
    sget-object p1, Lcom/android/server/wm/WindowChangeAnimationSpec;->RESIZE_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 376
    iput-object p3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 377
    iget-object p1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    .line 378
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    .line 377
    invoke-virtual {p3, p1, p2, v0, p0}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_b4

    .line 380
    :cond_5a
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 382
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-direct {v1, v3, v5, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 384
    invoke-virtual {v1, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 385
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 387
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 388
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v3, 0x0

    .line 389
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 390
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 391
    new-instance v3, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {v3, v1, v2}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 392
    invoke-virtual {v3, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 393
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 396
    sget-object p1, Lcom/android/server/wm/WindowChangeAnimationSpec;->RESIZE_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 398
    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 399
    iget-object p1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iget p2, p3, Landroid/view/DisplayInfo;->appWidth:I

    iget p3, p3, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v0, p1, p0, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    :goto_b4
    return-void
.end method

.method public final createCustomBoundsInterpolator(FLandroid/view/DisplayInfo;)V
    .registers 15

    .line 238
    iget-boolean v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsThumbnail:Z

    if-eqz v0, :cond_8

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowChangeAnimationSpec;->createCustomBoundsInterpolatorForThumbnail(F)V

    return-void

    .line 246
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowChangeAnimationSpec;->isNaturalSwitching()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    const/high16 v0, 0x42480000    # 50.0f

    mul-float/2addr v0, p1

    float-to-long v3, v0

    const/high16 v0, 0x437a0000    # 250.0f

    mul-float/2addr p1, v0

    float-to-long v5, p1

    move p1, v2

    goto :goto_21

    :cond_1a
    const-wide/16 v3, 0x0

    const/high16 v0, 0x43c80000    # 400.0f

    mul-float/2addr p1, v0

    float-to-long v5, p1

    move p1, v1

    .line 258
    :goto_21
    iget-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v7, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v0, v7

    .line 259
    iget-object v7, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 260
    new-instance v8, Landroid/view/animation/ScaleAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v8, v0, v9, v7, v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 261
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v7, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    iget v9, v7, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    invoke-direct {v0, v9, v11, v7, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 263
    new-instance v7, Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v10, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-direct {v7, v2, v2, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 264
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v11, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-direct {v9, v2, v2, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 265
    new-instance v2, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {v2, v7, v9}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 269
    new-instance v7, Landroid/view/animation/AnimationSet;

    invoke-direct {v7, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    if-eqz p1, :cond_8c

    .line 271
    invoke-virtual {v7, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 273
    :cond_8c
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 274
    invoke-virtual {v7, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 275
    invoke-virtual {v7, v3, v4}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 276
    invoke-virtual {v7, v5, v6}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 277
    sget-object p1, Lcom/android/server/wm/WindowChangeAnimationSpec;->RESIZE_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, p1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 278
    iput-object v7, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 279
    iget-object p1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iget v0, p2, Landroid/view/DisplayInfo;->appWidth:I

    iget p2, p2, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v7, p1, p0, v0, p2}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-void
.end method

.method public final createCustomBoundsInterpolatorForThumbnail(F)V
    .registers 11

    .line 284
    invoke-virtual {p0}, Lcom/android/server/wm/WindowChangeAnimationSpec;->isNaturalSwitching()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xfa

    goto :goto_b

    :cond_9
    const/16 v0, 0x190

    :goto_b
    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    .line 288
    iget-object v2, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 289
    iget-object v3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 290
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v5, p1

    float-to-long v7, v5

    .line 291
    invoke-virtual {v4, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    const/high16 v5, 0x42480000    # 50.0f

    mul-float/2addr p1, v5

    float-to-long v7, p1

    .line 292
    invoke-virtual {v4, v7, v8}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 293
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    div-float p1, v6, v2

    div-float/2addr v6, v3

    .line 299
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v2, p1, p1, v6, v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 300
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 301
    sget-object p1, Lcom/android/server/wm/WindowChangeAnimationSpec;->RESIZE_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 303
    new-instance p1, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 304
    invoke-virtual {p1, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 305
    invoke-virtual {p1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 306
    iput-object p1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 307
    iget-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    .line 308
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    .line 307
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-void
.end method

.method public final createDismissBoundsInterpolator(J)V
    .registers 10

    .line 312
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 313
    iget-boolean v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsThumbnail:Z

    if-eqz v1, :cond_18

    .line 314
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 315
    invoke-virtual {v1, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 316
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_84

    .line 318
    :cond_18
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 319
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v3, 0x0

    .line 320
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 321
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 322
    iget-object v3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    .line 323
    iget-object v3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v6

    .line 324
    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    if-gez v4, :cond_4d

    .line 326
    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v4

    iput v5, v2, Landroid/graphics/Rect;->right:I

    goto :goto_52

    .line 328
    :cond_4d
    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v4

    iput v5, v2, Landroid/graphics/Rect;->left:I

    :goto_52
    if-lez v3, :cond_5a

    .line 331
    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v3

    iput v4, v2, Landroid/graphics/Rect;->top:I

    goto :goto_5f

    .line 333
    :cond_5a
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v3

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 336
    :cond_5f
    :goto_5f
    new-instance v3, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {v3, v1, v2}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 337
    invoke-virtual {v3, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 338
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 340
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    int-to-float v2, v2

    invoke-direct {v1, v4, v3, v5, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 342
    invoke-virtual {v1, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 343
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 344
    sget-object p1, Lcom/android/server/wm/WindowChangeAnimationSpec;->RESIZE_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 346
    :goto_84
    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 347
    iget-object p1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    .line 348
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    .line 347
    invoke-virtual {v0, p1, p2, v1, p0}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-void
.end method

.method public final createFadeOutThumbnailInterpolator(J)V
    .registers 10

    .line 407
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 408
    iget-boolean v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsThumbnail:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_49

    .line 409
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v3, 0x0

    .line 410
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 411
    new-instance v3, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {v3, v1, v1}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 412
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 413
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-direct {v1, v4, v6, v3, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 415
    invoke-virtual {v1, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 416
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 417
    sget-object v1, Lcom/android/server/wm/WindowChangeAnimationSpec;->RESIZE_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 418
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 419
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_51

    .line 421
    :cond_49
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 422
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 424
    :goto_51
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 425
    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 426
    iget-object p1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    .line 427
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    .line 426
    invoke-virtual {v0, p1, p2, v1, p0}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 499
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    return-void
.end method

.method public dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V
    .registers 6

    const-wide v0, 0x10b00000001L

    .line 504
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 505
    iget-object p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide v2, 0x10900000001L

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 506
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getDuration()J
    .registers 3

    .line 164
    iget-object p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShowWallpaper()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isNaturalSwitching()Z
    .registers 2

    .line 354
    iget p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mChangeTransitMode:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public needsEarlyWakeup()Z
    .registers 1

    .line 494
    iget-boolean p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsAppAnimation:Z

    return p0
.end method
