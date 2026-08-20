.class public Landroid/graphics/drawable/DrawableContainer;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableContainer.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;,
        Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o DEFAULT_DITHER:Z = true

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DrawableContainer"


# instance fields
.field private greylist-max-o mAlpha:I

.field private greylist-max-o mAnimationRunnable:Ljava/lang/Runnable;

.field private greylist-max-o mBlockInvalidateCallback:Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

.field private greylist-max-o mCurIndex:I

.field private greylist-max-o mCurrDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

.field private greylist-max-o mEnterAnimationEnd:J

.field private greylist-max-o mExitAnimationEnd:J

.field private greylist-max-o mHasAlpha:Z

.field private greylist-max-o mHotspotBounds:Landroid/graphics/Rect;

.field private greylist mLastDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mLastIndex:I

.field private greylist-max-o mMutated:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 65
    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    .line 71
    iput v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastIndex:I

    return-void
.end method

.method private greylist-max-o initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 524
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    if-nez v0, :cond_c

    .line 525
    new-instance v0, Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;-><init>(Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback-IA;)V

    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    .line 531
    :cond_c
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->wrap(Landroid/graphics/drawable/Drawable$Callback;)Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 534
    :try_start_19
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    if-gtz v0, :cond_28

    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    if-eqz v0, :cond_28

    .line 535
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 538
    :cond_28
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    if-eqz v0, :cond_36

    .line 540
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_50

    .line 542
    :cond_36
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    if-eqz v0, :cond_43

    .line 543
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 545
    :cond_43
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    if-eqz v0, :cond_50

    .line 546
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 550
    :cond_50
    :goto_50
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 551
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 552
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 553
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 554
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 555
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 556
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 558
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    .line 559
    .local v0, "hotspotBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_91

    .line 560
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V
    :try_end_91
    .catchall {:try_start_19 .. :try_end_91} :catchall_9c

    .line 564
    .end local v0    # "hotspotBounds":Landroid/graphics/Rect;
    :cond_91
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->unwrap()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 565
    nop

    .line 566
    return-void

    .line 564
    :catchall_9c
    move-exception v0

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    invoke-virtual {v1}, Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->unwrap()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 565
    throw v0
.end method

.method private greylist-max-o needsMirroring()Z
    .registers 3

    .line 101
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->isAutoMirrored()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method


# virtual methods
.method greylist-max-o animate(Z)V
    .registers 13
    .param p1, "schedule"    # Z

    .line 569
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    .line 571
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 572
    .local v0, "now":J
    const/4 v2, 0x0

    .line 573
    .local v2, "animating":Z
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    const-wide/16 v4, 0xff

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_38

    .line 574
    iget-wide v8, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v10, v8, v6

    if-eqz v10, :cond_3a

    .line 575
    cmp-long v10, v8, v0

    if-gtz v10, :cond_22

    .line 576
    iget v8, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 577
    iput-wide v6, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    goto :goto_3a

    .line 579
    :cond_22
    sub-long/2addr v8, v0

    mul-long/2addr v8, v4

    long-to-int v3, v8

    iget-object v8, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v8, v8, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    div-int/2addr v3, v8

    .line 581
    .local v3, "animAlpha":I
    iget-object v8, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    rsub-int v9, v3, 0xff

    iget v10, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    mul-int/2addr v9, v10

    div-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 582
    const/4 v2, 0x1

    .line 583
    .end local v3    # "animAlpha":I
    goto :goto_3a

    .line 586
    :cond_38
    iput-wide v6, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 588
    :cond_3a
    :goto_3a
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_69

    .line 589
    iget-wide v8, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v10, v8, v6

    if-eqz v10, :cond_6b

    .line 590
    cmp-long v10, v8, v0

    if-gtz v10, :cond_55

    .line 591
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 592
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 593
    const/4 v3, -0x1

    iput v3, p0, Landroid/graphics/drawable/DrawableContainer;->mLastIndex:I

    .line 594
    iput-wide v6, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    goto :goto_6b

    .line 596
    :cond_55
    sub-long/2addr v8, v0

    mul-long/2addr v8, v4

    long-to-int v3, v8

    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v4, v4, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    div-int/2addr v3, v4

    .line 598
    .restart local v3    # "animAlpha":I
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    mul-int/2addr v5, v3

    div-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 599
    const/4 v2, 0x1

    .line 600
    .end local v3    # "animAlpha":I
    goto :goto_6b

    .line 603
    :cond_69
    iput-wide v6, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 606
    :cond_6b
    :goto_6b
    if-eqz p1, :cond_77

    if-eqz v2, :cond_77

    .line 607
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x10

    add-long/2addr v4, v0

    invoke-virtual {p0, v3, v4, v5}, Landroid/graphics/drawable/DrawableContainer;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 609
    :cond_77
    return-void
