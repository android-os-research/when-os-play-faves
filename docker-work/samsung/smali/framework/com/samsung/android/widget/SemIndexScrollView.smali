.class public Lcom/samsung/android/widget/SemIndexScrollView;
.super Landroid/widget/FrameLayout;
.source "SemIndexScrollView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;,
        Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;,
        Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;,
        Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist GRAVITY_INDEX_BAR_LEFT:I = 0x0

.field public static final whitelist GRAVITY_INDEX_BAR_RIGHT:I = 0x1

.field private static final blacklist OUT_OF_BOUNDARY:F = -9999.0f

.field private static final blacklist TAG:Ljava/lang/String; = "SemIndexScrollView"

.field private static final blacklist TRANSPARENCY_VALUE:F = 0.8f


# instance fields
.field private final blacklist debug:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentIndex:Ljava/lang/String;

.field private blacklist mHasOverlayChild:Z

.field private blacklist mIndexBarGravity:I

.field blacklist mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

.field private blacklist mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

.field private blacklist mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

.field private final blacklist mIndexerObserver:Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

.field private blacklist mIsSimpleIndexScroll:Z

.field private blacklist mNumberOfLanguages:I

.field private blacklist mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

.field private final blacklist mPreviewDelayRunnable:Ljava/lang/Runnable;

.field private blacklist mRegisteredDataSetObserver:Z

.field private blacklist mSECRobotoLightRegularFont:Landroid/graphics/Typeface;

.field private blacklist mStartTouchDown:J

.field private blacklist mTouchY:F

