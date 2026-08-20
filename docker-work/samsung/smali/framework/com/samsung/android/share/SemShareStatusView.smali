.class public Lcom/samsung/android/share/SemShareStatusView;
.super Landroid/widget/FrameLayout;
.source "SemShareStatusView.java"


# static fields
.field public static final blacklist CANCEL:I = -0x1

.field public static final blacklist CONNECTING:I = 0x2

.field public static final blacklist CONNECTING_REPEAT:I = 0x7

.field public static final blacklist FAILED:I = 0x5

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist PREPARING:I = 0x1

.field public static final blacklist PREPARING_REPEAT:I = 0x6

.field private static final blacklist PROGRESS_BAR_MULTIPLY:I = 0x64

.field public static final blacklist SENDING:I = 0x3

.field public static final blacklist SENT:I = 0x4

.field private static final blacklist SENT_FAILED_ICON_DELAY:I = 0x3e8

.field private static final blacklist TAG:Ljava/lang/String; = "SemShareStatusView"


# instance fields
.field private blacklist mConnectingAnimatorSet:Landroid/animation/AnimatorSet;

.field blacklist mConnectingView:Landroid/widget/ProgressBar;

.field private blacklist mFailedAnimatorSet:Landroid/animation/AnimatorSet;

.field private blacklist mFailedIconYOffset:F

.field private blacklist mFailedIconYOffset2:F

.field blacklist mFailedView:Landroid/widget/ImageView;

.field private blacklist mPreparingAnimatorSet:Landroid/animation/AnimatorSet;

.field blacklist mPreparingView:Landroid/widget/ProgressBar;

.field private blacklist mSendingAnimatorSet:Landroid/animation/AnimatorSet;

.field blacklist mSendingProgress:Landroid/widget/ProgressBar;

.field private blacklist mSentAnimatorSet:Landroid/animation/AnimatorSet;

.field blacklist mSentFailedView:Landroid/widget/ImageView;

.field private blacklist mSentIconYOffset:F

.field private blacklist mSentIconYOffset2:F

.field blacklist mSentView:Landroid/widget/ImageView;

.field private blacklist mShareStatus:I

.field private blacklist mSineInOut60:Landroid/view/animation/PathInterpolator;

.field private blacklist mSineOut60:Landroid/view/animation/PathInterpolator;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mShareStatus:I

    .line 45
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSineOut60:Landroid/view/animation/PathInterpolator;

    .line 46
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSineInOut60:Landroid/view/animation/PathInterpolator;

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareStatusView;->initView()V

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/share/SemShareStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/share/SemShareStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mShareStatus:I

    .line 45
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSineOut60:Landroid/view/animation/PathInterpolator;

    .line 46
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSineInOut60:Landroid/view/animation/PathInterpolator;

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareStatusView;->initView()V

    .line 77
    return-void
.end method

.method private blacklist hideAll()V
    .registers 4

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareStatusView;->stopAllAnimation()V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSentView:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    .line 169
    iget v1, p0, Lcom/samsung/android/share/SemShareStatusView;->mSentIconYOffset:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 171
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mFailedView:Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    .line 172
    iget v1, p0, Lcom/samsung/android/share/SemShareStatusView;->mFailedIconYOffset:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 174
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingView:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 175
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 177
    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mConnectingView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_24

    .line 178
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 180
    :cond_24
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSendingProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_31

    .line 181
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSendingProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 184
    :cond_31
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSentFailedView:Landroid/widget/ImageView;

    if-eqz v0, :cond_38

    .line 185
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 187
    :cond_38
    return-void
.end method

