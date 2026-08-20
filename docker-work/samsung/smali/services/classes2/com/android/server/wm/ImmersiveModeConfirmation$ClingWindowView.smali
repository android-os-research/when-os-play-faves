.class public Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;
.super Landroid/widget/FrameLayout;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClingWindowView"
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0xfa

.field public static final ANIM_DURATION_ALPHA_IN:I = 0xc8

.field public static final ANIM_DURATION_ALPHA_OUT:I = 0x12c

.field public static final ANIM_DURATION_TRANSLATE:I = 0x258

.field public static final ANIM_IMAGE_VIEW_PAUSE_TIME:I = 0x3e8

.field public static final ANIM_START_OFFSET:I = 0xc8

.field public static final BGCOLOR:I = -0x80000000

.field public static final MAX_FONT_SCALE:F = 1.25f

.field public static final OFFSET_DP:I = 0x60


# instance fields
.field public final SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

.field public final SINE_IN_OUT_60:Landroid/view/animation/Interpolator;

.field public mButtonOkLand:Landroid/widget/Button;

.field public mButtonOkPort:Landroid/widget/Button;

.field public mClingHandler:Landroid/os/Handler;

.field public mClingLayout:Landroid/view/ViewGroup;

.field public final mColor:Landroid/graphics/drawable/ColorDrawable;

.field public mColorAnim:Landroid/animation/ValueAnimator;

.field public final mConfirm:Ljava/lang/Runnable;

.field public mImageArrow0:Landroid/widget/ImageView;

.field public mImageArrow270:Landroid/widget/ImageView;

.field public mImageArrow90:Landroid/widget/ImageView;

.field public mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field public final mInterpolator:Landroid/view/animation/Interpolator;

.field public mLayoutLand:Landroid/widget/LinearLayout;

.field public mLayoutPort:Landroid/widget/LinearLayout;

.field public mNavBarCanMove:Z

.field public mNavBarPosition:I

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field public mShowOkButton:Z

.field public mTextLand:Landroid/widget/TextView;

.field public mTextPort:Landroid/widget/TextView;

.field public mUpdateLayoutRunnable:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;


