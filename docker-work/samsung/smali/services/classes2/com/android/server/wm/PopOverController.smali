.class public Lcom/android/server/wm/PopOverController;
.super Ljava/lang/Object;
.source "PopOverController.java"


# static fields
.field public static final POP_OVER_CUSTOM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final POP_OVER_DIM_AMOUNT_FOR_CHILD:F = 0.13f
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final POP_OVER_DIM_AMOUNT_FOR_NIGHT:F = 0.5f
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final POP_OVER_DIM_DURATION:J = 0x96L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final POP_OVER_LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final POP_OVER_SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public static synthetic $r8$lambda$qvEXaljtkT-0EzeWWt3xPP5Av1Q(Lcom/android/server/wm/PopOverController;[ZZLcom/android/server/wm/WindowState;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/PopOverController;->lambda$updateTransparency$0([ZZLcom/android/server/wm/WindowState;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/PopOverController;)Lcom/android/server/wm/DisplayContent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 5

    .line 63
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/server/wm/PopOverController;->POP_OVER_LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 64
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f19999a    # 0.6f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/PopOverController;->POP_OVER_CUSTOM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 66
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v2, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/PopOverController;->POP_OVER_SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method

.method public static createPopOverAnimation(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 15

    .line 164
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v8, v0, v1

    .line 165
    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v2

    add-float v9, v0, p2

    .line 167
    new-instance p2, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v0, 0x6

    const-wide/16 v1, 0x15e

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eq p0, v0, :cond_b7

    const/4 v0, 0x7

    const-wide/16 v10, 0xc8

    if-eq p0, v0, :cond_89

    const/16 v0, 0x18

    if-eq p0, v0, :cond_35

    const/16 v0, 0x19

    if-eq p0, v0, :cond_35

    goto/16 :goto_f3

    .line 174
    :cond_35
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    if-eqz p1, :cond_3d

    invoke-direct {p0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_40

    :cond_3d
    invoke-direct {p0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 175
    :goto_40
    sget-object v0, Lcom/android/server/wm/PopOverController;->POP_OVER_LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p1, :cond_4a

    const-wide/16 v3, 0x64

    goto :goto_4b

    :cond_4a
    move-wide v3, v10

    .line 176
    :goto_4b
    invoke-virtual {p0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 177
    invoke-virtual {p2, p0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz p1, :cond_64

    .line 180
    new-instance p0, Landroid/view/animation/ScaleAnimation;

    const v4, 0x3f733333    # 0.95f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f733333    # 0.95f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto :goto_74

    .line 181
    :cond_64
    new-instance p0, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f733333    # 0.95f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f733333    # 0.95f

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    :goto_74
    if-eqz p1, :cond_79

    .line 183
    sget-object v0, Lcom/android/server/wm/PopOverController;->POP_OVER_CUSTOM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_7b

    .line 184
    :cond_79
    sget-object v0, Lcom/android/server/wm/PopOverController;->POP_OVER_SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 182
    :goto_7b
    invoke-virtual {p0, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p1, :cond_81

    goto :goto_82

    :cond_81
    move-wide v1, v10

    .line 185
    :goto_82
    invoke-virtual {p0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 186
    invoke-virtual {p2, p0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_f3

    :cond_89
    if-nez p1, :cond_f3

    .line 204
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 205
    sget-object p1, Lcom/android/server/wm/PopOverController;->POP_OVER_LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 206
    invoke-virtual {p0, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 207
    invoke-virtual {p2, p0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 209
    new-instance p0, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f733333    # 0.95f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f733333    # 0.95f

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 210
    sget-object p1, Lcom/android/server/wm/PopOverController;->POP_OVER_SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 211
    invoke-virtual {p0, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 212
    invoke-virtual {p2, p0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_f3

    .line 189
    :cond_b7
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    if-eqz p1, :cond_bf

    invoke-direct {p0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_c2

    :cond_bf
    invoke-direct {p0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 190
    :goto_c2
    sget-object v0, Lcom/android/server/wm/PopOverController;->POP_OVER_LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v3, 0x96

    .line 191
    invoke-virtual {p0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    if-eqz p1, :cond_d0

    const-wide/16 v3, 0x0

    .line 192
    :cond_d0
    invoke-virtual {p0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 193
    invoke-virtual {p2, p0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz p1, :cond_f3

    .line 196
    new-instance p0, Landroid/view/animation/ScaleAnimation;

    const v4, 0x3f733333    # 0.95f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f733333    # 0.95f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 197
    sget-object p1, Lcom/android/server/wm/PopOverController;->POP_OVER_CUSTOM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 198
    invoke-virtual {p0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 199
    invoke-virtual {p2, p0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_f3
    :goto_f3
    return-object p2
.end method

.method public static isPopOverActivityOpenTransit(I)Z
    .registers 2

    const/16 v0, 0x18

    if-eq p0, v0, :cond_a

    const/4 v0, 0x6

    if-ne p0, v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 p0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 p0, 0x1

    :goto_b
    return p0
.end method

.method public static isPopOverActivityTransit(I)Z
    .registers 2

    const/16 v0, 0x18

    if-eq p0, v0, :cond_11

    const/16 v0, 0x19

    if-eq p0, v0, :cond_11

    const/4 v0, 0x6

    if-eq p0, v0, :cond_11

    const/4 v0, 0x7

    if-ne p0, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method private synthetic lambda$updateTransparency$0([ZZLcom/android/server/wm/WindowState;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 7

    .line 231
    iget-object v0, p4, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    invoke-virtual {v0}, Lcom/android/server/wm/PopOverState;->isActivated()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_30

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_30

    .line 234
    :cond_10
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p4

    if-eqz p4, :cond_30

    .line 235
    iget-object v0, p4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v0, :cond_1b

    goto :goto_30

    :cond_1b
    const/4 v0, 0x0

    .line 238
    aput-boolean p2, p1, v0

    if-ne p4, p3, :cond_21

    return v0

    :cond_21
    const/16 p1, 0x10

    .line 242
    invoke-virtual {p4, v0, p1}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 243
    invoke-virtual {p4}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 245
    :cond_2c
    invoke-virtual {p0, p4, p2}, Lcom/android/server/wm/PopOverController;->startTransparentAnimation(Lcom/android/server/wm/WindowState;Z)V

    return v0

    :cond_30
    :goto_30
    return v1
.end method


# virtual methods
.method public addPopOverWindowLw(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PopOverController;->isChildDimmingDialog(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 77
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_10

    return-void

    .line 81
    :cond_10
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mChildDimmingDialogs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 82
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/android/server/wm/WindowState;->mOriginalDimBehind:I

    .line 83
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v2, v0, Lcom/android/server/wm/WindowState;->mOriginalDimAmount:F

    .line 84
    iget-wide v1, v1, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    iput-wide v1, v0, Lcom/android/server/wm/WindowState;->mOriginalDimDuration:J

    .line 86
    :cond_28
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mChildDimmingDialogs:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object p1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/PopOverController;->updatePopOverDimAttributesLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    :cond_32
    return-void
.end method

.method public getDistanceToTopForPopOver(Lcom/android/server/wm/WindowState;II)I
    .registers 8

    .line 137
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 138
    :cond_d
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mContext:Landroid/content/Context;

    .line 139
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_24

    iget-object v2, p0, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 140
    invoke-virtual {v2}, Lcom/android/server/wm/FreeformController;->getFreeformHeaderType()I

    move-result v2

    if-ne v2, v3, :cond_23

    goto :goto_24

    :cond_23
    move v3, v1

    .line 138
    :cond_24
    :goto_24
    invoke-static {v0, v3}, Lcom/android/internal/widget/DecorCaptionView;->getDecorCaptionHeight(Landroid/content/Context;Z)I

    move-result v0

    sub-int/2addr p2, v0

    .line 142
    :cond_29
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 143
    iget-object p0, p0, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFreeFormFrameThickness:I

    sub-int/2addr p2, p0

    .line 145
    :cond_38
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr p0, p3

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final isChildDimmingDialog(Lcom/android/server/wm/WindowState;)Z
    .registers 4

    .line 100
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_19

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq p1, v0, :cond_19

    const/4 v1, 0x3

    if-eq p1, v1, :cond_19

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method public removePopOverWindowLw(Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 92
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 93
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mChildDimmingDialogs:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 94
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mChildDimmingDialogs:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 95
    iget-object p1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/PopOverController;->updatePopOverDimAttributesLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    :cond_1b
    return-void
.end method

.method public final startTransparentAnimation(Lcom/android/server/wm/WindowState;Z)V
    .registers 9

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3a83126f    # 0.001f

    if-eqz p2, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    if-eqz p2, :cond_d

    move v0, v1

    .line 261
    :cond_d
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x64

    if-eqz p2, :cond_18

    move-wide v4, v2

    goto :goto_1a

    :cond_18
    const-wide/16 v4, 0xc8

    .line 262
    :goto_1a
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    if-eqz p2, :cond_21

    const-wide/16 v2, 0x0

    .line 263
    :cond_21
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 264
    new-instance v2, Lcom/android/server/wm/PopOverController$1;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/server/wm/PopOverController$1;-><init>(Lcom/android/server/wm/PopOverController;ZLcom/android/server/wm/WindowState;F)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 287
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public updatePopOverDimAttributesLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 7

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mPopOverDimmerNeeded:Z

    .line 108
    iget v0, p1, Lcom/android/server/wm/WindowState;->mOriginalDimBehind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    return-void

    .line 112
    :cond_9
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_24

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 114
    invoke-virtual {v0}, Lcom/android/server/wm/PopOverState;->isRemoveOutlineEffectSet()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 115
    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p0, p0, -0x3

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 116
    iget p0, p1, Lcom/android/server/wm/WindowState;->mOriginalDimAmount:F

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 117
    iget-wide v2, p1, Lcom/android/server/wm/WindowState;->mOriginalDimDuration:J

    iput-wide v2, p2, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    goto :goto_61

    .line 118
    :cond_24
    iget-object p0, p0, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x20

    const-wide/16 v2, 0x96

    if-eqz p0, :cond_3e

    .line 119
    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p0, v1

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 p0, 0x3f000000    # 0.5f

    .line 120
    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 121
    iput-wide v2, p2, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    goto :goto_61

    .line 122
    :cond_3e
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mChildDimmingDialogs:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_53

    .line 123
    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p0, v1

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const p0, 0x3e051eb8    # 0.13f

    .line 124
    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 125
    iput-wide v2, p2, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    goto :goto_61

    .line 127
    :cond_53
    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p0, p0, -0x3

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 128
    iget p0, p1, Lcom/android/server/wm/WindowState;->mOriginalDimAmount:F

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 129
    iget-wide v2, p1, Lcom/android/server/wm/WindowState;->mOriginalDimDuration:J

    iput-wide v2, p2, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 131
    :goto_61
    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_69

    const/4 p0, 0x1

    .line 132
    iput-boolean p0, p1, Lcom/android/server/wm/WindowState;->mPopOverDimmerNeeded:Z

    :cond_69
    return-void
.end method

.method public updateTransparency(Lcom/android/server/wm/WindowState;Z)V
    .registers 9

    .line 224
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_3e

    :cond_d
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 230
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, p2, p1}, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PopOverController;[ZZLcom/android/server/wm/WindowState;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    aget-boolean p1, v0, v1

    if-eqz p1, :cond_3e

    .line 250
    iget-object p1, p0, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 251
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "Pop-over transparent mode"

    .line 250
    invoke-interface/range {v0 .. v5}, Lcom/android/server/policy/WindowManagerPolicy;->performHapticFeedback(ILjava/lang/String;IZLjava/lang/String;)Z

    :cond_3e
    :goto_3e
    return-void
.end method
