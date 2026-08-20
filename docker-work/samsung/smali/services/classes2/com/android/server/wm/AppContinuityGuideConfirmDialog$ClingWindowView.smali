.class public Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;
.super Landroid/widget/FrameLayout;
.source "AppContinuityGuideConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppContinuityGuideConfirmDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClingWindowView"
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0xfa

.field public static final BGCOLOR:I = -0x80000000

.field public static final FOLDED_APPS_SETTINGS:Ljava/lang/String; = "com.samsung.settings.FOLDED_APPS_SETTINGS"

.field public static final OFFSET_DP:I = 0x60

.field public static final SETTINGS_FRAGMENT_ARGS_KEY:Ljava/lang/String; = ":settings:fragment_args_key"

.field public static final SETTINGS_SHOW_FRAGMENT_ARGS:Ljava/lang/String; = ":settings:show_fragment_args"


# instance fields
.field public mButtonLayout:Landroid/widget/LinearLayout;

.field public mButtonMoveToSetting:Landroid/widget/Button;

.field public mButtonOk:Landroid/widget/Button;

.field public mClingHandler:Landroid/os/Handler;

.field public mClingLayout:Landroid/view/ViewGroup;

.field public final mColor:Landroid/graphics/drawable/ColorDrawable;

.field public mColorAnim:Landroid/animation/ValueAnimator;

.field public final mConfirm:Ljava/lang/Runnable;

.field public mCurrentTask:Lcom/android/server/wm/Task;

.field public mDim:Landroid/widget/ImageView;

.field public mGuideTextView:Landroid/widget/TextView;

.field public mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field public final mInterpolator:Landroid/view/animation/Interpolator;

.field public mIsFolded:Z

.field public mRotation:I

.field public final synthetic this$0:Lcom/android/server/wm/AppContinuityGuideConfirmDialog;