.end method

.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 3
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .line 630
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 631
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .registers 2

    .line 635
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o clearMutated()V
    .registers 2

    .line 672
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 673
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->clearMutated()V

    .line 674
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer;->mMutated:Z

    .line 675
    return-void
.end method

.method greylist-max-o cloneConstantState()Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .registers 2

    .line 665
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    return-object v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 86
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 87
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 89
    :cond_7
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 90
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 92
    :cond_e
    return-void
.end method

.method public whitelist getAlpha()I
    .registers 2

    .line 159
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 3

    .line 96
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 97
    invoke-virtual {v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    .line 96
    return v0
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .line 640
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 641
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    .line 642
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    return-object v0

    .line 644
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 613
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public greylist-max-o getCurrentIndex()I
    .registers 2

    .line 443
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    return v0
.end method

.method public whitelist getHotspotBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 322
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_8

    .line 323
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_b

    .line 325
    :cond_8
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    .line 327
    :goto_b
    return-void
.end method

.method public whitelist getIntrinsicHeight()I
    .registers 2

    .line 368
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 369
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantHeight()I

    move-result v0

    return v0

    .line 371
    :cond_f
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, -0x1

    :goto_19
    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .registers 2

    .line 360
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 361
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantWidth()I

    move-result v0

    return v0

    .line 363
    :cond_f
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, -0x1

    :goto_19
    return v0
.end method

.method public whitelist getMinimumHeight()I
    .registers 2

    .line 384
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 385
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantMinimumHeight()I

    move-result v0

    return v0

    .line 387
    :cond_f
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public whitelist getMinimumWidth()I
    .registers 2

    .line 376
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 377
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantMinimumWidth()I

    move-result v0

    return v0

    .line 379
    :cond_f
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public whitelist getOpacity()I
    .registers 2

    .line 432
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_12

    .line 433
    :cond_b
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getOpacity()I

    move-result v0

    goto :goto_13

    .line 432
    :cond_12
    :goto_12
    const/4 v0, -0x2

    :goto_13
    return v0
.end method

.method public whitelist getOpticalInsets()Landroid/graphics/Insets;
    .registers 2

    .line 129
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 130
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    return-object v0

    .line 132
    :cond_9
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .registers 3
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 137
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 138
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 140
    :cond_7
    return-void
.end method

.method public whitelist getPadding(Landroid/graphics/Rect;)Z
    .registers 6
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 106
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 108
    .local v0, "r":Landroid/graphics/Rect;
    if-eqz v0, :cond_1c

    .line 109
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 110
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    or-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    or-int/2addr v1, v2

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .local v1, "result":Z
    :goto_1b
    goto :goto_29

    .line 112
    .end local v1    # "result":Z
    :cond_1c
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_25

    .line 113
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    .restart local v1    # "result":Z
    goto :goto_29

    .line 115
    .end local v1    # "result":Z
    :cond_25
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    .line 118
    .restart local v1    # "result":Z
    :goto_29
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;->needsMirroring()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 119
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 120
    .local v2, "left":I
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 121
    .local v3, "right":I
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 122
    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 124
    .end local v2    # "left":I
    .end local v3    # "right":I
    :cond_37
    return v1
.end method

.method public whitelist hasFocusStateSpecified()Z
    .registers 2

    .line 248
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 249
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->hasFocusStateSpecified()Z

    move-result v0

    return v0

    .line 251
    :cond_9
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    .line 252
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->hasFocusStateSpecified()Z

    move-result v0

    return v0

    .line 254
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 395
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v0, :cond_7

    .line 396
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->invalidateCache()V

    .line 399
    :cond_7
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_18

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 400
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    :cond_18
    return-void
.end method

.method public whitelist isAutoMirrored()Z
    .registers 2

    .line 269
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    return v0
.end method

.method public whitelist isStateful()Z
    .registers 2

    .line 243
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public whitelist jumpToCurrentState()V
    .registers 6

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    .line 276
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 277
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 278
    const/4 v1, -0x1

    iput v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastIndex:I

    .line 279
    const/4 v0, 0x1

    .line 281
    :cond_f
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_21

    .line 282
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 283
    iget-boolean v1, p0, Landroid/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    if-eqz v1, :cond_21

    .line 284
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 287
    :cond_21
    iget-wide v1, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2c

    .line 288
    iput-wide v3, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 289
    const/4 v0, 0x1

    .line 291
    :cond_2c
    iget-wide v1, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_35

    .line 292
    iput-wide v3, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 293
    const/4 v0, 0x1

    .line 295
    :cond_35
    if-eqz v0, :cond_3a

    .line 296
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->invalidateSelf()V

    .line 298
    :cond_3a
    return-void
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 649
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer;->mMutated:Z

    if-nez v0, :cond_17

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_17

    .line 650
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->cloneConstantState()Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    move-result-object v0

    .line 651
    .local v0, "clone":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    invoke-static {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->-$$Nest$mmutate(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 652
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableContainer;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 653
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/drawable/DrawableContainer;->mMutated:Z

    .line 655
    .end local v0    # "clone":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    :cond_17
    return-object p0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 233
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 234
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 236
    :cond_7
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 237
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 239
    :cond_e
    return-void
.end method

.method public whitelist onLayoutDirectionChanged(I)Z
    .registers 4
    .param p1, "layoutDirection"    # I

    .line 355
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->setLayoutDirection(II)Z

    move-result v0

    return v0
.end method

.method protected whitelist onLevelChange(I)Z
    .registers 3
    .param p1, "level"    # I

    .line 342
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 343
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0

    .line 345
    :cond_9
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    .line 346
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0

    .line 348
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onStateChange([I)Z
    .registers 3
    .param p1, "state"    # [I

    .line 331
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 332
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0

    .line 334
    :cond_9
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    .line 335
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0

    .line 337
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 406
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 407
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 409
    :cond_11
    return-void
.end method

.method public whitelist selectDrawable(I)Z
    .registers 10
    .param p1, "index"    # I

    .line 456
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    .line 457
    return v1

    .line 460
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 466
    .local v2, "now":J
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-lez v0, :cond_35

    .line 467
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1b

    .line 468
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 470
    :cond_1b
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2e

    .line 471
    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 472
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    iput v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastIndex:I

    .line 473
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    goto :goto_3c

    .line 475
    :cond_2e
    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 476
    iput v4, p0, Landroid/graphics/drawable/DrawableContainer;->mLastIndex:I

    .line 477
    iput-wide v6, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    goto :goto_3c

    .line 479
    :cond_35
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3c

    .line 480
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 483
    :cond_3c
    :goto_3c
    if-ltz p1, :cond_62

    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    if-ge p1, v0, :cond_62

    .line 484
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 485
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 486
    iput p1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    .line 487
    if-eqz v0, :cond_61

    .line 488
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    if-lez v1, :cond_5e

    .line 489
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    int-to-long v4, v1

    add-long/2addr v4, v2

    iput-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 491
    :cond_5e
    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableContainer;->initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    .line 493
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_61
    goto :goto_66

    .line 494
    :cond_62
    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 495
    iput v4, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    .line 498
    :goto_66
    iget-wide v0, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v0, v0, v6

    const/4 v1, 0x1

    if-nez v0, :cond_73

    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_85

    .line 499
    :cond_73
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_7f

    .line 500
    new-instance v0, Landroid/graphics/drawable/DrawableContainer$1;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/DrawableContainer$1;-><init>(Landroid/graphics/drawable/DrawableContainer;)V

    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    goto :goto_82

    .line 507
    :cond_7f
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableContainer;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 510
    :goto_82
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/DrawableContainer;->animate(Z)V

    .line 513
    :cond_85
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->invalidateSelf()V

    .line 515
    return v1
.end method

.method public whitelist setAlpha(I)V
    .registers 7
    .param p1, "alpha"    # I

    .line 144
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    if-eqz v0, :cond_8

    iget v0, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    if-eq v0, p1, :cond_21

    .line 145
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    .line 146
    iput p1, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    .line 147
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_21

    .line 148
    iget-wide v1, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1d

    .line 149
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_21

    .line 151
    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableContainer;->animate(Z)V

    .line 155
    :cond_21
    :goto_21
    return-void
.end method

.method public whitelist setAutoMirrored(Z)V
    .registers 4
    .param p1, "mirrored"    # Z

    .line 259
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    if-eq v0, p1, :cond_15

    .line 260
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-boolean p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    .line 261
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    .line 262
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 265
    :cond_15
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 4
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 174
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    .line 176
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_16

    .line 177
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-object p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 179
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    .line 180
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 183
    :cond_16
    return-void
.end method

.method protected whitelist setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .registers 3
    .param p1, "state"    # Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 1229
    iput-object p1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 1232
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    if-ltz v0, :cond_11

    .line 1233
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 1234
    if-eqz v0, :cond_11

    .line 1235
    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableContainer;->initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    .line 1241
    :cond_11
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastIndex:I

    .line 1242
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 1243
    return-void
.end method

.method public greylist-max-o setCurrentIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .line 438
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->selectDrawable(I)Z

    .line 439
    return-void
.end method

.method public whitelist setDither(Z)V
    .registers 4
    .param p1, "dither"    # Z

    .line 164
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    if-eq v0, p1, :cond_15

    .line 165
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-boolean p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 166
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    .line 167
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 170
    :cond_15
    return-void
.end method

.method public whitelist setEnterFadeDuration(I)V
    .registers 3
    .param p1, "ms"    # I

    .line 218
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 219
    return-void
.end method

.method public whitelist setExitFadeDuration(I)V
    .registers 3
    .param p1, "ms"    # I

    .line 228
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 229
    return-void
.end method

.method public whitelist setHotspot(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 302
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 303
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 305
    :cond_7
    return-void
.end method

.method public whitelist setHotspotBounds(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 309
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_c

    .line 310
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    goto :goto_f

    .line 312
    :cond_c
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 315
    :goto_f
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    .line 316
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 318
    :cond_16
    return-void
.end method

.method public whitelist setTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 4
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;

    .line 200
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    .line 202
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mBlendMode:Landroid/graphics/BlendMode;

    if-eq v0, p1, :cond_16

    .line 203
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-object p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 205
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    .line 206
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 209
    :cond_16
    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 187
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    .line 189
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_16

    .line 190
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-object p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    .line 192
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    .line 193
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 196
    :cond_16
    return-void
.end method

.method public whitelist setVisible(ZZ)Z
    .registers 5
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 420
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 421
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b

    .line 422
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 424
    :cond_b
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_12

    .line 425
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 427
    :cond_12
    return v0
.end method

.method public whitelist unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 413
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 414
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 416
    :cond_11
    return-void
.end method

.method protected final greylist-max-o updateDensity(Landroid/content/res/Resources;)V
    .registers 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 625
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->updateDensity(Landroid/content/res/Resources;)V

    .line 626
    return-void
.end method
