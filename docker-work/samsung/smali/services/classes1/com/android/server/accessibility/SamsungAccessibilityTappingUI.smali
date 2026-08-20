.class public Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;
.super Ljava/lang/Object;
.source "SamsungAccessibilityTappingUI.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SamsungAccessibilityTappingUI"

.field public static final TYPE_IGNORE_REPEAT:I = 0x1

.field public static final TYPE_TAP_DURATION:I


# instance fields
.field public durationTime:J

.field public inflater:Landroid/view/LayoutInflater;

.field public mContext:Landroid/content/Context;

.field public mDisplay:Landroid/view/Display;

.field public final mHandler:Landroid/os/Handler;

.field public mIgnoreImageView:Landroid/widget/ImageView;

.field public mParams:Landroid/view/WindowManager$LayoutParams;

.field public mProgressImageView:Landroid/widget/ImageView;

.field public mStandbyImageView:Landroid/widget/ImageView;

.field public mTapImageView:Landroid/widget/ImageView;

.field public mTapLayout:Landroid/widget/FrameLayout;

.field public mUiThread:Ljava/lang/Thread;

.field public mWindowManager:Landroid/view/WindowManager;

.field public navigationBarHeight:I

.field public scale:F

.field public size:I

.field public tappingType:I

.field public view:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$6WzotMiYtvMQ5oR9CBbz6vW9nBc(Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->lambda$stopAnimation$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$UpSjsyUDCBJ3cpgUhPLOD2bgg_o(Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->lambda$setIgnoreView$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$bNzuaYbkhSlHErlTK3-j343S524(Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->lambda$clearAnimation$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$g6wUhI7tjc63sRG3frfHfjl6jwM(Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->lambda$startAnimation$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$pBPcgTGu7sTXrUYCDVjXqzeyrAk(Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->lambda$setViewOnOff$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$wbHDqrGOpW9IMP75dhA99pORTlg(Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->lambda$updateView$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->navigationBarHeight:I

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mHandler:Landroid/os/Handler;

    .line 65
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mUiThread:Ljava/lang/Thread;

    .line 66
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_47

    .line 68
    iput p2, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->tappingType:I

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10500a6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->size:I

    const-wide/16 p1, 0x0

    .line 70
    iput-wide p1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->durationTime:J

    .line 71
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3a

    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_3c

    :cond_3a
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_3c
    iput p1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->scale:F

    .line 72
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->makeView()V

    .line 73
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->getNavigationBarHeight()I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->navigationBarHeight:I

    :cond_47
    return-void
.end method

.method private synthetic lambda$clearAnimation$5()V
    .registers 3

    .line 196
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 197
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 198
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$setIgnoreView$1(Z)V
    .registers 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_10

    .line 155
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1a

    .line 158
    :cond_10
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1a
    return-void
.end method

.method private synthetic lambda$setViewOnOff$2(Z)V
    .registers 2

    if-eqz p1, :cond_9

    .line 167
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    .line 170
    :cond_9
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_10
    return-void
.end method

.method private synthetic lambda$startAnimation$3()V
    .registers 5

    .line 181
    iget-wide v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->durationTime:J

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

    .line 182
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->scale:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->scale:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->durationTime:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3f

    .line 184
    :cond_24
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->scale:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget p0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->scale:F

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_3f
    return-void
.end method

.method private synthetic lambda$stopAnimation$4()V
    .registers 3

    .line 190
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$updateView$0()V
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .registers 2

    .line 195
    new-instance v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;)V

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroy()V
    .registers 4

    const/4 v0, 0x0

    .line 203
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mContext:Landroid/content/Context;

    .line 204
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 205
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mStandbyImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 206
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 207
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 208
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final getNavigationBarHeight()I
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 216
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1050244

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0
.end method

.method public final makeView()V
    .registers 5

    .line 79
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mWindowManager:Landroid/view/WindowManager;

    .line 80
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mDisplay:Landroid/view/Display;

    .line 82
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    .line 83
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 84
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x7d6

    .line 85
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x708

    .line 86
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x3

    .line 90
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x33

    .line 91
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 93
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/4 v1, 0x1

    .line 94
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 96
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x109006e

    const/4 v3, 0x0

    .line 97
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    .line 98
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 99
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 100
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    const v3, 0x1020610

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapLayout:Landroid/widget/FrameLayout;

    .line 105
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    const v3, 0x1020615

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mStandbyImageView:Landroid/widget/ImageView;

    .line 106
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    const v3, 0x1020613

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    .line 107
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    const v3, 0x102060f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    .line 108
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    const v3, 0x1020611

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    .line 110
    iget v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->tappingType:I

    const/4 v3, 0x0

    if-eqz v0, :cond_d3

    if-eq v0, v1, :cond_a2

    goto :goto_100

    .line 122
    :cond_a2
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mStandbyImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->scale:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 127
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->scale:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 128
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->scale:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 129
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->scale:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_100

    .line 112
    :cond_d3
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mStandbyImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mStandbyImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->scale:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 117
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mStandbyImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->scale:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 118
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 119
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 136
    :goto_100
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final runOnUiThread(Ljava/lang/Runnable;)V
    .registers 4

    .line 229
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_e

    .line 230
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11

    .line 232
    :cond_e
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_11
    return-void
.end method

.method public setDurationTime(J)V
    .registers 3

    .line 176
    iput-wide p1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->durationTime:J

    return-void
.end method

.method public setIgnoreView(Z)V
    .registers 3

    .line 153
    new-instance v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setViewOnOff(Z)V
    .registers 3

    .line 165
    new-instance v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startAnimation()V
    .registers 2

    .line 180
    new-instance v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;)V

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopAnimation()V
    .registers 2

    .line 189
    new-instance v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;)V

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateView(FF)V
    .registers 5

    .line 140
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    .line 141
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int p1, p1

    iget v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->size:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->navigationBarHeight:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_21

    .line 143
    :cond_17
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int p1, p1

    iget v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->size:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 145
    :goto_21
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int p2, p2

    iget v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->size:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 147
    new-instance p1, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;)V

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
