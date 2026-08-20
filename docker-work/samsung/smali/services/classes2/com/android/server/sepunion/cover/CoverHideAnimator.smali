.class public Lcom/android/server/sepunion/cover/CoverHideAnimator;
.super Ljava/lang/Object;
.source "CoverHideAnimator.java"


# instance fields
.field public final FADE_IN_ANIMATION_DURATION:J

.field public final FADE_OUT_ANIMATION_DURATION:J

.field public final FADE_OUT_ANIMATION_START_DELAY:J

.field public final MSG_SEND_COVER_CANCEL_ANIMATION:I

.field public final MSG_SEND_COVER_START_ANIMATION:I

.field public final TAG:Ljava/lang/String;

.field public mAnimationInterpolator:Landroid/view/animation/Interpolator;

.field public mCallbackRunnable:Ljava/lang/Runnable;

.field public mContext:Landroid/content/Context;

.field public mCoverHideView:Landroid/view/View;

.field public mFadeInAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field public mFadeOutAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field public mHandler:Landroid/os/Handler;

.field public mWindowLP:Landroid/view/WindowManager$LayoutParams;

.field public mWm:Landroid/view/WindowManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAnimationInterpolator(Lcom/android/server/sepunion/cover/CoverHideAnimator;)Landroid/view/animation/Interpolator;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbackRunnable(Lcom/android/server/sepunion/cover/CoverHideAnimator;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCallbackRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverHideView(Lcom/android/server/sepunion/cover/CoverHideAnimator;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFadeOutAnimatorListener(Lcom/android/server/sepunion/cover/CoverHideAnimator;)Landroid/animation/AnimatorListenerAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mFadeOutAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/sepunion/cover/CoverHideAnimator;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCallbackRunnable(Lcom/android/server/sepunion/cover/CoverHideAnimator;Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCallbackRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleCancelAnimation(Lcom/android/server/sepunion/cover/CoverHideAnimator;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->handleCancelAnimation()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleStartAnimation(Lcom/android/server/sepunion/cover/CoverHideAnimator;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->handleStartAnimation()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveViewFromWindow(Lcom/android/server/sepunion/cover/CoverHideAnimator;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->removeViewFromWindow()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 5

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/CoverHideAnimator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x64

    .line 43
    iput-wide v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->FADE_IN_ANIMATION_DURATION:J

    const-wide/16 v0, 0x96

    .line 44
    iput-wide v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->FADE_OUT_ANIMATION_START_DELAY:J

    const-wide/16 v0, 0x12c

    .line 45
    iput-wide v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->FADE_OUT_ANIMATION_DURATION:J

    const/16 v0, 0x65

    .line 47
    iput v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->MSG_SEND_COVER_START_ANIMATION:I

    const/16 v0, 0x66

    .line 48
    iput v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->MSG_SEND_COVER_CANCEL_ANIMATION:I

    .line 50
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    .line 93
    new-instance v0, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;-><init>(Lcom/android/server/sepunion/cover/CoverHideAnimator;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mFadeInAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 116
    new-instance v0, Lcom/android/server/sepunion/cover/CoverHideAnimator$3;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/cover/CoverHideAnimator$3;-><init>(Lcom/android/server/sepunion/cover/CoverHideAnimator;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mFadeOutAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 60
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mWm:Landroid/view/WindowManager;

    .line 63
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mWindowLP:Landroid/view/WindowManager$LayoutParams;

    const-string v0, "clear cover animation"

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mWindowLP:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x11

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, -0x1

    .line 66
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 67
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v0, 0x7e8

    .line 68
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, -0x2

    .line 69
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v0, 0x1

    .line 70
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const v0, 0x4080008

    .line 71
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 74
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 75
    new-instance p1, Lcom/android/server/sepunion/cover/CoverHideAnimator$1;

    invoke-direct {p1, p0, p2}, Lcom/android/server/sepunion/cover/CoverHideAnimator$1;-><init>(Lcom/android/server/sepunion/cover/CoverHideAnimator;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public cancelHideAnimation()V
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->TAG:Ljava/lang/String;

    const-string v1, "cancelHideAnimation()"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final handleCancelAnimation()V
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 176
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 177
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->removeViewFromWindow()V

    :cond_e
    return-void
.end method

.method public final handleStartAnimation()V
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 156
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->TAG:Ljava/lang/String;

    const-string v1, "handleStartAnimation : mCoverHideView is not null!!"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->removeViewFromWindow()V

    .line 160
    :cond_e
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    const/4 v1, 0x0

    .line 161
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 162
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 164
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mFadeInAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 168
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mWindowLP:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public playCoverHideAnimation(Ljava/lang/Runnable;)V
    .registers 4

    .line 146
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "playCoverHideAnimation()"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCallbackRunnable:Ljava/lang/Runnable;

    .line 148
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final removeViewFromWindow()V
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    if-eqz v0, :cond_10

    const/16 v1, 0x8

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_10
    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    return-void
.end method