# direct methods
.method public static synthetic $r8$lambda$8mDM8pxHmLc83w4BCsIPvqYKrWQ(Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->lambda$onAttachedToWindow$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FNBP6qI9x4twpKXuXQ7vtqsT3KA(Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->lambda$onAttachedToWindow$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QG8zSeGe0CEnWLiNcoaXkc9Wg-I(Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->lambda$onConfigurationChanged$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$_ehdDJGAfYOOAlTQyjq3Gw18Qq4(Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->lambda$handleContinueToUseButton$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$fU00VKJki-xYSao3qllu8YHdAl4(Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->lambda$onAttachedToWindow$2(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmClingLayout(Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;)Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmColor(Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;)Landroid/graphics/drawable/ColorDrawable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/AppContinuityGuideConfirmDialog;Landroid/content/Context;Ljava/lang/Runnable;ZLcom/android/server/wm/Task;)V
    .registers 7

    .line 306
    iput-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmDialog;

    .line 307
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 275
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    .line 286
    new-instance v0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView$1;-><init>(Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;)V

    iput-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 375
    iput p2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mRotation:I

    .line 377
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mClingHandler:Landroid/os/Handler;

    .line 308
    iput-object p3, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    .line 309
    iput-boolean p4, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mIsFolded:Z

    .line 310
    iput-object p5, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mCurrentTask:Lcom/android/server/wm/Task;

    .line 311
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x2

    .line 312
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 313
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const p2, 0x10c000e

    .line 314
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private synthetic lambda$handleContinueToUseButton$3()V
    .registers 1

    .line 387
    invoke-virtual {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->startSettingActivity()V

    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$0(Landroid/view/View;)V
    .registers 2

    .line 338
    invoke-virtual {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->handleContinueToUseButton()V

    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$1(Landroid/view/View;)V
    .registers 2

    .line 339
    iget-object p0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$2(Landroid/view/View;)V
    .registers 7

    .line 350
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 351
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 352
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    .line 353
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 354
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 355
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 356
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 358
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/high16 v3, -0x80000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    .line 359
    new-instance v2, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView$2;

    invoke-direct {v2, p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView$2;-><init>(Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 366
    iget-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 367
    iget-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 368
    iget-object p0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$4()V
    .registers 1

    .line 484
    invoke-virtual {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->updateLayout()V

    return-void
.end method


# virtual methods
.method public final handleContinueToUseButton()V
    .registers 3

    .line 384
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->-$$Nest$fputmUserUsedAppContinuitySetting(Lcom/android/server/wm/AppContinuityGuideConfirmDialog;Z)V

    .line 385
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmDialog;

    invoke-static {v0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->-$$Nest$fgetmHandler(Lcom/android/server/wm/AppContinuityGuideConfirmDialog;)Lcom/android/server/wm/AppContinuityGuideConfirmDialog$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmDialog;

    invoke-static {v0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->-$$Nest$fgetmHandler(Lcom/android/server/wm/AppContinuityGuideConfirmDialog;)Lcom/android/server/wm/AppContinuityGuideConfirmDialog$H;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 387
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmDialog;

    invoke-static {v0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->-$$Nest$fgetmHandler(Lcom/android/server/wm/AppContinuityGuideConfirmDialog;)Lcom/android/server/wm/AppContinuityGuideConfirmDialog$H;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 5

    .line 319
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 321
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 322
    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmDialog;

    invoke-static {v1}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->-$$Nest$mgetWindowManager(Lcom/android/server/wm/AppContinuityGuideConfirmDialog;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 323
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 325
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 329
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x109003f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v2, 0x10201f7

    .line 330
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mDim:Landroid/widget/ImageView;

    const v2, 0x3e99999a    # 0.3f

    .line 331
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 332
    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v2, 0x10201f6

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mGuideTextView:Landroid/widget/TextView;

    .line 333
    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v2, 0x10201f3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mButtonLayout:Landroid/widget/LinearLayout;

    .line 335
    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v2, 0x10201f4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mButtonMoveToSetting:Landroid/widget/Button;

    .line 337
    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v2, 0x10201f5

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mButtonOk:Landroid/widget/Button;

    .line 338
    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mButtonMoveToSetting:Landroid/widget/Button;

    new-instance v2, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mButtonOk:Landroid/widget/Button;

    new-instance v2, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    invoke-virtual {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->updateLayout()V

    .line 342
    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmDialog;

    invoke-static {v2}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->-$$Nest$mgetBubbleLayoutParams(Lcom/android/server/wm/AppContinuityGuideConfirmDialog;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 345
    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 346
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    const/high16 v2, -0x3d400000    # -96.0f

    mul-float/2addr v0, v2

    .line 347
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 349
    new-instance v0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_b9

    .line 371
    :cond_b2
    iget-object p0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :goto_b9
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 481
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 483
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_1f

    iget p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mRotation:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eq p1, v0, :cond_1f

    .line 484
    iget-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mClingHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1f
    return-void
.end method

.method public final startSettingActivity()V
    .registers 15

    .line 396
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mCurrentTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_5

    return-void

    .line 399
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmDialog;

    invoke-static {v0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->-$$Nest$fgetmAtmService(Lcom/android/server/wm/AppContinuityGuideConfirmDialog;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 400
    new-instance v5, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.FOLDED_APPS_SETTINGS"

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 402
    iget-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mCurrentTask:Lcom/android/server/wm/Task;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_38

    const-string v2, ":settings:fragment_args_key"

    .line 403
    iget-object v4, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mCurrentTask:Lcom/android/server/wm/Task;

    .line 404
    invoke-virtual {v4, v3, v3}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 403
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ":settings:show_fragment_args"

    .line 405
    invoke-virtual {v5, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 408
    :cond_38
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 409
    iget-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mCurrentTask:Lcom/android/server/wm/Task;

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 410
    invoke-virtual {v1, v3, v3}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 412
    iget-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmDialog;

    invoke-static {v2}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->-$$Nest$fgetmAtmService(Lcom/android/server/wm/AppContinuityGuideConfirmDialog;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 413
    invoke-virtual {v3}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mCurrentTask:Lcom/android/server/wm/Task;

    iget-object v4, v4, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 417
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 421
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v11

    const/4 v12, 0x0

    .line 423
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v13

    iget-object p0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmDialog;

    invoke-static {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->-$$Nest$fgetmAtmService(Lcom/android/server/wm/AppContinuityGuideConfirmDialog;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    .line 424
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move v13, p0

    .line 412
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    .line 425
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_e .. :try_end_87} :catchall_8b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_8b
    move-exception p0

    :try_start_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final updateLayout()V
    .registers 8

    .line 429
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 432
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 433
    iget-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmDialog;

    invoke-static {v2}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->-$$Nest$mgetWindowManager(Lcom/android/server/wm/AppContinuityGuideConfirmDialog;)Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 434
    iget-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mGuideTextView:Landroid/widget/TextView;

    iget v3, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setWidth(I)V

    .line 436
    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-double v1, v1

    const-wide v3, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 437
    iget-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mGuideTextView:Landroid/widget/TextView;

    .line 438
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 439
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 441
    iget-boolean v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mIsFolded:Z

    const/4 v2, 0x0

    if-nez v1, :cond_66

    const v1, 0x10401c7

    .line 442
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mButtonMoveToSetting:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 444
    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mButtonOk:Landroid/widget/Button;

    const v3, 0x10401c5

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 445
    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mButtonOk:Landroid/widget/Button;

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10800d6

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_85

    :cond_66
    const v1, 0x10401c6

    .line 448
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 449
    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mButtonMoveToSetting:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 450
    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mButtonOk:Landroid/widget/Button;

    const v3, 0x10401c4

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 451
    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mButtonOk:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 453
    :goto_85
    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mGuideTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mButtonLayout:Landroid/widget/LinearLayout;

    .line 456
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 458
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_da

    .line 459
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mRotation:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_c2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_a9

    goto :goto_c2

    .line 469
    :cond_a9
    iget-boolean v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mIsFolded:Z

    if-eqz v1, :cond_b2

    .line 470
    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 472
    :cond_b2
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050318

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_da

    .line 463
    :cond_c2
    :goto_c2
    iget-boolean v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mIsFolded:Z

    if-eqz v1, :cond_cb

    .line 464
    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 466
    :cond_cb
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050317

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 476
    :cond_da
    :goto_da
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