.method private blacklist initView()V
    .registers 9

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareStatusView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 81
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x109015f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 83
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareStatusView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105038b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 84
    .local v2, "viewSize":F
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareStatusView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050387

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 85
    .local v3, "sentIconHeight":F
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareStatusView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050383

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 86
    .local v4, "failedIconHeight":F
    add-float v5, v2, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/share/SemShareStatusView;->mSentIconYOffset:F

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareStatusView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x1050389

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, p0, Lcom/samsung/android/share/SemShareStatusView;->mSentIconYOffset2:F

    .line 88
    add-float v5, v2, v4

    neg-float v5, v5

    div-float/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/share/SemShareStatusView;->mFailedIconYOffset:F

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareStatusView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050385

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, p0, Lcom/samsung/android/share/SemShareStatusView;->mFailedIconYOffset2:F

    .line 91
    const v5, 0x1020571

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/samsung/android/share/SemShareStatusView;->mSentFailedView:Landroid/widget/ImageView;

    .line 92
    const v5, 0x1020560

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingView:Landroid/widget/ProgressBar;

    .line 93
    const v5, 0x1020540

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/samsung/android/share/SemShareStatusView;->mConnectingView:Landroid/widget/ProgressBar;

    .line 94
    const v5, 0x1020570

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/samsung/android/share/SemShareStatusView;->mSentView:Landroid/widget/ImageView;

    .line 95
    const v5, 0x1020549

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/samsung/android/share/SemShareStatusView;->mFailedView:Landroid/widget/ImageView;

    .line 96
    const v5, 0x102056f

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/samsung/android/share/SemShareStatusView;->mSendingProgress:Landroid/widget/ProgressBar;

    .line 98
    iget-object v5, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingView:Landroid/widget/ProgressBar;

    const/16 v6, 0x2710

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 99
    iget-object v5, p0, Lcom/samsung/android/share/SemShareStatusView;->mSendingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 100
    iget-object v5, p0, Lcom/samsung/android/share/SemShareStatusView;->mConnectingView:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareStatusView;->hideAll()V

    .line 103
    return-void
.end method

.method static synthetic blacklist lambda$stopAllAnimation$0(Landroid/animation/AnimatorSet;)V
    .registers 1
    .param p0, "animatorSet"    # Landroid/animation/AnimatorSet;

    .line 440
    if-eqz p0, :cond_b

    .line 441
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 442
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    .line 443
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 445
    :cond_b
    return-void
.end method

.method private blacklist prepareConnectingAnimation()V
    .registers 4

    .line 266
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareStatusView;->stopAllAnimation()V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSentView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/share/SemShareStatusView;->mSentIconYOffset:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 268
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mFailedView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/share/SemShareStatusView;->mFailedIconYOffset:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 269
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSendingProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 270
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSentFailedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mConnectingView:Landroid/widget/ProgressBar;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 274
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mConnectingView:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mConnectingView:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareStatusView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10808a2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    return-void
.end method

.method private blacklist prepareConnectingRepeatAnimation()V
    .registers 4

    .line 296
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareStatusView;->stopAllAnimation()V

    .line 297
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSentView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/share/SemShareStatusView;->mSentIconYOffset:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 298
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mFailedView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/share/SemShareStatusView;->mFailedIconYOffset:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 299
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSendingProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 300
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSentFailedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 301
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 303
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mConnectingView:Landroid/widget/ProgressBar;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 304
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mConnectingView:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 305
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mConnectingView:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareStatusView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10808a2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    return-void
.end method

.method private blacklist prepareFailedAnimation()V
    .registers 4

    .line 388
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareStatusView;->stopAllAnimation()V

    .line 389
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSentView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/share/SemShareStatusView;->mFailedIconYOffset:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 390
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingView:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 391
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mConnectingView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 392
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSendingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareStatusView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10808a3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 393
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSentFailedView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareStatusView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10602ee

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 394
    return-void
.end method

.method private blacklist preparePreparingAnimation()V
    .registers 4

    .line 190
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareStatusView;->stopAllAnimation()V

    .line 191
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSentView:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    .line 192
    iget v1, p0, Lcom/samsung/android/share/SemShareStatusView;->mSentIconYOffset:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 194
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mFailedView:Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    .line 195
    iget v1, p0, Lcom/samsung/android/share/SemShareStatusView;->mFailedIconYOffset:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 197
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSendingProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 198
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 200
    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSentFailedView:Landroid/widget/ImageView;

    if-eqz v0, :cond_24

    .line 201
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 203
    :cond_24
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mConnectingView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 205
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingView:Landroid/widget/ProgressBar;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 206
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingView:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 207
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingView:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareStatusView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10808a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    return-void
.end method

