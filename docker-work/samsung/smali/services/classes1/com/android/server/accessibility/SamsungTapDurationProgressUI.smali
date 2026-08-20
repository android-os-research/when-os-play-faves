.class public Lcom/android/server/accessibility/SamsungTapDurationProgressUI;
.super Ljava/lang/Object;
.source "SamsungTapDurationProgressUI.java"


# static fields
.field public static final FADE_IN_DURATION:J = 0x64L

.field public static final FADE_OUT_DURATION:J = 0x96L

.field public static final PROGRESS_COMPLETE:I = 0x168

.field public static final SCALE_DURATION:J = 0x15eL

.field public static final SCALE_FROM:F = 0.8f

.field public static final SCALE_TO:F = 1.0f

.field public static final TAG:Ljava/lang/String; = "SamsungTapDurationProgressUI"


# instance fields
.field public mArrow:Landroid/widget/ImageView;

.field public mBackground:Landroid/widget/ImageView;

.field public mCircle:Landroid/widget/ImageView;

.field public mContext:Landroid/content/Context;

.field public mDensityDpi:I

.field public mDisplay:Landroid/view/Display;

.field public mDuration:J

.field public mFadeInAnimator:Landroid/animation/ObjectAnimator;

.field public mFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field public final mHandler:Landroid/os/Handler;

.field public mHold:Landroid/widget/ImageView;

.field public mIsRemoveAnimationEnabled:Z

.field public mIsShortThreshold:Z

.field public mNavigationBarHeight:I

.field public mParams:Landroid/view/WindowManager$LayoutParams;

.field public mProgress:Landroid/widget/ProgressBar;

.field public mRotationSet:Landroid/animation/AnimatorSet;

.field public mScaleSet:Landroid/animation/AnimatorSet;

.field public mSize:I

.field public mStandBy:Landroid/widget/ImageView;

.field public mUiMode:I

.field public final mUiThread:Ljava/lang/Thread;