.field private blacklist mViewGroupOverlay:Landroid/view/ViewGroupOverlay;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIndexBarGravity(Lcom/samsung/android/widget/SemIndexScrollView;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexBarGravity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIndexScrollPreview(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIndexer(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemAbstractIndexer;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumberOfLanguages(Lcom/samsung/android/widget/SemIndexScrollView;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mNumberOfLanguages:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnIndexBarEventListener(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviewDelayRunnable(Lcom/samsung/android/widget/SemIndexScrollView;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mPreviewDelayRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSECRobotoLightRegularFont(Lcom/samsung/android/widget/SemIndexScrollView;)Landroid/graphics/Typeface;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mSECRobotoLightRegularFont:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartTouchDown(Lcom/samsung/android/widget/SemIndexScrollView;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mStartTouchDown:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTouchY(Lcom/samsung/android/widget/SemIndexScrollView;)F
    .registers 1

    iget p0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mTouchY:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSECRobotoLightRegularFont(Lcom/samsung/android/widget/SemIndexScrollView;Landroid/graphics/Typeface;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mSECRobotoLightRegularFont:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->debug:Z

    .line 86
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexBarGravity:I

    .line 92
    new-instance v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;-><init>(Lcom/samsung/android/widget/SemIndexScrollView;)V

    iput-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexerObserver:Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    .line 97
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIsSimpleIndexScroll:Z

    .line 102
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    .line 103
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 114
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    .line 124
    const v0, -0x39e3c400    # -9999.0f

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mTouchY:F

    .line 125
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mStartTouchDown:J

    .line 1773
    new-instance v0, Lcom/samsung/android/widget/SemIndexScrollView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemIndexScrollView$1;-><init>(Lcom/samsung/android/widget/SemIndexScrollView;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mPreviewDelayRunnable:Ljava/lang/Runnable;

    .line 139
    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mContext:Landroid/content/Context;

    .line 140
    iput-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 141
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexBarGravity:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemIndexScrollView;->init(Landroid/content/Context;I)V

    .line 142
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->debug:Z

    .line 86
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexBarGravity:I

    .line 92
    new-instance v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    invoke-direct {v2, p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;-><init>(Lcom/samsung/android/widget/SemIndexScrollView;)V

    iput-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexerObserver:Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    .line 97
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIsSimpleIndexScroll:Z

    .line 102
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    .line 103
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 114
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    .line 124
    const v0, -0x39e3c400    # -9999.0f

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mTouchY:F

    .line 125
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mStartTouchDown:J

    .line 1773
    new-instance v0, Lcom/samsung/android/widget/SemIndexScrollView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemIndexScrollView$1;-><init>(Lcom/samsung/android/widget/SemIndexScrollView;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mPreviewDelayRunnable:Ljava/lang/Runnable;

    .line 156
    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mContext:Landroid/content/Context;

    .line 157
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexBarGravity:I

    .line 158
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/widget/SemIndexScrollView;->init(Landroid/content/Context;I)V

    .line 159
    return-void
.end method

.method private blacklist getFirstAlphabetCharacterIndex()I
    .registers 5

    .line 603
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getCurrentLang()I

    move-result v0

    .line 604
    .local v0, "currentLang":I
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    .line 605
    .local v1, "indexerAlphabetSize":I
    const/4 v2, 0x0

    .line 607
    .local v2, "index":I
    :goto_e
    if-ge v2, v1, :cond_1b

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v3, v2}, Lcom/samsung/android/widget/SemAbstractIndexer;->getLangbyIndex(I)I

    move-result v3

    if-eq v0, v3, :cond_1b

    .line 608
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 611
    :cond_1b
    if-ge v2, v1, :cond_1e

    .line 612
    return v2

    .line 614
    :cond_1e
    const/4 v3, -0x1

    return v3
.end method

.method private blacklist getLastAlphabetCharacterIndex()I
    .registers 6

    .line 625
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 626
    return v1

    .line 629
    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getCurrentLang()I

    move-result v0

    .line 630
    .local v0, "currentLang":I
    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    .line 631
    .local v2, "indexerAlphabetSize":I
    add-int/lit8 v3, v2, -0x1

    .line 632
    .local v3, "index":I
    :goto_13
    if-ltz v3, :cond_22

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-eqz v4, :cond_22

    invoke-virtual {v4, v3}, Lcom/samsung/android/widget/SemAbstractIndexer;->getLangbyIndex(I)I

    move-result v4

    if-eq v0, v4, :cond_22

    .line 633
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .line 636
    :cond_22
    if-lez v3, :cond_29

    .line 637
    sub-int v1, v2, v3

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 639
    :cond_29
    return v1
.end method

.method private blacklist getListViewPosition(Ljava/lang/String;)I
    .registers 4
    .param p1, "indexPath"    # Ljava/lang/String;

    .line 414
    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-eqz v0, :cond_11

    .line 415
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->getCachingValue(I)I

    move-result v0

    return v0

    .line 417
    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist handleMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 479
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 480
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 481
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 486
    .local v2, "x":F
    const/4 v3, -0x1

    .line 487
    .local v3, "position":I
    const/4 v4, -0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_130

    .line 591
    return v5

    .line 519
    :pswitch_13
    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    float-to-int v6, v2

    float-to-int v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v5

    .line 524
    .local v5, "calculatedIndexStr":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v6, :cond_42

    if-nez v5, :cond_42

    iget-boolean v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIsSimpleIndexScroll:Z

    if-nez v7, :cond_42

    .line 528
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    float-to-int v7, v2

    float-to-int v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v5

    .line 536
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    float-to-int v7, v2

    float-to-int v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 537
    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v3

    .line 538
    if-eq v3, v4, :cond_12b

    .line 539
    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemIndexScrollView;->notifyIndexChange(I)V

    goto/16 :goto_12b

    .line 546
    :cond_42
    if-eqz v6, :cond_72

    if-eqz v5, :cond_72

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_72

    .line 547
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    float-to-int v7, v2

    float-to-int v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 548
    iget-boolean v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIsSimpleIndexScroll:Z

    if-nez v7, :cond_65

    .line 549
    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v3

    goto :goto_6b

    .line 551
    :cond_65
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v3

    .line 553
    :goto_6b
    if-eq v3, v4, :cond_12b

    .line 554
    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemIndexScrollView;->notifyIndexChange(I)V

    goto/16 :goto_12b

    .line 558
    :cond_72
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    float-to-int v7, v2

    float-to-int v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 561
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->isAlphabetInit()Z

    move-result v6

    if-eqz v6, :cond_9c

    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v6, :cond_9c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9c

    .line 562
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setEffectText(Ljava/lang/String;)V

    .line 563
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v6, v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->drawEffect(F)V

    .line 564
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mTouchY:F

    .line 567
    :cond_9c
    iget-boolean v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIsSimpleIndexScroll:Z

    if-nez v6, :cond_a7

    .line 568
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v3

    goto :goto_ad

    .line 570
    :cond_a7
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v3

    .line 572
    :goto_ad
    if-eq v3, v4, :cond_12b

    .line 573
    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemIndexScrollView;->notifyIndexChange(I)V

    goto/16 :goto_12b

    .line 581
    .end local v5    # "calculatedIndexStr":Ljava/lang/String;
    :pswitch_b4
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 582
    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->resetSelectedIndex()V

    .line 583
    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->close()V

    .line 584
    const v4, -0x39e3c400    # -9999.0f

    iput v4, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mTouchY:F

    .line 586
    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    if-eqz v4, :cond_12b

    .line 587
    invoke-interface {v4, v1}, Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;->onReleased(F)V

    goto :goto_12b

    .line 491
    :pswitch_ce
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    float-to-int v7, v2

    float-to-int v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mStartTouchDown:J

    .line 493
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-nez v6, :cond_e3

    .line 494
    return v5

    .line 497
    :cond_e3
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->isAlphabetInit()Z

    move-result v6

    if-eqz v6, :cond_115

    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v6, :cond_115

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_115

    .line 498
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setEffectText(Ljava/lang/String;)V

    .line 499
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v6, v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->drawEffect(F)V

    .line 500
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getHeight()I

    move-result v8

    invoke-virtual {v6, v5, v5, v7, v8}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->setLayout(IIII)V

    .line 501
    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->invalidate()V

    .line 502
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mTouchY:F

    .line 505
    :cond_115
    iget-boolean v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIsSimpleIndexScroll:Z

    if-nez v5, :cond_120

    .line 506
    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v3

    goto :goto_126

    .line 509
    :cond_120
    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v3

    .line 511
    :goto_126
    if-eq v3, v4, :cond_12b

    .line 512
    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemIndexScrollView;->notifyIndexChange(I)V

    .line 593
    :cond_12b
    :goto_12b
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->invalidate()V

    .line 594
    const/4 v4, 0x1

    return v4

    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_ce
        :pswitch_b4
        :pswitch_13
        :pswitch_b4
    .end packed-switch
.end method

.method private blacklist init(Landroid/content/Context;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gravity"    # I

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    .line 171
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    if-nez v0, :cond_26

    .line 172
    new-instance v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;-><init>(Lcom/samsung/android/widget/SemIndexScrollView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->setLayout(IIII)V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 176
    :cond_26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    .line 178
    new-instance v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getWidth()I

    move-result v5

    move-object v1, v0

    move-object v2, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;-><init>(Lcom/samsung/android/widget/SemIndexScrollView;Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    .line 179
    return-void
.end method

.method private blacklist notifyIndexChange(I)V
    .registers 3
    .param p1, "pos"    # I

    .line 661
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    if-eqz v0, :cond_7

    .line 662
    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;->onIndexChanged(I)V

    .line 664
    :cond_7
    return-void
.end method

.method private blacklist setSimpleIndexWidth(I)V
    .registers 3
    .param p1, "width"    # I

    .line 285
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    if-eqz v0, :cond_7

    .line 286
    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setSimpleIndexScrollWidth(I)V

    .line 288
    :cond_7
    return-void
.end method


# virtual methods
.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 187
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    if-nez v0, :cond_8

    .line 191
    return-void

    .line 194
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setDimensions(II)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    if-eqz v0, :cond_32

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->setLayout(IIII)V

    .line 198
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->invalidate()V

    .line 201
    :cond_32
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->isAlphabetInit()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 202
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->draw(Landroid/graphics/Canvas;)V

    .line 204
    :cond_41
    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 322
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 324
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 325
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 326
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    .line 329
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-eqz v0, :cond_20

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    if-nez v2, :cond_20

    .line 330
    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexerObserver:Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemAbstractIndexer;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 331
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 333
    :cond_20
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 4

    .line 297
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 299
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 300
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 301
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mHasOverlayChild:Z

    .line 304
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-eqz v0, :cond_20

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    if-eqz v2, :cond_20

    .line 305
    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexerObserver:Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemAbstractIndexer;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 306
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 309
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mPreviewDelayRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_27

    .line 310
    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemIndexScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 312
    :cond_27
    return-void
.end method

.method public whitelist onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .line 1977
    return-void
.end method

.method public whitelist onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .line 1988
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 653
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 654
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 446
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 447
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemIndexScrollView;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist setEffectBackgroundColor(I)V
    .registers 5
    .param p1, "effectBackgroundColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v1, p1, v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-$$Nest$mgetColorWithAlpha(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;IF)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->setBackgroundColor(I)V

    .line 394
    return-void
.end method

.method public whitelist setEffectTextColor(I)V
    .registers 3
    .param p1, "effectTextColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->setTextColor(I)V

    .line 382
    return-void
.end method

.method public whitelist setIndexBarBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "bgDrawable"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-$$Nest$fputmBgDrawableDefault(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;Landroid/graphics/drawable/Drawable;)V

    .line 345
    return-void
.end method

.method public whitelist setIndexBarGravity(I)V
    .registers 3
    .param p1, "gravity"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 404
    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexBarGravity:I

    .line 405
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setPosition(I)V

    .line 406
    return-void
.end method

.method public whitelist setIndexBarPressedTextColor(I)V
    .registers 4
    .param p1, "pressedTextColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-$$Nest$fgetmScrollThumbBgDrawable(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 369
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-$$Nest$fputmThumbColor(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;I)V

    .line 370
    return-void
.end method

.method public whitelist setIndexBarTextColor(I)V
    .registers 3
    .param p1, "textColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-$$Nest$fputmTextColorDimmed(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;I)V

    .line 357
    return-void
.end method

.method public whitelist setIndexScrollMargin(II)V
    .registers 4
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    if-eqz v0, :cond_7

    .line 432
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setIndexScrollBgMargin(II)V

    .line 434
    :cond_7
    return-void
.end method

.method public whitelist setIndexer(Lcom/samsung/android/widget/SemAbstractIndexer;)V
    .registers 6
    .param p1, "indexer"    # Lcom/samsung/android/widget/SemAbstractIndexer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 215
    if-eqz p1, :cond_67

    .line 219
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    if-eqz v2, :cond_12

    .line 220
    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexerObserver:Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemAbstractIndexer;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 221
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 224
    :cond_12
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIsSimpleIndexScroll:Z

    .line 225
    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    .line 226
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexerObserver:Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;

    invoke-virtual {p1, v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 229
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-$$Nest$fgetmScrollThumbBgDrawable(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 230
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-$$Nest$fgetmScrollThumbBgDrawable(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-$$Nest$fgetmThumbColor(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 233
    :cond_37
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->cacheIndexInfo()V

    .line 234
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getFirstAlphabetCharacterIndex()I

    move-result v2

    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView;->getLastAlphabetCharacterIndex()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    .line 236
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIsSimpleIndexScroll:Z

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    if-eqz v0, :cond_66

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 237
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexer:Lcom/samsung/android/widget/SemAbstractIndexer;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mNumberOfLanguages:I

    .line 239
    :cond_66
    return-void

    .line 216
    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SemIndexView.setIndexer(indexer) : indexer=null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnIndexBarEventListener(Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;)V
    .registers 2
    .param p1, "iOnIndexBarEventListener"    # Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 674
    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    .line 675
    return-void
.end method

.method public whitelist setSimpleIndexScroll([Ljava/lang/String;I)V
    .registers 7
    .param p1, "indexBarChar"    # [Ljava/lang/String;
    .param p2, "width"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    if-eqz p1, :cond_3b

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIsSimpleIndexScroll:Z

    .line 263
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 264
    .local v0, "rsrc":Landroid/content/res/Resources;
    const v1, 0x10503fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemIndexScrollView;->setSimpleIndexWidth(I)V

    .line 266
    if-eqz p2, :cond_1b

    .line 267
    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemIndexScrollView;->setSimpleIndexWidth(I)V

    .line 270
    :cond_1b
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-$$Nest$fgetmScrollThumbBgDrawable(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 271
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-$$Nest$fgetmScrollThumbBgDrawable(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-static {v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->-$$Nest$fgetmThumbColor(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 274
    :cond_34
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView;->mIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2, v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    .line 276
    return-void

    .line 256
    .end local v0    # "rsrc":Landroid/content/res/Resources;
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SemIndexView.setSimpleIndexScroll(indexBarChar)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