.method private blacklist preparePreparingRepeatAnimation()V
    .registers 4

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareStatusView;->stopAllAnimation()V

    .line 229
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSentView:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    .line 230
    iget v1, p0, Lcom/samsung/android/share/SemShareStatusView;->mSentIconYOffset:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 232
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mFailedView:Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    .line 233
    iget v1, p0, Lcom/samsung/android/share/SemShareStatusView;->mFailedIconYOffset:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 235
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSendingProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 236
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 238
    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSentFailedView:Landroid/widget/ImageView;

    if-eqz v0, :cond_24

    .line 239
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 241
    :cond_24
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mConnectingView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 243
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingView:Landroid/widget/ProgressBar;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingView:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 245
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingView:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareStatusView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10808a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    return-void
.end method

.method private blacklist prepareSendingAnimation(I)V
    .registers 6
    .param p1, "progress"    # I

    .line 326
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareStatusView;->stopAllAnimation()V

    .line 327
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSentView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/share/SemShareStatusView;->mSentIconYOffset:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 328
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mFailedView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/share/SemShareStatusView;->mFailedIconYOffset:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 329
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingView:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 330
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mConnectingView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 331
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSendingProgress:Landroid/widget/ProgressBar;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 332
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSendingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 333
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSendingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareStatusView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10808a5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSentFailedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 335
    return-void
.end method

.method private blacklist prepareSentAnimation()V
    .registers 4

    .line 348
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareStatusView;->stopAllAnimation()V

    .line 349
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mFailedView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/share/SemShareStatusView;->mFailedIconYOffset:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 350
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingView:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 351
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mConnectingView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 352
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSentFailedView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareStatusView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10602ef

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 353
    return-void
.end method

.method public static blacklist setShareStatus(Lcom/samsung/android/share/SemShareStatusView;III)V
    .registers 4
    .param p0, "view"    # Lcom/samsung/android/share/SemShareStatusView;
    .param p1, "shareStatus"    # I
    .param p2, "startProgress"    # I
    .param p3, "endProgress"    # I

    .line 460
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/share/SemShareStatusView;->setShareStatus(III)V

    .line 461
    return-void
.end method