.field public mView:Landroid/view/View;

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$BL0QLM9R0QTIwUJA6AMapGtsLEs(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->lambda$setViewOnOff$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$E8vadcVAi3faubrExKyDSEryUJ4(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->lambda$cancel$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$G5jMxBSWBrG-A263Mmn5yP0k-Tg(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->lambda$end$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$N6COoI00Z2d5jEaqFemattUR1so(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->lambda$updateView$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$U2MBuZip0sp3fZZe10Z43prEk5I(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->lambda$start$1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmArrow(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mArrow:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCircle(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mCircle:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFadeInAnimator(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Landroid/animation/ObjectAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHold(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mHold:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsRemoveAnimationEnabled(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsShortThreshold(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsShortThreshold:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProgress(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Landroid/widget/ProgressBar;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRotationSet(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Landroid/animation/AnimatorSet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mRotationSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStandBy(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mStandBy:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmView(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mHandler:Landroid/os/Handler;

    .line 72
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mUiThread:Ljava/lang/Thread;

    .line 73
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    iput p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mUiMode:I

    .line 75
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mDensityDpi:I

    .line 76
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10504d9

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    .line 78
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->getNavigationBarHeight()I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mNavigationBarHeight:I

    .line 79
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "remove_animations"

    const/4 v1, 0x0

    .line 79
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_53

    goto :goto_54

    :cond_53
    move v0, v1

    :goto_54
    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsShortThreshold:Z

    .line 83
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->makeView()V

    .line 84
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->makeAnimation()V

    return-void
.end method

.method private synthetic lambda$cancel$2()V
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mScaleSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mScaleSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 113
    :cond_d
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mRotationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mRotationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 115
    :cond_1a
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$end$3()V
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mRotationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mRotationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 122
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsShortThreshold:Z

    if-eqz v0, :cond_16

    goto :goto_1c

    .line 126
    :cond_16
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_29

    .line 123
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mStandBy:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mHold:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_29
    return-void
.end method

.method private synthetic lambda$setViewOnOff$0(Z)V
    .registers 2

    .line 96
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$start$1()V
    .registers 4

    .line 102
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->checkConfigurationChanged()V

    .line 103
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 105
    :cond_10
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mRotationSet:Landroid/animation/AnimatorSet;

    iget-wide v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 106
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mScaleSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private synthetic lambda$updateView$4()V
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 111
    new-instance v0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)V

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final checkConfigurationChanged()V
    .registers 5

    .line 184
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 185
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 187
    iget v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mUiMode:I

    iget v2, v0, Landroid/content/res/Configuration;->uiMode:I

    if-ne v1, v2, :cond_14

    iget v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mDensityDpi:I

    iget v3, v0, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v3, :cond_3e

    .line 188
    :cond_14
    iput v2, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mUiMode:I

    .line 189
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mDensityDpi:I

    .line 191
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    .line 192
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 193
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10504d9

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    .line 196
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->makeView()V

    .line 197
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->makeAnimation()V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3e} :catch_3e

    :catch_3e
    :cond_3e
    return-void
.end method

.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    .line 179
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public end()V
    .registers 2

    .line 120
    new-instance v0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)V

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getNavigationBarHeight()I
    .registers 3

    .line 322
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101b5

    .line 323
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 327
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1050244

    .line 328
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0
.end method

.method public final makeAnimation()V
    .registers 10

    .line 243
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mScaleSet:Landroid/animation/AnimatorSet;

    .line 244
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mRotationSet:Landroid/animation/AnimatorSet;

    .line 246
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_ba

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v2, [F

    fill-array-data v4, :array_c2

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 249
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mScaleSet:Landroid/animation/AnimatorSet;

    new-array v4, v2, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 250
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mScaleSet:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0x15e

    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 251
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mScaleSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;

    invoke-direct {v3, p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;-><init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 278
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mScaleSet:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e6147ae    # 0.22f

    const v6, 0x3e2e147b    # 0.17f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 280
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mCircle:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v4, v2, [F

    fill-array-data v4, :array_ca

    .line 281
    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 282
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mArrow:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v6, v2, [F

    fill-array-data v6, :array_d2

    .line 283
    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 285
    new-instance v4, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$2;

    invoke-direct {v4, p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$2;-><init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 292
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mRotationSet:Landroid/animation/AnimatorSet;

    new-array v6, v2, [Landroid/animation/Animator;

    aput-object v1, v6, v5

    aput-object v3, v6, v0

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 294
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mArrow:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v2, [F

    fill-array-data v3, :array_da

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x64

    .line 295
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 297
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_e2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x96

    .line 298
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 299
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$3;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$3;-><init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_ba
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_c2
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_ca
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_d2
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_da
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_e2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final makeView()V
    .registers 4

    .line 205
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mWindowManager:Landroid/view/WindowManager;

    .line 206
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mDisplay:Landroid/view/Display;

    .line 208
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_3c

    .line 209
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    .line 210
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 211
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x7d6

    .line 212
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x708

    .line 213
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x3

    .line 217
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x33

    .line 218
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 220
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/4 v1, 0x1

    .line 221
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 224
    :cond_3c
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10900b0

    const/4 v2, 0x0

    .line 225
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 226
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 227
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 228
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    const v1, 0x102060d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mCircle:Landroid/widget/ImageView;

    .line 231
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    const v1, 0x102060b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mArrow:Landroid/widget/ImageView;

    .line 232
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    const v1, 0x102060c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mBackground:Landroid/widget/ImageView;

    .line 233
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    const v1, 0x1020613

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mProgress:Landroid/widget/ProgressBar;

    .line 234
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    const v1, 0x1020614

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mStandBy:Landroid/widget/ImageView;

    .line 235
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    const v1, 0x102060e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mHold:Landroid/widget/ImageView;

    .line 237
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->setRemoveAnimationEnabled(Z)V

    .line 239
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final runOnUiThread(Ljava/lang/Runnable;)V
    .registers 4

    .line 334
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_e

    .line 335
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11

    .line 337
    :cond_e
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_11
    return-void
.end method

.method public setDurationTime(J)V
    .registers 9

    .line 88
    iput-wide p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mDuration:J

    .line 89
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsShortThreshold:Z

    const-wide/16 v1, 0x12c

    cmp-long v3, p1, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gez v3, :cond_e

    move v3, v4

    goto :goto_f

    :cond_e
    move v3, v5

    :goto_f
    if-eq v0, v3, :cond_1a

    cmp-long p1, p1, v1

    if-gez p1, :cond_16

    goto :goto_17

    :cond_16
    move v4, v5

    .line 90
    :goto_17
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->setShortThresholdView(Z)V

    :cond_1a
    return-void
.end method

.method public setRemoveAnimationEnabled(Z)V
    .registers 6

    .line 145
    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    .line 147
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mCircle:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez p1, :cond_10

    iget-boolean v3, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsShortThreshold:Z

    if-eqz v3, :cond_e

    goto :goto_10

    :cond_e
    move v3, v1

    goto :goto_11

    :cond_10
    :goto_10
    move v3, v2

    :goto_11
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mArrow:Landroid/widget/ImageView;

    if-nez p1, :cond_1f

    iget-boolean v3, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsShortThreshold:Z

    if-eqz v3, :cond_1d

    goto :goto_1f

    :cond_1d
    move v3, v1

    goto :goto_20

    :cond_1f
    :goto_1f
    move v3, v2

    :goto_20
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mBackground:Landroid/widget/ImageView;

    if-nez p1, :cond_2e

    iget-boolean v3, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsShortThreshold:Z

    if-eqz v3, :cond_2c

    goto :goto_2e

    :cond_2c
    move v3, v1

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v3, v2

    :goto_2f
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mProgress:Landroid/widget/ProgressBar;

    if-nez p1, :cond_3d

    iget-boolean v3, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsShortThreshold:Z

    if-eqz v3, :cond_3b

    goto :goto_3d

    :cond_3b
    move v3, v1

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v3, v2

    :goto_3e
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mStandBy:Landroid/widget/ImageView;

    if-nez p1, :cond_4b

    iget-boolean p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsShortThreshold:Z

    if-eqz p1, :cond_4a

    goto :goto_4b

    :cond_4a
    move v1, v2

    :cond_4b
    :goto_4b
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mHold:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setShortThresholdView(Z)V
    .registers 6

    .line 157
    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsShortThreshold:Z

    .line 159
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mCircle:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez p1, :cond_10

    iget-boolean v3, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    if-eqz v3, :cond_e

    goto :goto_10

    :cond_e
    move v3, v1

    goto :goto_11

    :cond_10
    :goto_10
    move v3, v2

    :goto_11
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mArrow:Landroid/widget/ImageView;

    if-nez p1, :cond_1f

    iget-boolean v3, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    if-eqz v3, :cond_1d

    goto :goto_1f

    :cond_1d
    move v3, v1

    goto :goto_20

    :cond_1f
    :goto_1f
    move v3, v2

    :goto_20
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mBackground:Landroid/widget/ImageView;

    if-nez p1, :cond_2e

    iget-boolean v3, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    if-eqz v3, :cond_2c

    goto :goto_2e

    :cond_2c
    move v3, v1

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v3, v2

    :goto_2f
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mProgress:Landroid/widget/ProgressBar;

    if-nez p1, :cond_3d

    iget-boolean v3, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    if-eqz v3, :cond_3b

    goto :goto_3d

    :cond_3b
    move v3, v1

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v3, v2

    :goto_3e
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mStandBy:Landroid/widget/ImageView;

    if-nez p1, :cond_4b

    iget-boolean v3, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    if-eqz v3, :cond_4a

    goto :goto_4b

    :cond_4a
    move v1, v2

    :cond_4b
    :goto_4b
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mHold:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_5f

    const p1, 0x10500a6

    goto :goto_62

    :cond_5f
    const p1, 0x10504d9

    :goto_62
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    .line 169
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mStandBy:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 170
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mStandBy:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 171
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mHold:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 172
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mHold:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 173
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mStandBy:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    .line 174
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mHold:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public setViewOnOff(Z)V
    .registers 3

    .line 95
    new-instance v0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start()V
    .registers 2

    .line 101
    new-instance v0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)V

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateView(FF)V
    .registers 5

    .line 132
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    .line 133
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int p1, p1

    iget v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mNavigationBarHeight:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_21

    .line 135
    :cond_17
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int p1, p1

    iget v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 137
    :goto_21
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int p2, p2

    iget v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 139
    new-instance p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)V

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