# direct methods
.method public static synthetic $r8$lambda$094IOslB_FF99jcpvc58G_0BURo(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->lambda$onAttachedToWindow$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E3TilnOfyXuloVEkEzy7-U4CKQY(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->lambda$onAttachedToWindow$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hx4ZeGDPZ69nyBmXcBXmouR9N1g(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->lambda$onConfigurationChanged$2()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmClingHandler(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClingLayout(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmColor(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/graphics/drawable/ColorDrawable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmColorAnim(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/animation/ValueAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInterpolator(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/animation/Interpolator;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdateLayoutRunnable(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmColorAnim(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;Landroid/animation/ValueAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateLayout(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->updateLayout()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ImmersiveModeConfirmation;Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 10

    .line 425
    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 426
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 383
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    .line 388
    new-instance v1, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$1;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    .line 397
    new-instance v1, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 416
    new-instance v1, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$3;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$3;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 552
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    .line 553
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e2e147b    # 0.17f

    const v3, 0x3ecccccd    # 0.4f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->SINE_IN_OUT_60:Landroid/view/animation/Interpolator;

    .line 558
    iput-boolean v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mShowOkButton:Z

    .line 560
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingHandler:Landroid/os/Handler;

    .line 427
    iput-object p3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    .line 428
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x2

    .line 429
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 430
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const p3, 0x10c000e

    .line 431
    invoke-static {p2, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 434
    invoke-static {p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$fgetmDisplayPolicy(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayPolicy;->getNavBarPosition()I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mNavBarPosition:I

    .line 435
    invoke-static {p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$fgetmDisplayPolicy(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mNavBarCanMove:Z

    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$0(Landroid/view/View;)V
    .registers 3

    const-string p1, "ImmersiveModeConfirmation"

    const-string/jumbo v0, "onClick() Port"

    .line 467
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$1(Landroid/view/View;)V
    .registers 3

    const-string p1, "ImmersiveModeConfirmation"

    const-string/jumbo v0, "onClick() Land"

    .line 471
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$2()V
    .registers 1

    .line 719
    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->updateLayout()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3

    .line 539
    new-instance p0, Landroid/view/WindowInsets$Builder;

    invoke-direct {p0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    .line 540
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p1

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 539
    invoke-virtual {p0, p1, v0}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    move-result-object p0

    .line 540
    invoke-virtual {p0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public onAttachedToWindow()V
    .registers 5

    .line 442
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 444
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 445
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 446
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 448
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 452
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x109009d

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v2, 0x102035c

    .line 456
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mLayoutPort:Landroid/widget/LinearLayout;

    .line 457
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v2, 0x102035b

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mLayoutLand:Landroid/widget/LinearLayout;

    .line 458
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v2, 0x10204ac

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mTextPort:Landroid/widget/TextView;

    .line 459
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v2, 0x10203a0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mTextLand:Landroid/widget/TextView;

    .line 460
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v2, 0x10204ad

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkPort:Landroid/widget/Button;

    .line 461
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v2, 0x10203a1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkLand:Landroid/widget/Button;

    .line 462
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v2, 0x1020354

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow0:Landroid/widget/ImageView;

    .line 463
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v2, 0x1020356

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow90:Landroid/widget/ImageView;

    .line 464
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v2, 0x1020355

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow270:Landroid/widget/ImageView;

    .line 466
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkPort:Landroid/widget/Button;

    new-instance v2, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkLand:Landroid/widget/Button;

    new-instance v2, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->updateTextSize()V

    .line 476
    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->updateLayout()V

    .line 487
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {v2}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$mgetBubbleLayoutParams(Lcom/android/server/wm/ImmersiveModeConfirmation;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_df

    .line 490
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 491
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    const/high16 v2, -0x3d400000    # -96.0f

    mul-float/2addr v0, v2

    .line 492
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 494
    new-instance v0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_e6

    .line 519
    :cond_df
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 522
    :goto_e6
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 710
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 712
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$fgetmDisplayPolicy(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getNavBarPosition()I

    move-result p1

    .line 713
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$fgetmDisplayPolicy(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result v0

    .line 715
    iget v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mNavBarPosition:I

    if-ne v1, p1, :cond_1f

    iget-boolean v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mNavBarCanMove:Z

    if-eq v1, v0, :cond_2d

    .line 717
    :cond_1f
    iput p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mNavBarPosition:I

    .line 718
    iput-boolean v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mNavBarCanMove:Z

    .line 719
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2d
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 528
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public final startArrowAnimation(I)V
    .registers 9

    const/4 v0, 0x2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_7

    .line 628
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow0:Landroid/widget/ImageView;

    goto :goto_e

    :cond_7
    if-ne p1, v0, :cond_c

    .line 629
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow90:Landroid/widget/ImageView;

    goto :goto_e

    :cond_c
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow270:Landroid/widget/ImageView;

    :goto_e
    if-nez v2, :cond_11

    return-void

    :cond_11
    const/4 v3, 0x0

    .line 634
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 635
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 637
    iget-boolean v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mShowOkButton:Z

    if-eqz v3, :cond_20

    .line 638
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->startButtonAnimation(I)V

    return-void

    .line 642
    :cond_20
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050334

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p1, v5, :cond_45

    if-eq p1, v0, :cond_3e

    if-eq p1, v1, :cond_37

    goto :goto_4c

    .line 648
    :cond_37
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float p1, v3

    invoke-direct {v4, v6, v6, p1, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_4c

    .line 651
    :cond_3e
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float p1, v3

    invoke-direct {v4, p1, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_4c

    .line 654
    :cond_45
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    neg-int p1, v3

    int-to-float p1, p1

    invoke-direct {v4, p1, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_4c
    const-wide/16 v0, 0xc8

    .line 657
    invoke-virtual {v4, v0, v1}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    const-wide/16 v0, 0x258

    .line 658
    invoke-virtual {v4, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 659
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->SINE_IN_OUT_60:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, p1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 661
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x708

    .line 662
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    const-wide/16 v0, 0x12c

    .line 664
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 665
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 667
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 668
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 669
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 670
    new-instance p1, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$6;

    invoke-direct {p1, p0, v2, v0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$6;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;Landroid/view/View;Landroid/view/animation/AnimationSet;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 689
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 690
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final startButtonAnimation(I)V
    .registers 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 694
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkPort:Landroid/widget/Button;

    goto :goto_8

    :cond_6
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkLand:Landroid/widget/Button;

    :goto_8
    if-eqz p1, :cond_2d

    .line 695
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_2d

    :cond_11
    const/4 v0, 0x0

    .line 699
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 700
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 702
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    .line 703
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 704
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 705
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public final updateLayout()V
    .registers 7

    .line 585
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 587
    iget v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mNavBarPosition:I

    .line 589
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mLayoutPort:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-ne v1, v4, :cond_10

    move v5, v3

    goto :goto_11

    :cond_10
    move v5, v4

    :goto_11
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 591
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mLayoutLand:Landroid/widget/LinearLayout;

    if-eq v1, v4, :cond_19

    goto :goto_1a

    :cond_19
    move v3, v4

    :goto_1a
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 594
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {v2}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$fgetmDisplayPolicy(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicyExt;->isNavigationGestureMode()Z

    move-result v2

    if-eqz v2, :cond_59

    const v2, 0x1040c21

    .line 595
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-ne v1, v4, :cond_3f

    .line 598
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow0:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 599
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mTextPort:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_55

    .line 601
    :cond_3f
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mLayoutLand:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 602
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow90:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 603
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow270:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 604
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mTextLand:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    :goto_55
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->startButtonAnimation(I)V

    return-void

    :cond_59
    const v2, 0x1040c22

    .line 611
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-ne v1, v4, :cond_7b

    .line 613
    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {v3}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$fgetmDisplayPolicy(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result v3

    if-nez v3, :cond_75

    const v2, 0x1040c23

    .line 614
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 616
    :cond_75
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mTextPort:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_95

    .line 618
    :cond_7b
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mLayoutLand:Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    if-ne v1, v3, :cond_82

    const/4 v3, 0x5

    goto :goto_83

    :cond_82
    const/4 v3, 0x3

    :goto_83
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 619
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow90:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 620
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow270:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mTextLand:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    :goto_95
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->startArrowAnimation(I)V

    return-void
.end method

.method public final updateTextSize()V
    .registers 5

    .line 573
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050338

    .line 574
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 575
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v2, 0x3fa00000    # 1.25f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_21

    move v1, v2

    .line 578
    :cond_21
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mTextPort:Landroid/widget/TextView;

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 579
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mTextLand:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 580
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkPort:Landroid/widget/Button;

    invoke-virtual {v2, v1, v0}, Landroid/widget/Button;->setTextSize(IF)V

    .line 581
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkLand:Landroid/widget/Button;

    invoke-virtual {p0, v1, v0}, Landroid/widget/Button;->setTextSize(IF)V

    return-void
.end method