.method private blacklist startConnectingAnimation()V
    .registers 7

    .line 279
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mConnectingView:Landroid/widget/ProgressBar;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_4a

    const-string v3, "progress"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 281
    .local v0, "drawCircle":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/samsung/android/share/SemShareStatusView;->mSineInOut60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 282
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 284
    iget-object v2, p0, Lcom/samsung/android/share/SemShareStatusView;->mConnectingView:Landroid/widget/ProgressBar;

    const/4 v3, 0x3

    new-array v3, v3, [F

    fill-array-data v3, :array_52

    const-string v4, "alpha"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 286
    .local v2, "circleBlink":Landroid/animation/ObjectAnimator;
    const-wide/16 v3, 0x578

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 287
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 288
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 290
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 291
    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v1, v5

    aput-object v2, v1, v3

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 292
    iget-object v1, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 293
    return-void

    :array_4a
    .array-data 4
        0x0
        0x2710
    .end array-data

    :array_52
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist startConnectingRepeatAnimation()V
    .registers 7

    .line 309
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mConnectingView:Landroid/widget/ProgressBar;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_4a

    const-string v3, "progress"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 311
    .local v0, "drawCircle":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/samsung/android/share/SemShareStatusView;->mSineInOut60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 312
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 314
    iget-object v2, p0, Lcom/samsung/android/share/SemShareStatusView;->mConnectingView:Landroid/widget/ProgressBar;

    const/4 v3, 0x3

    new-array v3, v3, [F

    fill-array-data v3, :array_52

    const-string v4, "alpha"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 316
    .local v2, "circleBlink":Landroid/animation/ObjectAnimator;
    const-wide/16 v3, 0x578

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 317
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 318
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 320
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 321
    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v1, v5

    aput-object v2, v1, v3

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 322
    iget-object v1, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 323
    return-void

    :array_4a
    .array-data 4
        0x0
        0x2710
    .end array-data

    :array_52
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist startFailedAnimation()V
    .registers 17

    .line 397
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/share/SemShareStatusView;->mFailedAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_101

    .line 398
    :cond_c
    iget-object v1, v0, Lcom/samsung/android/share/SemShareStatusView;->mSendingProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_102

    const-string v4, "alpha"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 399
    .local v1, "progressbarFadeOut":Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0x64

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 401
    iget-object v3, v0, Lcom/samsung/android/share/SemShareStatusView;->mSendingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    .line 402
    .local v3, "current":I
    iget-object v7, v0, Lcom/samsung/android/share/SemShareStatusView;->mSendingProgress:Landroid/widget/ProgressBar;

    new-array v8, v2, [I

    const/4 v9, 0x0

    aput v3, v8, v9

    const/4 v10, 0x1

    aput v9, v8, v10

    const-string v11, "progress"

    invoke-static {v7, v11, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 403
    .local v7, "progressAnimation":Landroid/animation/ObjectAnimator;
    const-wide/16 v11, 0x12c

    invoke-virtual {v7, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 404
    iget-object v8, v0, Lcom/samsung/android/share/SemShareStatusView;->mSineOut60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 406
    iget-object v8, v0, Lcom/samsung/android/share/SemShareStatusView;->mSentFailedView:Landroid/widget/ImageView;

    new-array v11, v2, [F

    fill-array-data v11, :array_10a

    invoke-static {v8, v4, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 407
    .local v8, "backgroundFadeIn":Landroid/animation/ObjectAnimator;
    const-wide/16 v11, 0xc8

    invoke-virtual {v8, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 409
    iget-object v13, v0, Lcom/samsung/android/share/SemShareStatusView;->mFailedView:Landroid/widget/ImageView;

    new-array v14, v2, [F

    iget v15, v0, Lcom/samsung/android/share/SemShareStatusView;->mFailedIconYOffset:F

    aput v15, v14, v9

    iget v15, v0, Lcom/samsung/android/share/SemShareStatusView;->mFailedIconYOffset2:F

    aput v15, v14, v10

    const-string/jumbo v15, "translationY"

    invoke-static {v13, v15, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 410
    .local v13, "failedIconEnter":Landroid/animation/ObjectAnimator;
    const-wide/16 v11, 0x190

    invoke-virtual {v13, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 411
    iget-object v14, v0, Lcom/samsung/android/share/SemShareStatusView;->mSineOut60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v13, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 413
    iget-object v14, v0, Lcom/samsung/android/share/SemShareStatusView;->mFailedView:Landroid/widget/ImageView;

    new-array v11, v2, [F

    iget v12, v0, Lcom/samsung/android/share/SemShareStatusView;->mFailedIconYOffset2:F

    aput v12, v11, v9

    const/4 v12, 0x0

    aput v12, v11, v10

    invoke-static {v14, v15, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 414
    .local v11, "failedIconEnter2":Landroid/animation/ObjectAnimator;
    invoke-virtual {v11, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 415
    iget-object v5, v0, Lcom/samsung/android/share/SemShareStatusView;->mSineOut60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v11, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 417
    iget-object v5, v0, Lcom/samsung/android/share/SemShareStatusView;->mFailedView:Landroid/widget/ImageView;

    new-array v6, v2, [F

    aput v12, v6, v9

    iget v12, v0, Lcom/samsung/android/share/SemShareStatusView;->mFailedIconYOffset:F

    aput v12, v6, v10

    invoke-static {v5, v15, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 418
    .local v5, "failedIconOut":Landroid/animation/ObjectAnimator;
    const-wide/16 v14, 0x190

    invoke-virtual {v5, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 419
    iget-object v6, v0, Lcom/samsung/android/share/SemShareStatusView;->mSineOut60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 420
    const-wide/16 v14, 0x3e8

    invoke-virtual {v5, v14, v15}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 422
    iget-object v6, v0, Lcom/samsung/android/share/SemShareStatusView;->mSentFailedView:Landroid/widget/ImageView;

    new-array v12, v2, [F

    fill-array-data v12, :array_112

    invoke-static {v6, v4, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 423
    .local v4, "backgroundFadeOut":Landroid/animation/ObjectAnimator;
    const-wide/16 v14, 0xc8

    invoke-virtual {v4, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 424
    const-wide/16 v14, 0x4b0

    invoke-virtual {v4, v14, v15}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 426
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, v0, Lcom/samsung/android/share/SemShareStatusView;->mFailedAnimatorSet:Landroid/animation/AnimatorSet;

    .line 427
    new-array v12, v2, [Landroid/animation/Animator;

    aput-object v1, v12, v9

    aput-object v7, v12, v10

    invoke-virtual {v6, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 428
    iget-object v6, v0, Lcom/samsung/android/share/SemShareStatusView;->mFailedAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v12, v2, [Landroid/animation/Animator;

    aput-object v7, v12, v9

    aput-object v8, v12, v10

    invoke-virtual {v6, v12}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 429
    iget-object v6, v0, Lcom/samsung/android/share/SemShareStatusView;->mFailedAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v12, v2, [Landroid/animation/Animator;

    aput-object v8, v12, v9

    aput-object v13, v12, v10

    invoke-virtual {v6, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 430
    iget-object v6, v0, Lcom/samsung/android/share/SemShareStatusView;->mFailedAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v12, v2, [Landroid/animation/Animator;

    aput-object v13, v12, v9

    aput-object v11, v12, v10

    invoke-virtual {v6, v12}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 431
    iget-object v6, v0, Lcom/samsung/android/share/SemShareStatusView;->mFailedAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v12, v2, [Landroid/animation/Animator;

    aput-object v11, v12, v9

    aput-object v5, v12, v10

    invoke-virtual {v6, v12}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 432
    iget-object v6, v0, Lcom/samsung/android/share/SemShareStatusView;->mFailedAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v5, v2, v9

    aput-object v4, v2, v10

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 433
    iget-object v2, v0, Lcom/samsung/android/share/SemShareStatusView;->mFailedAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 435
    .end local v1    # "progressbarFadeOut":Landroid/animation/ObjectAnimator;
    .end local v3    # "current":I
    .end local v4    # "backgroundFadeOut":Landroid/animation/ObjectAnimator;
    .end local v5    # "failedIconOut":Landroid/animation/ObjectAnimator;
    .end local v7    # "progressAnimation":Landroid/animation/ObjectAnimator;
    .end local v8    # "backgroundFadeIn":Landroid/animation/ObjectAnimator;
    .end local v11    # "failedIconEnter2":Landroid/animation/ObjectAnimator;
    .end local v13    # "failedIconEnter":Landroid/animation/ObjectAnimator;
    :cond_101
    return-void

    :array_102
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_10a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_112
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private blacklist startPreparingAnimation()V
    .registers 7

    .line 211
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingView:Landroid/widget/ProgressBar;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_4a

    const-string v3, "progress"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 213
    .local v0, "drawCircle":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/samsung/android/share/SemShareStatusView;->mSineInOut60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 214
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 216
    iget-object v2, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingView:Landroid/widget/ProgressBar;

    const/4 v3, 0x3

    new-array v3, v3, [F

    fill-array-data v3, :array_52

    const-string v4, "alpha"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 218
    .local v2, "circleBlink":Landroid/animation/ObjectAnimator;
    const-wide/16 v3, 0x578

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 219
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 220
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 222
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 223
    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v1, v5

    aput-object v2, v1, v3

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 224
    iget-object v1, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 225
    return-void

    :array_4a
    .array-data 4
        0x0
        0x2710
    .end array-data

    :array_52
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist startPreparingRepeatAnimation()V
    .registers 7

    .line 249
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingView:Landroid/widget/ProgressBar;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_4a

    const-string v3, "progress"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 251
    .local v0, "drawCircle":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/samsung/android/share/SemShareStatusView;->mSineInOut60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 252
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 254
    iget-object v2, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingView:Landroid/widget/ProgressBar;

    const/4 v3, 0x3

    new-array v3, v3, [F

    fill-array-data v3, :array_52

    const-string v4, "alpha"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 256
    .local v2, "circleBlink":Landroid/animation/ObjectAnimator;
    const-wide/16 v3, 0x578

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 257
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 258
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 260
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 261
    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v1, v5

    aput-object v2, v1, v3

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 262
    iget-object v1, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 263
    return-void

    :array_4a
    .array-data 4
        0x0
        0x2710
    .end array-data

    :array_52
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist startSendingAnimation(I)V
    .registers 7
    .param p1, "progress"    # I

    .line 338
    iget-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSendingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 339
    .local v0, "current":I
    iget-object v1, p0, Lcom/samsung/android/share/SemShareStatusView;->mSendingProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    mul-int/lit8 v3, p1, 0x64

    const/4 v4, 0x1

    aput v3, v2, v4

    const-string v3, "progress"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 340
    .local v1, "progressAnimation":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 342
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/share/SemShareStatusView;->mSendingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 343
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 344
    iget-object v2, p0, Lcom/samsung/android/share/SemShareStatusView;->mSendingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 345
    return-void
.end method

.method private blacklist startSentAnimation()V
    .registers 17

    .line 356
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/share/SemShareStatusView;->mSentFailedView:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_c6

    const-string v4, "alpha"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 357
    .local v1, "backgroundFadeIn":Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0xc8

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 359
    iget-object v3, v0, Lcom/samsung/android/share/SemShareStatusView;->mSendingProgress:Landroid/widget/ProgressBar;

    new-array v7, v2, [F

    fill-array-data v7, :array_ce

    invoke-static {v3, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 360
    .local v3, "progressBarFadeOut":Landroid/animation/ObjectAnimator;
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 362
    iget-object v7, v0, Lcom/samsung/android/share/SemShareStatusView;->mSentView:Landroid/widget/ImageView;

    new-array v8, v2, [F

    iget v9, v0, Lcom/samsung/android/share/SemShareStatusView;->mSentIconYOffset:F

    const/4 v10, 0x0

    aput v9, v8, v10

    iget v9, v0, Lcom/samsung/android/share/SemShareStatusView;->mSentIconYOffset2:F

    const/4 v11, 0x1

    aput v9, v8, v11

    const-string/jumbo v9, "translationY"

    invoke-static {v7, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 363
    .local v7, "sentIconEnter":Landroid/animation/ObjectAnimator;
    const-wide/16 v12, 0x190

    invoke-virtual {v7, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 364
    iget-object v8, v0, Lcom/samsung/android/share/SemShareStatusView;->mSineOut60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 366
    iget-object v8, v0, Lcom/samsung/android/share/SemShareStatusView;->mSentView:Landroid/widget/ImageView;

    new-array v14, v2, [F

    iget v15, v0, Lcom/samsung/android/share/SemShareStatusView;->mSentIconYOffset2:F

    aput v15, v14, v10

    const/4 v15, 0x0

    aput v15, v14, v11

    invoke-static {v8, v9, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 367
    .local v8, "sentIconEnter2":Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0x64

    invoke-virtual {v8, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 368
    iget-object v5, v0, Lcom/samsung/android/share/SemShareStatusView;->mSineOut60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v8, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 370
    iget-object v5, v0, Lcom/samsung/android/share/SemShareStatusView;->mSentView:Landroid/widget/ImageView;

    new-array v6, v2, [F

    aput v15, v6, v10

    iget v14, v0, Lcom/samsung/android/share/SemShareStatusView;->mSentIconYOffset:F

    aput v14, v6, v11

    invoke-static {v5, v9, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 371
    .local v5, "sentIconOut":Landroid/animation/ObjectAnimator;
    invoke-virtual {v5, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 372
    iget-object v6, v0, Lcom/samsung/android/share/SemShareStatusView;->mSineOut60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 373
    const-wide/16 v12, 0x3e8

    invoke-virtual {v5, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 375
    iget-object v6, v0, Lcom/samsung/android/share/SemShareStatusView;->mSentFailedView:Landroid/widget/ImageView;

    new-array v9, v2, [F

    fill-array-data v9, :array_d6

    invoke-static {v6, v4, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 376
    .local v4, "backgroundFadeOut":Landroid/animation/ObjectAnimator;
    const-wide/16 v12, 0xc8

    invoke-virtual {v4, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 377
    const-wide/16 v12, 0x4b0

    invoke-virtual {v4, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 379
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, v0, Lcom/samsung/android/share/SemShareStatusView;->mSentAnimatorSet:Landroid/animation/AnimatorSet;

    .line 380
    const/4 v9, 0x3

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v1, v9, v10

    aput-object v3, v9, v11

    aput-object v7, v9, v2

    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 381
    iget-object v6, v0, Lcom/samsung/android/share/SemShareStatusView;->mSentAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v9, v2, [Landroid/animation/Animator;

    aput-object v7, v9, v10

    aput-object v8, v9, v11

    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 382
    iget-object v6, v0, Lcom/samsung/android/share/SemShareStatusView;->mSentAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v9, v2, [Landroid/animation/Animator;

    aput-object v8, v9, v10

    aput-object v5, v9, v11

    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 383
    iget-object v6, v0, Lcom/samsung/android/share/SemShareStatusView;->mSentAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v5, v2, v10

    aput-object v4, v2, v11

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 384
    iget-object v2, v0, Lcom/samsung/android/share/SemShareStatusView;->mSentAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 385
    return-void

    nop

    :array_c6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_ce
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_d6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private blacklist stopAllAnimation()V
    .registers 4

    .line 438
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/share/SemShareStatusView;->mConnectingAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/share/SemShareStatusView;->mSendingAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/share/SemShareStatusView;->mSentAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/share/SemShareStatusView;->mFailedAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/share/SemShareStatusView$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/share/SemShareStatusView$$ExternalSyntheticLambda0;-><init>()V

    .line 439
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mPreparingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 447
    iput-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mConnectingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 448
    iput-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSendingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 449
    iput-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mSentAnimatorSet:Landroid/animation/AnimatorSet;

    .line 450
    iput-object v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mFailedAnimatorSet:Landroid/animation/AnimatorSet;

    .line 451
    return-void
.end method


# virtual methods
.method public blacklist onClick()V
    .registers 4

    .line 465
    const/4 v0, 0x3

    const/16 v1, 0x32

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/share/SemShareStatusView;->setShareStatus(III)V

    .line 466
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 1

    .line 455
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareStatusView;->stopAllAnimation()V

    .line 456
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 457
    return-void
.end method

.method public blacklist setShareStatus(III)V
    .registers 6
    .param p1, "shareStatus"    # I
    .param p2, "startProgress"    # I
    .param p3, "endProgress"    # I

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", setShareStatus: shareStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " this:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemShareStatusView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    packed-switch p1, :pswitch_data_96

    .line 157
    :pswitch_39
    iget v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mShareStatus:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_93

    const/4 v1, -0x1

    if-eq v0, v1, :cond_93

    .line 158
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareStatusView;->prepareFailedAnimation()V

    .line 159
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareStatusView;->startFailedAnimation()V

    goto :goto_93

    .line 134
    :pswitch_48
    iget v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mShareStatus:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_50

    .line 135
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareStatusView;->prepareConnectingRepeatAnimation()V

    .line 137
    :cond_50
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareStatusView;->startConnectingRepeatAnimation()V

    .line 138
    goto :goto_93

    .line 120
    :pswitch_54
    iget v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mShareStatus:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5c

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareStatusView;->preparePreparingRepeatAnimation()V

    .line 123
    :cond_5c
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareStatusView;->startPreparingRepeatAnimation()V

    .line 124
    goto :goto_93

    .line 148
    :pswitch_60
    iget v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mShareStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_93

    .line 149
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareStatusView;->prepareSentAnimation()V

    .line 150
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareStatusView;->startSentAnimation()V

    goto :goto_93

    .line 141
    :pswitch_6c
    iget v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mShareStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_74

    .line 142
    invoke-direct {p0, p2}, Lcom/samsung/android/share/SemShareStatusView;->prepareSendingAnimation(I)V

    .line 144
    :cond_74
    invoke-direct {p0, p3}, Lcom/samsung/android/share/SemShareStatusView;->startSendingAnimation(I)V

    .line 145
    goto :goto_93

    .line 127
    :pswitch_78
    iget v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mShareStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_80

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareStatusView;->prepareConnectingAnimation()V

    .line 130
    :cond_80
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareStatusView;->startConnectingAnimation()V

    .line 131
    goto :goto_93

    .line 113
    :pswitch_84
    iget v0, p0, Lcom/samsung/android/share/SemShareStatusView;->mShareStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8c

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareStatusView;->preparePreparingAnimation()V

    .line 116
    :cond_8c
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareStatusView;->startPreparingAnimation()V

    .line 117
    goto :goto_93

    .line 109
    :pswitch_90
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareStatusView;->hideAll()V

    .line 163
    :cond_93
    :goto_93
    iput p1, p0, Lcom/samsung/android/share/SemShareStatusView;->mShareStatus:I

    .line 164
    return-void

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_90
        :pswitch_84
        :pswitch_78
        :pswitch_6c
        :pswitch_60
        :pswitch_39
        :pswitch_54
        :pswitch_48
    .end packed-switch
.end method
