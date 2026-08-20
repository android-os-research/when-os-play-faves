.class public Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;
.super Ljava/lang/Object;
.source "CornerActionCircleCue.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CornerActionCircleCue"

.field public static final TYPE_CORNER_ACTION_PROGRESS:I = 0x0

.field public static final TYPE_DRAG_ACTION_POINT:I = 0x1


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDisplay:Landroid/view/Display;

.field public mDragPointImageView:Landroid/widget/ImageView;

.field public mDurationTime:J

.field public final mHandler:Landroid/os/Handler;

.field public mNavigationBarHeight:I

.field public mParams:Landroid/view/WindowManager$LayoutParams;

.field public mProgressImageView:Landroid/widget/ImageView;

.field public mScale:F

.field public mStandbyImageView:Landroid/widget/ImageView;

.field public mType:I

.field public mUiThread:Ljava/lang/Thread;

.field public mView:Landroid/view/View;

.field public mWidth:I

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$7sRInKzyWeaFGUJDb1aECdrBP_8(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->lambda$setViewOnOff$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$XRzL-2kWOr0iUb9LG-Vc5DauKhg(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->lambda$clearAnimation$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZBGpuekMN15VbvK4-DXW8J-F5EU(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->lambda$startAnimation$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$b7nNBfVnedeB_N_BCE23TJyvYmM(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;FF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->lambda$updateView$0(FF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mNavigationBarHeight:I

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mHandler:Landroid/os/Handler;

    .line 65
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mUiThread:Ljava/lang/Thread;

    .line 66
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_38

    .line 68
    iput p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mType:I

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_27

    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_29

    :cond_27
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_29
    iput p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mScale:F

    const-wide/16 p1, 0x0

    .line 70
    iput-wide p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mDurationTime:J

    .line 71
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->makeView()V

    .line 72
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->getNavigationBarHeight()I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mNavigationBarHeight:I

    :cond_38
    return-void
.end method

.method private synthetic lambda$clearAnimation$3()V
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mProgressImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 166
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mProgressImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 167
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$setViewOnOff$1(Z)V
    .registers 2

    if-eqz p1, :cond_9

    .line 144
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    .line 146
    :cond_9
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_10
    return-void
.end method

.method private synthetic lambda$startAnimation$2()V
    .registers 4

    .line 157
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mProgressImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mScale:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mScale:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mDurationTime:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$updateView$0(FF)V
    .registers 5

    .line 131
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    .line 132
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int p1, p1

    iget v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mNavigationBarHeight:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_21

    .line 134
    :cond_17
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int p1, p1

    iget v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 136
    :goto_21
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int p2, p2

    iget v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 137
    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    invoke-interface {p2, p0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .registers 2

    .line 172
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public clearAnimation()V
    .registers 2

    .line 163
    new-instance v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;)V

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mContext:Landroid/content/Context;

    .line 177
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 41
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final getNavigationBarHeight()I
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101b5

    .line 182
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 186
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1050244

    .line 187
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0
.end method

.method public final makeView()V
    .registers 6

    .line 77
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mWindowManager:Landroid/view/WindowManager;

    .line 78
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mDisplay:Landroid/view/Display;

    .line 80
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    .line 81
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 82
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x7e8

    .line 83
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x718

    .line 84
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x3

    .line 89
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x33

    .line 90
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 91
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/4 v1, 0x1

    .line 92
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 94
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x109006e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    .line 95
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 96
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 97
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    const v3, 0x102060f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 100
    iget-object v3, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    const v4, 0x1020611

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 101
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    const v3, 0x1020615

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mStandbyImageView:Landroid/widget/ImageView;

    .line 105
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    const v3, 0x1020613

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mProgressImageView:Landroid/widget/ImageView;

    .line 106
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    const v3, 0x1020612

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mDragPointImageView:Landroid/widget/ImageView;

    .line 108
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mStandbyImageView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mScale:F

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 109
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mStandbyImageView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mScale:F

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 110
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mProgressImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 111
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 113
    iget v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mType:I

    const/4 v3, 0x0

    if-nez v0, :cond_c8

    .line 114
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mStandbyImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mDragPointImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_d9

    :cond_c8
    if-ne v0, v1, :cond_d9

    .line 118
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mStandbyImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mDragPointImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    :cond_d9
    :goto_d9
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    invoke-virtual {v0, v3, v3}, Landroid/view/View;->measure(II)V

    .line 124
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mWidth:I

    .line 126
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final runOnUiThread(Ljava/lang/Runnable;)V
    .registers 4

    .line 200
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_e

    .line 201
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11

    .line 203
    :cond_e
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_11
    return-void
.end method

.method public setDurationTime(J)V
    .registers 3

    .line 152
    iput-wide p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mDurationTime:J

    return-void
.end method

.method public setViewOnOff(Z)V
    .registers 3

    .line 142
    new-instance v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startAnimation()V
    .registers 2

    .line 156
    new-instance v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;)V

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateView(FF)V
    .registers 4

    .line 130
    new-instance v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;FF)V

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
