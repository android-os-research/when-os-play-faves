.class Landroid/widget/SemFastScroller;
.super Ljava/lang/Object;
.source "SemFastScroller.java"


# static fields
.field private static blacklist BOTTOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DURATION_CROSS_FADE:I = 0x0

.field private static final blacklist DURATION_FADE_IN:I = 0xa7

.field private static final blacklist DURATION_FADE_OUT:I = 0xa7

.field private static final blacklist DURATION_RESIZE:I = 0x64

.field public static final blacklist EFFECT_STATE_CLOSE:I = 0x0

.field public static final blacklist EFFECT_STATE_OPEN:I = 0x1

.field private static final blacklist FADE_TIMEOUT:J = 0x9c4L

.field private static final blacklist FASTSCROLL_VIBRATE_INDEX:I = 0x1a

.field private static blacklist LEFT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MIN_PAGES:I = 0x1

.field private static final blacklist OVERLAY_ABOVE_THUMB:I = 0x2

.field private static final blacklist OVERLAY_AT_THUMB:I = 0x1

.field private static final blacklist OVERLAY_FLOATING:I = 0x0

.field private static final blacklist PREVIEW_LEFT:I = 0x0

.field private static final blacklist PREVIEW_RIGHT:I = 0x1

.field private static blacklist RIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist STATE_DRAGGING:I = 0x2

.field private static final blacklist STATE_NONE:I = 0x0

.field private static final blacklist STATE_VISIBLE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SemFastScroller"

.field private static final blacklist TAP_TIMEOUT:J

.field private static final blacklist THUMB_POSITION_INSIDE:I = 0x1

.field private static final blacklist THUMB_POSITION_MIDPOINT:I

.field private static blacklist TOP:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAdditionalBottomPadding:I

.field private blacklist mAdditionalTouchArea:F

.field private blacklist mAlwaysShow:Z

.field private blacklist mColorPrimary:I

.field private final blacklist mContainerRect:Landroid/graphics/Rect;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentSection:I

.field private blacklist mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final blacklist mDeferHide:Ljava/lang/Runnable;

.field private blacklist mEffectState:I

.field private blacklist mEnabled:Z

.field private blacklist mFirstVisibleItem:I

.field private blacklist mHeaderCount:I

.field private blacklist mInitialTouchY:F

.field private blacklist mLayoutFromRight:Z

.field private final blacklist mList:Landroid/widget/AbsListView;

.field private blacklist mListAdapter:Landroid/widget/Adapter;

.field private blacklist mLongList:Z

.field private blacklist mMatchDragPosition:Z

.field private blacklist mOldChildCount:I

.field private blacklist mOldItemCount:I

.field private blacklist mOldThumbPosition:F

.field private blacklist mOrientation:I

.field private final blacklist mOverlay:Landroid/view/ViewGroupOverlay;

.field private blacklist mOverlayPosition:I

.field private blacklist mPendingDrag:J

.field private blacklist mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final blacklist mPreviewImage:Landroid/view/View;

.field private blacklist mPreviewMarginEnd:I

.field private blacklist mPreviewMinHeight:I

.field private blacklist mPreviewMinWidth:I

.field private blacklist mPreviewPadding:I

.field private final blacklist mPreviewResId:[I

.field private final blacklist mPrimaryText:Landroid/widget/TextView;

.field private blacklist mScaledTouchSlop:I

.field private blacklist mScrollBarStyle:I

.field private blacklist mScrollCompleted:Z

.field private blacklist mScrollY:F

.field private blacklist mScrollbarPosition:I

.field private final blacklist mSecondaryText:Landroid/widget/TextView;

.field private blacklist mSectionIndexer:Landroid/widget/SectionIndexer;

.field private blacklist mSections:[Ljava/lang/Object;

.field private blacklist mShowingPreview:Z

.field private blacklist mShowingPrimary:Z

.field private blacklist mState:I

.field private final blacklist mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final blacklist mTempBounds:Landroid/graphics/Rect;

.field private final blacklist mTempMargins:Landroid/graphics/Rect;

.field private blacklist mTextAppearance:I

.field private blacklist mTextColor:Landroid/content/res/ColorStateList;

.field private blacklist mTextSize:F

.field private blacklist mThumbBackgroundColor:I

.field private blacklist mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private final blacklist mThumbImage:Landroid/widget/ImageView;

.field private blacklist mThumbMarginEnd:I

.field private blacklist mThumbMinHeight:I

.field private blacklist mThumbMinWidth:I

.field private blacklist mThumbOffset:F

.field private blacklist mThumbPosition:I

.field private blacklist mThumbRange:F

.field private blacklist mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final blacklist mTrackImage:Landroid/widget/ImageView;

.field private blacklist mTrackPadding:I

.field private blacklist mUpdatingLayout:Z

.field private blacklist mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmShowingPrimary(Landroid/widget/SemFastScroller;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/SemFastScroller;->mShowingPrimary:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShowingPrimary(Landroid/widget/SemFastScroller;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/SemFastScroller;->mShowingPrimary:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetState(Landroid/widget/SemFastScroller;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/SemFastScroller;->setState(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 124
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Landroid/widget/SemFastScroller;->TAP_TIMEOUT:J

    .line 1799
    new-instance v0, Landroid/widget/SemFastScroller$3;

    const-string/jumbo v1, "left"

    invoke-direct {v0, v1}, Landroid/widget/SemFastScroller$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/SemFastScroller;->LEFT:Landroid/util/Property;

    .line 1815
    new-instance v0, Landroid/widget/SemFastScroller$4;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1}, Landroid/widget/SemFastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/SemFastScroller;->TOP:Landroid/util/Property;

    .line 1831
    new-instance v0, Landroid/widget/SemFastScroller$5;

    const-string/jumbo v1, "right"

    invoke-direct {v0, v1}, Landroid/widget/SemFastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/SemFastScroller;->RIGHT:Landroid/util/Property;

    .line 1847
    new-instance v0, Landroid/widget/SemFastScroller$6;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Landroid/widget/SemFastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/SemFastScroller;->BOTTOM:Landroid/util/Property;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/AbsListView;I)V
    .registers 10
    .param p1, "listView"    # Landroid/widget/AbsListView;
    .param p2, "styleResId"    # I

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SemFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SemFastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SemFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 143
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/SemFastScroller;->mPreviewResId:[I

    .line 218
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SemFastScroller;->mCurrentSection:I

    .line 223
    iput v0, p0, Landroid/widget/SemFastScroller;->mScrollbarPosition:I

    .line 291
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/widget/SemFastScroller;->mPendingDrag:J

    .line 297
    iput v0, p0, Landroid/widget/SemFastScroller;->mColorPrimary:I

    .line 298
    iput v0, p0, Landroid/widget/SemFastScroller;->mThumbBackgroundColor:I

    .line 299
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemFastScroller;->mScrollY:F

    .line 303
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/SemFastScroller;->mEffectState:I

    .line 307
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/widget/SemFastScroller;->mOldThumbPosition:F

    .line 309
    iput v0, p0, Landroid/widget/SemFastScroller;->mAdditionalTouchArea:F

    .line 318
    new-instance v2, Landroid/widget/SemFastScroller$1;

    invoke-direct {v2, p0}, Landroid/widget/SemFastScroller$1;-><init>(Landroid/widget/SemFastScroller;)V

    iput-object v2, p0, Landroid/widget/SemFastScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 328
    new-instance v2, Landroid/widget/SemFastScroller$2;

    invoke-direct {v2, p0}, Landroid/widget/SemFastScroller$2;-><init>(Landroid/widget/SemFastScroller;)V

    iput-object v2, p0, Landroid/widget/SemFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 336
    iput-object p1, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    .line 337
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    iput v2, p0, Landroid/widget/SemFastScroller;->mOldItemCount:I

    .line 338
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iput v2, p0, Landroid/widget/SemFastScroller;->mOldChildCount:I

    .line 340
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    .line 341
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/widget/SemFastScroller;->mScaledTouchSlop:I

    .line 342
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getScrollBarStyle()I

    move-result v2

    iput v2, p0, Landroid/widget/SemFastScroller;->mScrollBarStyle:I

    .line 344
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/SemFastScroller;->mScrollCompleted:Z

    .line 345
    iput v2, p0, Landroid/widget/SemFastScroller;->mState:I

    .line 346
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    .line 347
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_7a

    goto :goto_7b

    :cond_7a
    move v2, v1

    :goto_7b
    iput-boolean v2, p0, Landroid/widget/SemFastScroller;->mMatchDragPosition:Z

    .line 349
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 350
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 351
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 352
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 353
    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    .line 354
    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 356
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 357
    iget-object v5, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Landroid/widget/SemFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 358
    invoke-virtual {p0, p2}, Landroid/widget/SemFastScroller;->setStyle(I)V

    .line 360
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v6

    .line 361
    .local v6, "overlay":Landroid/view/ViewGroupOverlay;
    iput-object v6, p0, Landroid/widget/SemFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 362
    invoke-virtual {v6, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 363
    invoke-virtual {v6, v3}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 364
    invoke-virtual {v6, v4}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 365
    invoke-virtual {v6, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 366
    invoke-virtual {v6, v5}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 368
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105015d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SemFastScroller;->mPreviewMarginEnd:I

    .line 369
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105015e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SemFastScroller;->mThumbMarginEnd:I

    .line 370
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050522

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Landroid/widget/SemFastScroller;->mAdditionalTouchArea:F

    .line 371
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10503d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SemFastScroller;->mTrackPadding:I

    .line 372
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10503cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SemFastScroller;->mAdditionalBottomPadding:I

    .line 374
    iget v2, p0, Landroid/widget/SemFastScroller;->mPreviewPadding:I

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 375
    iget v0, p0, Landroid/widget/SemFastScroller;->mPreviewPadding:I

    invoke-virtual {v5, v0, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 376
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->getSectionsFromIndexer()V

    .line 377
    iget v0, p0, Landroid/widget/SemFastScroller;->mOldChildCount:I

    iget v1, p0, Landroid/widget/SemFastScroller;->mOldItemCount:I

    invoke-direct {p0, v0, v1}, Landroid/widget/SemFastScroller;->updateLongList(II)V

    .line 378
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/SemFastScroller;->setScrollbarPosition(I)V

    .line 379
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->postAutoHide()V

    .line 380
    return-void
.end method

.method private static blacklist animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .registers 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .line 1792
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .registers 10
    .param p0, "v"    # Landroid/view/View;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1863
    sget-object v0, Landroid/widget/SemFastScroller;->LEFT:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1864
    .local v0, "left":Landroid/animation/PropertyValuesHolder;
    sget-object v2, Landroid/widget/SemFastScroller;->TOP:Landroid/util/Property;

    new-array v3, v1, [I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    aput v5, v3, v4

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1865
    .local v2, "top":Landroid/animation/PropertyValuesHolder;
    sget-object v3, Landroid/widget/SemFastScroller;->RIGHT:Landroid/util/Property;

    new-array v5, v1, [I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    aput v6, v5, v4

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1866
    .local v3, "right":Landroid/animation/PropertyValuesHolder;
    sget-object v5, Landroid/widget/SemFastScroller;->BOTTOM:Landroid/util/Property;

    new-array v6, v1, [I

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    aput v7, v6, v4

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 1867
    .local v5, "bottom":Landroid/animation/PropertyValuesHolder;
    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v4

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v3, v6, v1

    const/4 v1, 0x3

    aput-object v5, v6, v1

    invoke-static {p0, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;
    .registers 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "target"    # F

    .line 1785
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private blacklist applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 705
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 706
    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mLayoutFromRight:Z

    if-eqz v0, :cond_16

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 707
    return-void
.end method

.method private blacklist beginDrag()V
    .registers 3

    .line 1507
    const-string v0, "SemFastScroller"

    const-string v1, "beginDrag() !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/SemFastScroller;->mPendingDrag:J

    .line 1510
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_12

    .line 1511
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->getSectionsFromIndexer()V

    .line 1515
    :cond_12
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1516
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1519
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->cancelFling()V

    .line 1520
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->setState(I)V

    .line 1521
    return-void
.end method

.method private blacklist cancelFling()V
    .registers 9

    .line 1483
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1485
    .local v0, "cancelFling":Landroid/view/MotionEvent;
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1486
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1487
    return-void
.end method

.method private blacklist cancelPendingDrag()V
    .registers 3

    .line 1495
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/SemFastScroller;->mPendingDrag:J

    .line 1496
    return-void
.end method

.method private blacklist createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 649
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 651
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 652
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 653
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 654
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 655
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 656
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 659
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 661
    return-object v1
.end method

.method private blacklist getColorWithAlpha(IF)I
    .registers 8
    .param p1, "color"    # I
    .param p2, "ratio"    # F

    .line 1871
    const/4 v0, 0x0

    .line 1872
    .local v0, "newColor":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1873
    .local v1, "alpha":I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 1874
    .local v2, "r":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 1875
    .local v3, "g":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 1876
    .local v4, "b":I
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 1878
    return v0
.end method

.method private blacklist getPosFromItemCount(III)F
    .registers 16
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .line 1385
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1386
    .local v0, "sectionIndexer":Landroid/widget/SectionIndexer;
    if-eqz v0, :cond_8

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v1, :cond_b

    .line 1387
    :cond_8
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->getSectionsFromIndexer()V

    .line 1390
    :cond_b
    const/4 v1, 0x0

    if-eqz p2, :cond_df

    if-nez p3, :cond_12

    goto/16 :goto_df

    .line 1396
    :cond_12
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1398
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_35

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    if-nez v4, :cond_22

    goto :goto_35

    .line 1401
    :cond_22
    iget-object v4, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .local v4, "incrementalPos":F
    goto :goto_36

    .line 1399
    .end local v4    # "incrementalPos":F
    :cond_35
    :goto_35
    const/4 v4, 0x0

    .line 1405
    .restart local v4    # "incrementalPos":F
    :goto_36
    if-eqz v0, :cond_40

    iget-object v5, p0, Landroid/widget/SemFastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v5, :cond_40

    array-length v5, v5

    if-lez v5, :cond_40

    const/4 v3, 0x1

    .line 1407
    .local v3, "hasSections":Z
    :cond_40
    if-eqz v3, :cond_7d

    iget-boolean v5, p0, Landroid/widget/SemFastScroller;->mMatchDragPosition:Z

    if-nez v5, :cond_47

    goto :goto_7d

    .line 1420
    :cond_47
    iget v5, p0, Landroid/widget/SemFastScroller;->mHeaderCount:I

    sub-int/2addr p1, v5

    .line 1421
    if-gez p1, :cond_4d

    .line 1422
    return v1

    .line 1424
    :cond_4d
    sub-int/2addr p3, v5

    .line 1427
    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v1

    .line 1428
    .local v1, "section":I
    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v5

    .line 1429
    .local v5, "sectionPos":I
    iget-object v6, p0, Landroid/widget/SemFastScroller;->mSections:[Ljava/lang/Object;

    array-length v6, v6

    .line 1431
    .local v6, "sectionCount":I
    add-int/lit8 v7, v6, -0x1

    if-ge v1, v7, :cond_6c

    .line 1433
    add-int/lit8 v7, v1, 0x1

    if-ge v7, v6, :cond_68

    .line 1434
    add-int/lit8 v7, v1, 0x1

    invoke-interface {v0, v7}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    .local v7, "nextSectionPos":I
    goto :goto_6a

    .line 1436
    .end local v7    # "nextSectionPos":I
    :cond_68
    add-int/lit8 v7, p3, -0x1

    .line 1438
    .restart local v7    # "nextSectionPos":I
    :goto_6a
    sub-int/2addr v7, v5

    .line 1439
    .local v7, "positionsInSection":I
    goto :goto_6e

    .line 1440
    .end local v7    # "positionsInSection":I
    :cond_6c
    sub-int v7, p3, v5

    .line 1445
    .restart local v7    # "positionsInSection":I
    :goto_6e
    if-nez v7, :cond_72

    .line 1446
    const/4 v8, 0x0

    .local v8, "posWithinSection":F
    goto :goto_78

    .line 1448
    .end local v8    # "posWithinSection":F
    :cond_72
    int-to-float v8, p1

    add-float/2addr v8, v4

    int-to-float v9, v5

    sub-float/2addr v8, v9

    int-to-float v9, v7

    div-float/2addr v8, v9

    .line 1452
    .restart local v8    # "posWithinSection":F
    :goto_78
    int-to-float v9, v1

    add-float/2addr v9, v8

    int-to-float v10, v6

    div-float/2addr v9, v10

    .local v9, "result":F
    goto :goto_95

    .line 1408
    .end local v1    # "section":I
    .end local v5    # "sectionPos":I
    .end local v6    # "sectionCount":I
    .end local v7    # "positionsInSection":I
    .end local v8    # "posWithinSection":F
    .end local v9    # "result":F
    :cond_7d
    :goto_7d
    if-ne p2, p3, :cond_80

    .line 1410
    return v1

    .line 1412
    :cond_80
    const/4 v1, 0x1

    .line 1413
    .local v1, "span":I
    iget-object v5, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v6, v5, Landroid/widget/GridView;

    if-eqz v6, :cond_8d

    .line 1414
    check-cast v5, Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    .line 1416
    :cond_8d
    int-to-float v5, p1

    int-to-float v6, v1

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    int-to-float v6, p3

    div-float v9, v5, v6

    .line 1417
    .end local v1    # "span":I
    .restart local v9    # "result":F
    nop

    .line 1458
    :goto_95
    if-lez p1, :cond_de

    add-int v1, p1, p2

    if-ne v1, p3, :cond_de

    .line 1459
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1460
    .local v1, "lastChild":Landroid/view/View;
    iget-object v5, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    .line 1463
    .local v5, "bottomPadding":I
    iget-object v6, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v6

    if-eqz v6, :cond_c2

    .line 1464
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 1465
    .local v6, "maxSize":I
    iget-object v7, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    .local v7, "currentVisibleSize":I
    goto :goto_d2

    .line 1467
    .end local v6    # "maxSize":I
    .end local v7    # "currentVisibleSize":I
    :cond_c2
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    .line 1468
    .restart local v6    # "maxSize":I
    iget-object v7, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    .line 1470
    .restart local v7    # "currentVisibleSize":I
    :goto_d2
    if-lez v7, :cond_de

    if-lez v6, :cond_de

    .line 1471
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    int-to-float v10, v7

    int-to-float v11, v6

    div-float/2addr v10, v11

    mul-float/2addr v8, v10

    add-float/2addr v9, v8

    .line 1475
    .end local v1    # "lastChild":Landroid/view/View;
    .end local v5    # "bottomPadding":I
    .end local v6    # "maxSize":I
    .end local v7    # "currentVisibleSize":I
    :cond_de
    return v9

    .line 1392
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "hasSections":Z
    .end local v4    # "incrementalPos":F
    .end local v9    # "result":F
    :cond_df
    :goto_df
    return v1
.end method

.method private blacklist getPosFromMotionEvent(F)F
    .registers 5
    .param p1, "y"    # F

    .line 1368
    iget v0, p0, Landroid/widget/SemFastScroller;->mThumbRange:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_8

    .line 1369
    return v1

    .line 1372
    :cond_8
    iget v2, p0, Landroid/widget/SemFastScroller;->mThumbOffset:F

    sub-float v2, p1, v2

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v1, v0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private blacklist getSectionsFromIndexer()V
    .registers 4

    .line 1079
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1081
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 1082
    .local v1, "adapter":Landroid/widget/Adapter;
    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_1d

    .line 1083
    move-object v2, v1

    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, Landroid/widget/SemFastScroller;->mHeaderCount:I

    .line 1084
    move-object v2, v1

    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 1087
    :cond_1d
    instance-of v2, v1, Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_3a

    .line 1088
    move-object v0, v1

    check-cast v0, Landroid/widget/ExpandableListConnector;

    .line 1089
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 1090
    .local v0, "expAdapter":Landroid/widget/ExpandableListAdapter;
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_39

    .line 1091
    move-object v2, v0

    check-cast v2, Landroid/widget/SectionIndexer;

    iput-object v2, p0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1092
    iput-object v1, p0, Landroid/widget/SemFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 1093
    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SemFastScroller;->mSections:[Ljava/lang/Object;

    .line 1095
    .end local v0    # "expAdapter":Landroid/widget/ExpandableListAdapter;
    :cond_39
    goto :goto_50

    :cond_3a
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_4c

    .line 1096
    iput-object v1, p0, Landroid/widget/SemFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 1097
    move-object v0, v1

    check-cast v0, Landroid/widget/SectionIndexer;

    iput-object v0, p0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1098
    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_50

    .line 1100
    :cond_4c
    iput-object v1, p0, Landroid/widget/SemFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 1101
    iput-object v0, p0, Landroid/widget/SemFastScroller;->mSections:[Ljava/lang/Object;

    .line 1103
    :goto_50
    return-void
.end method

.method private static varargs blacklist groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .registers 10
    .param p1, "value"    # F
    .param p2, "views"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 1766
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1767
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x0

    .line 1769
    .local v1, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v2, p2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_23

    .line 1770
    aget-object v4, p2, v2

    new-array v5, v3, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1771
    .local v4, "anim":Landroid/animation/Animator;
    if-nez v1, :cond_1d

    .line 1772
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    goto :goto_20

    .line 1774
    :cond_1d
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1769
    .end local v4    # "anim":Landroid/animation/Animator;
    :goto_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 1778
    .end local v2    # "i":I
    :cond_23
    return-object v0
.end method

.method private blacklist isPointInside(FF)Z
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1735
    invoke-direct {p0, p1}, Landroid/widget/SemFastScroller;->isPointInsideX(F)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0, p2}, Landroid/widget/SemFastScroller;->isPointInsideY(F)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Landroid/widget/SemFastScroller;->mState:I

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private blacklist isPointInsideX(F)Z
    .registers 6
    .param p1, "x"    # F

    .line 1739
    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mLayoutFromRight:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    .line 1740
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Landroid/widget/SemFastScroller;->mAdditionalTouchArea:F

    sub-float/2addr v0, v3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_15

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    return v1

    .line 1742
    :cond_17
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Landroid/widget/SemFastScroller;->mAdditionalTouchArea:F

    add-float/2addr v0, v3

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    return v1
.end method

.method private blacklist isPointInsideY(F)Z
    .registers 6
    .param p1, "y"    # F

    .line 1747
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v0

    .line 1748
    .local v0, "offset":F
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 1749
    .local v1, "top":F
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 1751
    .local v2, "bottom":F
    cmpl-float v3, p1, v1

    if-ltz v3, :cond_20

    cmpg-float v3, p1, v2

    if-gtz v3, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    return v3
.end method

.method private blacklist layoutThumb()V
    .registers 4

    .line 874
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 875
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2, v0}, Landroid/widget/SemFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 876
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Landroid/widget/SemFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 877
    return-void
.end method

.method private blacklist layoutTrack()V
    .registers 13

    .line 884
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 885
    .local v0, "track":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 886
    .local v1, "thumb":Landroid/view/View;
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 887
    .local v2, "container":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 888
    .local v3, "maxWidth":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 889
    .local v5, "maxHeight":I
    const/high16 v6, -0x80000000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 890
    .local v6, "widthMeasureSpec":I
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v4

    .line 892
    .local v4, "heightMeasureSpec":I
    invoke-virtual {v0, v6, v4}, Landroid/view/View;->measure(II)V

    .line 896
    iget v7, p0, Landroid/widget/SemFastScroller;->mThumbPosition:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_37

    .line 897
    iget v7, v2, Landroid/graphics/Rect;->top:I

    iget v8, p0, Landroid/widget/SemFastScroller;->mTrackPadding:I

    add-int/2addr v7, v8

    .line 898
    .local v7, "top":I
    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/widget/SemFastScroller;->mTrackPadding:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/SemFastScroller;->mAdditionalBottomPadding:I

    sub-int/2addr v8, v9

    .local v8, "bottom":I
    goto :goto_4e

    .line 900
    .end local v7    # "top":I
    .end local v8    # "bottom":I
    :cond_37
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    .line 901
    .local v7, "thumbHalfHeight":I
    iget v8, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v7

    iget v9, p0, Landroid/widget/SemFastScroller;->mTrackPadding:I

    add-int/2addr v8, v9

    .line 902
    .local v8, "top":I
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v7

    iget v10, p0, Landroid/widget/SemFastScroller;->mTrackPadding:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/widget/SemFastScroller;->mAdditionalBottomPadding:I

    sub-int/2addr v9, v10

    move v7, v8

    move v8, v9

    .line 905
    .local v7, "top":I
    .local v8, "bottom":I
    :goto_4e
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 906
    .local v9, "trackWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v11

    sub-int/2addr v11, v9

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    .line 907
    .local v10, "left":I
    add-int v11, v10, v9

    .line 908
    .local v11, "right":I
    invoke-virtual {v0, v10, v7, v11, v8}, Landroid/view/View;->layout(IIII)V

    .line 909
    return-void
.end method

.method private blacklist measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 22
    .param p1, "preview"    # Landroid/view/View;
    .param p2, "margins"    # Landroid/graphics/Rect;
    .param p3, "out"    # Landroid/graphics/Rect;

    .line 808
    move-object/from16 v0, p2

    if-nez v0, :cond_8

    .line 809
    const/4 v1, 0x0

    .line 810
    .local v1, "marginLeft":I
    const/4 v2, 0x0

    .line 811
    .local v2, "marginTop":I
    const/4 v3, 0x0

    .local v3, "marginRight":I
    goto :goto_e

    .line 813
    .end local v1    # "marginLeft":I
    .end local v2    # "marginTop":I
    .end local v3    # "marginRight":I
    :cond_8
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 814
    .restart local v1    # "marginLeft":I
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 815
    .restart local v2    # "marginTop":I
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 818
    .restart local v3    # "marginRight":I
    :goto_e
    move-object/from16 v4, p0

    iget-object v5, v4, Landroid/widget/SemFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 819
    .local v5, "container":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 820
    .local v6, "containerWidth":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 821
    .local v7, "adjMaxHeight":I
    sub-int v9, v6, v1

    sub-int/2addr v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 822
    .local v9, "adjMaxWidth":I
    const/high16 v10, -0x80000000

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 823
    .local v10, "widthMeasureSpec":I
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v8

    .line 825
    .local v8, "heightMeasureSpec":I
    move-object/from16 v11, p1

    invoke-virtual {v11, v10, v8}, Landroid/view/View;->measure(II)V

    .line 828
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 829
    .local v12, "containerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 830
    .local v13, "width":I
    div-int/lit8 v14, v12, 0xa

    add-int/2addr v14, v2

    iget v15, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v15

    .line 831
    .local v14, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v14

    .line 832
    .local v15, "bottom":I
    sub-int v16, v6, v13

    div-int/lit8 v16, v16, 0x2

    iget v0, v5, Landroid/graphics/Rect;->left:I

    add-int v0, v16, v0

    .line 833
    .local v0, "left":I
    move/from16 v16, v1

    .end local v1    # "marginLeft":I
    .local v16, "marginLeft":I
    add-int v1, v0, v13

    .line 834
    .local v1, "right":I
    move/from16 v17, v2

    move-object/from16 v2, p3

    .end local v2    # "marginTop":I
    .local v17, "marginTop":I
    invoke-virtual {v2, v0, v14, v1, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 835
    return-void
.end method

.method private blacklist measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .line 719
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 720
    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 721
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 722
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 723
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 725
    iget v1, p0, Landroid/widget/SemFastScroller;->mOverlayPosition:I

    if-nez v1, :cond_2a

    .line 726
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/SemFastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_2f

    .line 728
    :cond_2a
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/widget/SemFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 730
    :goto_2f
    return-void
.end method

.method private blacklist measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 22
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adjacent"    # Landroid/view/View;
    .param p3, "margins"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .line 748
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/SemFastScroller;->mLayoutFromRight:Z

    if-eqz v1, :cond_10

    .line 749
    if-nez p2, :cond_c

    .line 750
    iget v1, v0, Landroid/widget/SemFastScroller;->mThumbMarginEnd:I

    .line 751
    .local v1, "marginRight":I
    const/4 v2, 0x0

    .local v2, "marginLeft":I
    goto :goto_19

    .line 753
    .end local v1    # "marginRight":I
    .end local v2    # "marginLeft":I
    :cond_c
    iget v1, v0, Landroid/widget/SemFastScroller;->mPreviewMarginEnd:I

    .line 754
    .restart local v1    # "marginRight":I
    const/4 v2, 0x0

    .restart local v2    # "marginLeft":I
    goto :goto_19

    .line 757
    .end local v1    # "marginRight":I
    .end local v2    # "marginLeft":I
    :cond_10
    if-nez p2, :cond_16

    .line 758
    iget v2, v0, Landroid/widget/SemFastScroller;->mThumbMarginEnd:I

    .line 759
    .restart local v2    # "marginLeft":I
    const/4 v1, 0x0

    .restart local v1    # "marginRight":I
    goto :goto_19

    .line 761
    .end local v1    # "marginRight":I
    .end local v2    # "marginLeft":I
    :cond_16
    iget v2, v0, Landroid/widget/SemFastScroller;->mPreviewMarginEnd:I

    .line 762
    .restart local v2    # "marginLeft":I
    const/4 v1, 0x0

    .line 766
    .restart local v1    # "marginRight":I
    :goto_19
    const/4 v3, 0x0

    .line 768
    .local v3, "marginTop":I
    iget-object v4, v0, Landroid/widget/SemFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 769
    .local v4, "container":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 771
    .local v5, "containerWidth":I
    if-nez p2, :cond_24

    .line 772
    move v6, v5

    .local v6, "maxWidth":I
    goto :goto_33

    .line 773
    .end local v6    # "maxWidth":I
    :cond_24
    iget-boolean v6, v0, Landroid/widget/SemFastScroller;->mLayoutFromRight:Z

    if-eqz v6, :cond_2d

    .line 774
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v6

    .restart local v6    # "maxWidth":I
    goto :goto_33

    .line 776
    .end local v6    # "maxWidth":I
    :cond_2d
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int v6, v5, v6

    .line 779
    .restart local v6    # "maxWidth":I
    :goto_33
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 780
    .local v7, "adjMaxHeight":I
    sub-int v9, v6, v2

    sub-int/2addr v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 781
    .local v9, "adjMaxWidth":I
    const/high16 v10, -0x80000000

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 782
    .local v10, "widthMeasureSpec":I
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v8

    .line 784
    .local v8, "heightMeasureSpec":I
    move-object/from16 v11, p1

    invoke-virtual {v11, v10, v8}, Landroid/view/View;->measure(II)V

    .line 787
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 790
    .local v12, "width":I
    iget-boolean v13, v0, Landroid/widget/SemFastScroller;->mLayoutFromRight:Z

    if-eqz v13, :cond_6b

    .line 791
    if-nez p2, :cond_63

    iget v13, v4, Landroid/graphics/Rect;->right:I

    goto :goto_67

    :cond_63
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v13

    :goto_67
    sub-int/2addr v13, v1

    .line 792
    .local v13, "right":I
    sub-int v14, v13, v12

    .local v14, "left":I
    goto :goto_78

    .line 794
    .end local v13    # "right":I
    .end local v14    # "left":I
    :cond_6b
    if-nez p2, :cond_70

    iget v13, v4, Landroid/graphics/Rect;->left:I

    goto :goto_74

    :cond_70
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v13

    :goto_74
    add-int v14, v13, v2

    .line 795
    .restart local v14    # "left":I
    add-int v13, v14, v12

    .line 799
    .restart local v13    # "right":I
    :goto_78
    move v15, v3

    .line 800
    .local v15, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v0, v15, v16

    .line 801
    .local v0, "bottom":I
    move/from16 v16, v1

    move-object/from16 v1, p4

    .end local v1    # "marginRight":I
    .local v16, "marginRight":I
    invoke-virtual {v1, v14, v15, v13, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 802
    return-void
.end method

.method private blacklist onStateDependencyChanged(Z)V
    .registers 4
    .param p1, "peekIfEnabled"    # Z

    .line 555
    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 556
    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 557
    invoke-direct {p0, v1}, Landroid/widget/SemFastScroller;->setState(I)V

    goto :goto_25

    .line 558
    :cond_11
    iget v0, p0, Landroid/widget/SemFastScroller;->mState:I

    if-ne v0, v1, :cond_19

    .line 559
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->postAutoHide()V

    goto :goto_25

    .line 560
    :cond_19
    if-eqz p1, :cond_25

    .line 561
    invoke-direct {p0, v1}, Landroid/widget/SemFastScroller;->setState(I)V

    .line 562
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->postAutoHide()V

    goto :goto_25

    .line 565
    :cond_22
    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->stop()V

    .line 568
    :cond_25
    :goto_25
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 569
    return-void
.end method

.method private blacklist postAutoHide()V
    .registers 5

    .line 1050
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1051
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1052
    return-void
.end method

.method private blacklist refreshDrawablePressedState()V
    .registers 3

    .line 970
    iget v0, p0, Landroid/widget/SemFastScroller;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 971
    .local v0, "isPressed":Z
    :goto_8
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 972
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 973
    return-void
.end method

.method private blacklist scrollTo(F)V
    .registers 23
    .param p1, "position"    # F

    .line 1115
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/widget/SemFastScroller;->mScrollCompleted:Z

    .line 1117
    iget-object v3, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCount()I

    move-result v3

    .line 1118
    .local v3, "count":I
    iget-object v4, v0, Landroid/widget/SemFastScroller;->mSections:[Ljava/lang/Object;

    .line 1119
    .local v4, "sections":[Ljava/lang/Object;
    if-nez v4, :cond_13

    move v5, v2

    goto :goto_14

    :cond_13
    array-length v5, v4

    .line 1121
    .local v5, "sectionCount":I
    :goto_14
    if-eqz v4, :cond_ca

    if-lez v5, :cond_ca

    .line 1122
    int-to-float v6, v5

    mul-float/2addr v6, v1

    float-to-int v6, v6

    add-int/lit8 v7, v5, -0x1

    invoke-static {v6, v2, v7}, Landroid/util/MathUtils;->constrain(III)I

    move-result v6

    .line 1124
    .local v6, "exactSection":I
    move v7, v6

    .line 1125
    .local v7, "targetSection":I
    iget-object v8, v0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v8, v7}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v8

    .line 1126
    .local v8, "targetIndex":I
    move v9, v7

    .line 1134
    .local v9, "sectionIndex":I
    move v10, v3

    .line 1135
    .local v10, "nextIndex":I
    move v11, v8

    .line 1136
    .local v11, "prevIndex":I
    move v12, v7

    .line 1137
    .local v12, "prevSection":I
    add-int/lit8 v13, v7, 0x1

    .line 1140
    .local v13, "nextSection":I
    add-int/lit8 v14, v5, -0x1

    if-ge v7, v14, :cond_3a

    .line 1141
    iget-object v14, v0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v15, v7, 0x1

    invoke-interface {v14, v15}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v10

    .line 1145
    :cond_3a
    if-ne v10, v8, :cond_4e

    .line 1147
    :cond_3c
    if-lez v7, :cond_4e

    .line 1148
    add-int/lit8 v7, v7, -0x1

    .line 1149
    iget-object v14, v0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v14, v7}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    .line 1150
    if-eq v11, v8, :cond_4b

    .line 1151
    move v12, v7

    .line 1152
    move v9, v7

    .line 1153
    goto :goto_4e

    .line 1154
    :cond_4b
    if-nez v7, :cond_3c

    .line 1157
    const/4 v9, 0x0

    .line 1168
    :cond_4e
    :goto_4e
    add-int/lit8 v14, v13, 0x1

    .line 1169
    .local v14, "nextNextSection":I
    :goto_50
    if-ge v14, v5, :cond_5f

    iget-object v15, v0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1170
    invoke-interface {v15, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v15

    if-ne v15, v10, :cond_5f

    .line 1171
    add-int/lit8 v14, v14, 0x1

    .line 1172
    add-int/lit8 v13, v13, 0x1

    goto :goto_50

    .line 1179
    :cond_5f
    int-to-float v15, v12

    int-to-float v2, v5

    div-float/2addr v15, v2

    .line 1180
    .local v15, "prevPosition":F
    int-to-float v2, v13

    move-object/from16 v16, v4

    .end local v4    # "sections":[Ljava/lang/Object;
    .local v16, "sections":[Ljava/lang/Object;
    int-to-float v4, v5

    div-float/2addr v2, v4

    .line 1181
    .local v2, "nextPosition":F
    if-nez v3, :cond_6f

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    move/from16 v17, v5

    goto :goto_75

    :cond_6f
    const/high16 v4, 0x3e000000    # 0.125f

    move/from16 v17, v5

    .end local v5    # "sectionCount":I
    .local v17, "sectionCount":I
    int-to-float v5, v3

    div-float/2addr v4, v5

    .line 1182
    .local v4, "snapThreshold":F
    :goto_75
    if-ne v12, v6, :cond_7f

    sub-float v5, v1, v15

    cmpg-float v5, v5, v4

    if-gez v5, :cond_7f

    .line 1183
    move v5, v11

    .end local v8    # "targetIndex":I
    .local v5, "targetIndex":I
    goto :goto_8c

    .line 1185
    .end local v5    # "targetIndex":I
    .restart local v8    # "targetIndex":I
    :cond_7f
    sub-int v5, v10, v11

    int-to-float v5, v5

    sub-float v18, v1, v15

    mul-float v5, v5, v18

    sub-float v18, v2, v15

    div-float v5, v5, v18

    float-to-int v5, v5

    add-int/2addr v5, v11

    .line 1190
    .end local v8    # "targetIndex":I
    .restart local v5    # "targetIndex":I
    :goto_8c
    add-int/lit8 v8, v3, -0x1

    move/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "nextPosition":F
    .local v18, "nextPosition":F
    invoke-static {v5, v2, v8}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    .line 1192
    iget-object v2, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v8, v2, Landroid/widget/ExpandableListView;

    if-eqz v8, :cond_b1

    .line 1193
    check-cast v2, Landroid/widget/ExpandableListView;

    .line 1194
    .local v2, "expList":Landroid/widget/ExpandableListView;
    iget v8, v0, Landroid/widget/SemFastScroller;->mHeaderCount:I

    add-int/2addr v8, v5

    .line 1195
    move/from16 v19, v6

    move/from16 v20, v7

    .end local v6    # "exactSection":I
    .end local v7    # "targetSection":I
    .local v19, "exactSection":I
    .local v20, "targetSection":I
    invoke-static {v8}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v6

    .line 1194
    invoke-virtual {v2, v6, v7}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 1197
    .end local v2    # "expList":Landroid/widget/ExpandableListView;
    goto :goto_c9

    .end local v19    # "exactSection":I
    .end local v20    # "targetSection":I
    .restart local v6    # "exactSection":I
    .restart local v7    # "targetSection":I
    :cond_b1
    move/from16 v19, v6

    move/from16 v20, v7

    const/4 v7, 0x0

    .end local v6    # "exactSection":I
    .end local v7    # "targetSection":I
    .restart local v19    # "exactSection":I
    .restart local v20    # "targetSection":I
    instance-of v6, v2, Landroid/widget/ListView;

    if-eqz v6, :cond_c3

    .line 1198
    check-cast v2, Landroid/widget/ListView;

    iget v6, v0, Landroid/widget/SemFastScroller;->mHeaderCount:I

    add-int/2addr v6, v5

    invoke-virtual {v2, v6, v7}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_c9

    .line 1200
    :cond_c3
    iget v6, v0, Landroid/widget/SemFastScroller;->mHeaderCount:I

    add-int/2addr v6, v5

    invoke-virtual {v2, v6}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 1202
    .end local v4    # "snapThreshold":F
    .end local v5    # "targetIndex":I
    .end local v10    # "nextIndex":I
    .end local v11    # "prevIndex":I
    .end local v12    # "prevSection":I
    .end local v13    # "nextSection":I
    .end local v14    # "nextNextSection":I
    .end local v15    # "prevPosition":F
    .end local v18    # "nextPosition":F
    .end local v19    # "exactSection":I
    .end local v20    # "targetSection":I
    :goto_c9
    goto :goto_105

    .line 1121
    .end local v9    # "sectionIndex":I
    .end local v16    # "sections":[Ljava/lang/Object;
    .end local v17    # "sectionCount":I
    .local v4, "sections":[Ljava/lang/Object;
    .local v5, "sectionCount":I
    :cond_ca
    move-object/from16 v16, v4

    move/from16 v17, v5

    .line 1203
    .end local v4    # "sections":[Ljava/lang/Object;
    .end local v5    # "sectionCount":I
    .restart local v16    # "sections":[Ljava/lang/Object;
    .restart local v17    # "sectionCount":I
    int-to-float v2, v3

    mul-float/2addr v2, v1

    float-to-int v2, v2

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    .line 1205
    .local v2, "index":I
    iget-object v4, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v5, v4, Landroid/widget/ExpandableListView;

    if-eqz v5, :cond_f0

    .line 1206
    check-cast v4, Landroid/widget/ExpandableListView;

    .line 1207
    .local v4, "expList":Landroid/widget/ExpandableListView;
    iget v5, v0, Landroid/widget/SemFastScroller;->mHeaderCount:I

    add-int/2addr v5, v2

    .line 1208
    invoke-static {v5}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v5

    .line 1207
    invoke-virtual {v4, v5, v6}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 1209
    .end local v4    # "expList":Landroid/widget/ExpandableListView;
    goto :goto_104

    :cond_f0
    const/4 v6, 0x0

    instance-of v5, v4, Landroid/widget/ListView;

    if-eqz v5, :cond_fe

    .line 1210
    check-cast v4, Landroid/widget/ListView;

    iget v5, v0, Landroid/widget/SemFastScroller;->mHeaderCount:I

    add-int/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_104

    .line 1212
    :cond_fe
    iget v5, v0, Landroid/widget/SemFastScroller;->mHeaderCount:I

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 1215
    :goto_104
    const/4 v9, -0x1

    .line 1219
    .end local v2    # "index":I
    .restart local v9    # "sectionIndex":I
    :goto_105
    iget v2, v0, Landroid/widget/SemFastScroller;->mCurrentSection:I

    if-eq v2, v9, :cond_114

    .line 1220
    iget-object v2, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    const/16 v4, 0x1a

    invoke-static {v4}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 1224
    :cond_114
    iput v9, v0, Landroid/widget/SemFastScroller;->mCurrentSection:I

    .line 1226
    invoke-direct {v0, v9}, Landroid/widget/SemFastScroller;->transitionPreviewLayout(I)Z

    move-result v2

    .line 1227
    .local v2, "hasPreview":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "scrollTo() called transitionPreviewLayout() sectionIndex ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SemFastScroller"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-boolean v4, v0, Landroid/widget/SemFastScroller;->mShowingPreview:Z

    if-nez v4, :cond_147

    if-eqz v2, :cond_147

    .line 1229
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemFastScroller;->transitionToDragging()V

    goto :goto_14e

    .line 1230
    :cond_147
    if-eqz v4, :cond_14e

    if-nez v2, :cond_14e

    .line 1231
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemFastScroller;->transitionToVisible()V

    .line 1233
    :cond_14e
    :goto_14e
    return-void
.end method

.method private blacklist setState(I)V
    .registers 4
    .param p1, "state"    # I

    .line 934
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 936
    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_e

    if-nez p1, :cond_e

    .line 937
    const/4 p1, 0x1

    .line 940
    :cond_e
    iget v0, p0, Landroid/widget/SemFastScroller;->mState:I

    if-ne p1, v0, :cond_13

    .line 941
    return-void

    .line 944
    :cond_13
    packed-switch p1, :pswitch_data_3e

    goto :goto_37

    .line 955
    :pswitch_17
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_20

    .line 956
    iget v1, p0, Landroid/widget/SemFastScroller;->mColorPrimary:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 958
    :cond_20
    iget v0, p0, Landroid/widget/SemFastScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->transitionPreviewLayout(I)Z

    .line 959
    goto :goto_37

    .line 949
    :pswitch_26
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2f

    .line 950
    iget v1, p0, Landroid/widget/SemFastScroller;->mThumbBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 952
    :cond_2f
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->transitionToVisible()V

    .line 953
    goto :goto_37

    .line 946
    :pswitch_33
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->transitionToHidden()V

    .line 947
    nop

    .line 964
    :goto_37
    iput p1, p0, Landroid/widget/SemFastScroller;->mState:I

    .line 966
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->refreshDrawablePressedState()V

    .line 967
    return-void

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_33
        :pswitch_26
        :pswitch_17
    .end packed-switch
.end method

.method private blacklist setThumbPos(F)V
    .registers 14
    .param p1, "position"    # F

    .line 1333
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1334
    .local v0, "container":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 1335
    .local v1, "top":I
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1338
    .local v2, "bottom":I
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-lez v3, :cond_f

    .line 1339
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_15

    .line 1340
    :cond_f
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_15

    .line 1341
    const/4 p1, 0x0

    .line 1344
    :cond_15
    :goto_15
    iget v3, p0, Landroid/widget/SemFastScroller;->mThumbRange:F

    mul-float/2addr v3, p1

    iget v4, p0, Landroid/widget/SemFastScroller;->mThumbOffset:F

    add-float/2addr v3, v4

    .line 1345
    .local v3, "thumbMiddle":F
    iget-object v4, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1347
    iget-object v4, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    .line 1349
    .local v4, "previewImage":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    .line 1352
    .local v5, "previewHalfHeight":F
    move v6, v3

    .line 1355
    .local v6, "previewPos":F
    int-to-float v7, v1

    add-float/2addr v7, v5

    .line 1356
    .local v7, "minP":F
    int-to-float v8, v2

    sub-float/2addr v8, v5

    .line 1357
    .local v8, "maxP":F
    invoke-static {v6, v7, v8}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v9

    .line 1358
    .local v9, "previewMiddle":F
    sub-float v10, v9, v5

    .line 1359
    .local v10, "previewTop":F
    invoke-virtual {v4, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 1361
    iget-object v11, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1362
    iget-object v11, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1363
    return-void
.end method

.method private blacklist startPendingDrag()V
    .registers 5

    .line 1503
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroid/widget/SemFastScroller;->TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/SemFastScroller;->mPendingDrag:J

    .line 1504
    return-void
.end method

.method private blacklist transitionPreviewLayout(I)Z
    .registers 22
    .param p1, "sectionIndex"    # I

    .line 1244
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroid/widget/SemFastScroller;->mSections:[Ljava/lang/Object;

    .line 1245
    .local v2, "sections":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1246
    .local v3, "text":Ljava/lang/String;
    if-eqz v2, :cond_16

    if-ltz v1, :cond_16

    array-length v4, v2

    if-ge v1, v4, :cond_16

    .line 1247
    aget-object v4, v2, v1

    .line 1248
    .local v4, "section":Ljava/lang/Object;
    if-eqz v4, :cond_16

    .line 1249
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1252
    .end local v4    # "section":Ljava/lang/Object;
    :cond_16
    iget-object v4, v0, Landroid/widget/SemFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 1253
    .local v4, "bounds":Landroid/graphics/Rect;
    iget-object v5, v0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    .line 1256
    .local v5, "preview":Landroid/view/View;
    iget-boolean v6, v0, Landroid/widget/SemFastScroller;->mShowingPrimary:Z

    if-eqz v6, :cond_23

    .line 1257
    iget-object v6, v0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1258
    .local v6, "showing":Landroid/widget/TextView;
    iget-object v7, v0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .local v7, "target":Landroid/widget/TextView;
    goto :goto_27

    .line 1260
    .end local v6    # "showing":Landroid/widget/TextView;
    .end local v7    # "target":Landroid/widget/TextView;
    :cond_23
    iget-object v6, v0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 1261
    .restart local v6    # "showing":Landroid/widget/TextView;
    iget-object v7, v0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1265
    .restart local v7    # "target":Landroid/widget/TextView;
    :goto_27
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1267
    invoke-direct {v0, v7, v4}, Landroid/widget/SemFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1268
    invoke-direct {v0, v7, v4}, Landroid/widget/SemFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1270
    iget v8, v0, Landroid/widget/SemFastScroller;->mState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3b

    .line 1271
    const-string v8, ""

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4e

    .line 1272
    :cond_3b
    const/4 v10, 0x2

    if-ne v8, v10, :cond_4e

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    if-ne v8, v10, :cond_4e

    .line 1273
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v8, v9

    return v8

    .line 1276
    :cond_4e
    :goto_4e
    iget-object v8, v0, Landroid/widget/SemFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_55

    .line 1277
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1281
    :cond_55
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Landroid/widget/SemFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v10

    const-wide/16 v11, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v10

    .line 1282
    .local v10, "showTarget":Landroid/animation/Animator;
    const/4 v13, 0x0

    invoke-static {v6, v13}, Landroid/widget/SemFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v14

    invoke-virtual {v14, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    .line 1283
    .local v11, "hideShowing":Landroid/animation/Animator;
    iget-object v12, v0, Landroid/widget/SemFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v11, v12}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1286
    iget v12, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    sub-int/2addr v12, v14

    iput v12, v4, Landroid/graphics/Rect;->left:I

    .line 1287
    iget v12, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    sub-int/2addr v12, v14

    iput v12, v4, Landroid/graphics/Rect;->top:I

    .line 1288
    iget v12, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v14

    add-int/2addr v12, v14

    iput v12, v4, Landroid/graphics/Rect;->right:I

    .line 1289
    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v14

    add-int/2addr v12, v14

    iput v12, v4, Landroid/graphics/Rect;->bottom:I

    .line 1290
    invoke-static {v5, v4}, Landroid/widget/SemFastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v12

    .line 1291
    .local v12, "resizePreview":Landroid/animation/Animator;
    const-wide/16 v14, 0x64

    invoke-virtual {v12, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1293
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, v0, Landroid/widget/SemFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 1294
    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    .line 1295
    .local v9, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v9, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1299
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v16

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v17

    sub-int v16, v16, v17

    .line 1300
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v17

    sub-int v13, v16, v17

    .line 1304
    .local v13, "previewWidth":I
    invoke-virtual {v7}, Landroid/widget/TextView;->getWidth()I

    move-result v14

    .line 1305
    .local v14, "targetWidth":I
    if-le v14, v13, :cond_de

    .line 1306
    int-to-float v15, v13

    int-to-float v8, v14

    div-float/2addr v15, v8

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1307
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Landroid/widget/SemFastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v15

    move-object/from16 v18, v9

    const-wide/16 v8, 0x64

    .end local v9    # "builder":Landroid/animation/AnimatorSet$Builder;
    .local v18, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v15, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v15

    .line 1308
    .local v15, "scaleAnim":Landroid/animation/Animator;
    move-object/from16 v8, v18

    .end local v18    # "builder":Landroid/animation/AnimatorSet$Builder;
    .local v8, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v8, v15}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1309
    .end local v15    # "scaleAnim":Landroid/animation/Animator;
    goto :goto_e4

    .line 1310
    .end local v8    # "builder":Landroid/animation/AnimatorSet$Builder;
    .restart local v9    # "builder":Landroid/animation/AnimatorSet$Builder;
    :cond_de
    move-object v8, v9

    .end local v9    # "builder":Landroid/animation/AnimatorSet$Builder;
    .restart local v8    # "builder":Landroid/animation/AnimatorSet$Builder;
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1314
    :goto_e4
    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v9

    .line 1315
    .local v9, "showingWidth":I
    if-le v9, v14, :cond_ff

    .line 1316
    int-to-float v15, v14

    int-to-float v1, v9

    div-float/2addr v15, v1

    .line 1317
    .local v15, "scale":F
    invoke-static {v6, v15}, Landroid/widget/SemFastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v1

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    const-wide/16 v4, 0x64

    .end local v4    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "preview":Landroid/view/View;
    .local v18, "bounds":Landroid/graphics/Rect;
    .local v19, "preview":Landroid/view/View;
    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 1318
    .local v1, "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_103

    .line 1315
    .end local v1    # "scaleAnim":Landroid/animation/Animator;
    .end local v15    # "scale":F
    .end local v18    # "bounds":Landroid/graphics/Rect;
    .end local v19    # "preview":Landroid/view/View;
    .restart local v4    # "bounds":Landroid/graphics/Rect;
    .restart local v5    # "preview":Landroid/view/View;
    :cond_ff
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    .line 1320
    .end local v4    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "preview":Landroid/view/View;
    .restart local v18    # "bounds":Landroid/graphics/Rect;
    .restart local v19    # "preview":Landroid/view/View;
    :goto_103
    iget-object v1, v0, Landroid/widget/SemFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ea8f5c3    # 0.33f

    const v15, 0x3e99999a    # 0.3f

    move-object/from16 v16, v2

    move-object/from16 v17, v6

    const/4 v2, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .end local v2    # "sections":[Ljava/lang/Object;
    .end local v6    # "showing":Landroid/widget/TextView;
    .local v16, "sections":[Ljava/lang/Object;
    .local v17, "showing":Landroid/widget/TextView;
    invoke-direct {v4, v5, v2, v15, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1321
    iget-object v1, v0, Landroid/widget/SemFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1323
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    return v1
.end method

.method private blacklist transitionToDragging()V
    .registers 9

    .line 1033
    const-string v0, "SemFastScroller"

    const-string/jumbo v1, "transitionToDragging()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_f

    .line 1035
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1038
    :cond_f
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v5, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v5, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v1}, Landroid/widget/SemFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v5, 0xa7

    .line 1040
    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 1042
    .local v0, "fadeIn":Landroid/animation/Animator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 1043
    new-array v5, v4, [Landroid/animation/Animator;

    aput-object v0, v5, v3

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1044
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ea8f5c3    # 0.33f

    const/4 v6, 0x0

    const v7, 0x3e99999a    # 0.3f

    invoke-direct {v3, v5, v6, v7, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1045
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1046
    iput-boolean v4, p0, Landroid/widget/SemFastScroller;->mShowingPreview:Z

    .line 1047
    return-void
.end method

.method private blacklist transitionToHidden()V
    .registers 9

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "transitionToHidden() mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/SemFastScroller;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemFastScroller"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget v0, p0, Landroid/widget/SemFastScroller;->mState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_28

    .line 981
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    goto :goto_2d

    .line 983
    :cond_28
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 987
    :goto_2d
    const/4 v0, 0x0

    .line 989
    .local v0, "duration":I
    iput-boolean v3, p0, Landroid/widget/SemFastScroller;->mShowingPreview:Z

    .line 990
    const/4 v4, -0x1

    iput v4, p0, Landroid/widget/SemFastScroller;->mCurrentSection:I

    .line 992
    iget-object v4, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_3c

    .line 993
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 994
    const/16 v0, 0xa7

    .line 997
    :cond_3c
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x5

    new-array v5, v5, [Landroid/view/View;

    iget-object v6, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v6, v5, v3

    iget-object v6, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v6, v5, v2

    iget-object v6, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v6, v5, v1

    const/4 v1, 0x3

    iget-object v6, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v6, v5, v1

    const/4 v1, 0x4

    iget-object v6, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v6, v5, v1

    const/4 v1, 0x0

    invoke-static {v4, v1, v5}, Landroid/widget/SemFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v4

    int-to-long v5, v0

    .line 998
    invoke-virtual {v4, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v4

    .line 1000
    .local v4, "fadeOut":Landroid/animation/Animator;
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 1001
    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v4, v2, v3

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1002
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ea8f5c3    # 0.33f

    const v6, 0x3e99999a    # 0.3f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v1, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1003
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1004
    return-void
.end method

.method private blacklist transitionToVisible()V
    .registers 11

    .line 1010
    const-string v0, "SemFastScroller"

    const-string/jumbo v1, "transitionToVisible()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_f

    .line 1012
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1014
    :cond_f
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 1016
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/view/View;

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v4, v3}, Landroid/widget/SemFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    .line 1017
    const-wide/16 v6, 0xa7

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 1018
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/view/View;

    iget-object v9, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v9, v8, v5

    iget-object v9, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v9, v8, v1

    iget-object v9, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v9, v8, v2

    const/4 v9, 0x0

    invoke-static {v3, v9, v8}, Landroid/widget/SemFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    .line 1020
    invoke-virtual {v3, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v3

    .line 1022
    .local v3, "fadeOut":Landroid/animation/Animator;
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 1023
    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    aput-object v3, v2, v1

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1024
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    const v7, 0x3e99999a    # 0.3f

    invoke-direct {v2, v6, v9, v7, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1025
    iput-boolean v5, p0, Landroid/widget/SemFastScroller;->mShowingPreview:Z

    .line 1026
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1027
    return-void
.end method

.method private blacklist updateAppearance()V
    .registers 7

    .line 383
    const/4 v0, 0x0

    .line 385
    .local v0, "width":I
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 386
    .local v1, "outValue":Landroid/util/TypedValue;
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010433

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 387
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iput v2, p0, Landroid/widget/SemFastScroller;->mColorPrimary:I

    .line 388
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060328

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SemFastScroller;->mThumbBackgroundColor:I

    .line 391
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/SemFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_44

    .line 393
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 396
    :cond_44
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4d

    .line 397
    iget v3, p0, Landroid/widget/SemFastScroller;->mThumbBackgroundColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 401
    :cond_4d
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/SemFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v3, p0, Landroid/widget/SemFastScroller;->mThumbMinWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 403
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v3, p0, Landroid/widget/SemFastScroller;->mThumbMinHeight:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 404
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6e

    .line 405
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 409
    :cond_6e
    iget v2, p0, Landroid/widget/SemFastScroller;->mThumbMinWidth:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/SemFastScroller;->mWidth:I

    .line 411
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    iget v3, p0, Landroid/widget/SemFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 412
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    iget v3, p0, Landroid/widget/SemFastScroller;->mPreviewMinHeight:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 414
    iget v2, p0, Landroid/widget/SemFastScroller;->mTextAppearance:I

    if-eqz v2, :cond_98

    .line 415
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 416
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    iget v4, p0, Landroid/widget/SemFastScroller;->mTextAppearance:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 419
    :cond_98
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_a8

    .line 420
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 421
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/SemFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 424
    :cond_a8
    iget v2, p0, Landroid/widget/SemFastScroller;->mTextSize:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    const/4 v4, 0x0

    if-lez v3, :cond_bc

    .line 425
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 426
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v3, p0, Landroid/widget/SemFastScroller;->mTextSize:F

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 429
    :cond_bc
    iget v2, p0, Landroid/widget/SemFastScroller;->mPreviewMinHeight:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 430
    .local v2, "textMinSize":I
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v5, p0, Landroid/widget/SemFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 431
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 432
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 433
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v5, p0, Landroid/widget/SemFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 434
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 435
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 436
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Landroid/widget/SemFastScroller;->mOrientation:I

    .line 438
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->refreshDrawablePressedState()V

    .line 439
    return-void
.end method

.method private blacklist updateContainerRect()V
    .registers 7

    .line 841
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    .line 842
    .local v0, "list":Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 844
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 845
    .local v1, "container":Landroid/graphics/Rect;
    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 846
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 847
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 848
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 850
    iget v2, p0, Landroid/widget/SemFastScroller;->mScrollBarStyle:I

    .line 851
    .local v2, "scrollbarStyle":I
    const/high16 v3, 0x1000000

    if-eq v2, v3, :cond_20

    if-nez v2, :cond_5a

    .line 853
    :cond_20
    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 854
    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 855
    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 856
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 859
    if-ne v2, v3, :cond_5a

    .line 860
    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->getWidth()I

    move-result v3

    .line 861
    .local v3, "width":I
    iget v4, p0, Landroid/widget/SemFastScroller;->mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_55

    .line 862
    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->right:I

    goto :goto_5a

    .line 864
    :cond_55
    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 868
    .end local v3    # "width":I
    :cond_5a
    :goto_5a
    return-void
.end method

.method private blacklist updateLongList(II)V
    .registers 6
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .line 637
    const/4 v0, 0x1

    if-lez p1, :cond_16

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_14
    move v1, v0

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 638
    .local v1, "longList":Z
    :goto_17
    iget-boolean v2, p0, Landroid/widget/SemFastScroller;->mLongList:Z

    if-eq v2, v1, :cond_20

    .line 639
    iput-boolean v1, p0, Landroid/widget/SemFastScroller;->mLongList:Z

    .line 641
    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->onStateDependencyChanged(Z)V

    .line 643
    :cond_20
    return-void
.end method

.method private blacklist updateOffsetAndRange()V
    .registers 6

    .line 916
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 917
    .local v0, "trackImage":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 920
    .local v1, "thumbImage":Landroid/view/View;
    iget v2, p0, Landroid/widget/SemFastScroller;->mThumbPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 921
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 922
    .local v2, "halfThumbHeight":F
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    .line 923
    .local v3, "min":F
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    .line 924
    .end local v2    # "halfThumbHeight":F
    .local v4, "max":F
    goto :goto_28

    .line 925
    .end local v3    # "min":F
    .end local v4    # "max":F
    :cond_1e
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v3, v2

    .line 926
    .restart local v3    # "min":F
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v4, v2

    .line 929
    .restart local v4    # "max":F
    :goto_28
    iput v3, p0, Landroid/widget/SemFastScroller;->mThumbOffset:F

    .line 930
    sub-float v2, v4, v3

    iput v2, p0, Landroid/widget/SemFastScroller;->mThumbRange:F

    .line 931
    return-void
.end method


# virtual methods
.method blacklist getEffectState()I
    .registers 2

    .line 610
    iget v0, p0, Landroid/widget/SemFastScroller;->mEffectState:I

    return v0
.end method

.method blacklist getScrollY()F
    .registers 2

    .line 614
    iget v0, p0, Landroid/widget/SemFastScroller;->mScrollY:F

    return v0
.end method

.method public blacklist getWidth()I
    .registers 2

    .line 606
    iget v0, p0, Landroid/widget/SemFastScroller;->mWidth:I

    return v0
.end method

.method public blacklist isAlwaysShowEnabled()Z
    .registers 2

    .line 546
    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 527
    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mEnabled:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mLongList:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1579
    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1580
    return v1

    .line 1583
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1584
    .local v0, "actionMasked":I
    const/16 v2, 0x9

    if-eq v0, v2, :cond_13

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2c

    :cond_13
    iget v2, p0, Landroid/widget/SemFastScroller;->mState:I

    if-nez v2, :cond_2c

    .line 1586
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/SemFastScroller;->isPointInside(FF)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1587
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/widget/SemFastScroller;->setState(I)V

    .line 1588
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->postAutoHide()V

    .line 1591
    :cond_2c
    return v1
.end method

.method public blacklist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1524
    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1525
    return v1

    .line 1528
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-string v2, "SemFastScroller"

    packed-switch v0, :pswitch_data_9a

    goto/16 :goto_99

    .line 1551
    :pswitch_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v3}, Landroid/widget/SemFastScroller;->isPointInside(FF)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1552
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->cancelPendingDrag()V

    goto :goto_99

    .line 1553
    :cond_25
    iget-wide v3, p0, Landroid/widget/SemFastScroller;->mPendingDrag:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_99

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_99

    .line 1554
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->beginDrag()V

    .line 1556
    iget v0, p0, Landroid/widget/SemFastScroller;->mInitialTouchY:F

    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1557
    .local v0, "pos":F
    iput v0, p0, Landroid/widget/SemFastScroller;->mOldThumbPosition:F

    .line 1558
    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->scrollTo(F)V

    .line 1560
    const-string/jumbo v1, "onInterceptTouchEvent() ACTION_MOVE pendingdrag open()"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    invoke-virtual {p0, p1}, Landroid/widget/SemFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1569
    .end local v0    # "pos":F
    :pswitch_4e
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->cancelPendingDrag()V

    .line 1570
    goto :goto_99

    .line 1530
    :pswitch_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onInterceptTouchEvent() ACTION_DOWN ev.getY() = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/widget/SemFastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 1538
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    const/16 v2, 0x1a

    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 1540
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_90

    .line 1543
    const/4 v0, 0x1

    return v0

    .line 1546
    :cond_90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/SemFastScroller;->mInitialTouchY:F

    .line 1547
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->startPendingDrag()V

    .line 1575
    :cond_99
    :goto_99
    return v1

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_52
        :pswitch_4e
        :pswitch_13
        :pswitch_4e
    .end packed-switch
.end method

.method public blacklist onItemCountChanged(II)V
    .registers 6
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .line 622
    iget v0, p0, Landroid/widget/SemFastScroller;->mOldItemCount:I

    if-ne v0, p2, :cond_8

    iget v0, p0, Landroid/widget/SemFastScroller;->mOldChildCount:I

    if-eq v0, p1, :cond_2a

    .line 623
    :cond_8
    iput p2, p0, Landroid/widget/SemFastScroller;->mOldItemCount:I

    .line 624
    iput p1, p0, Landroid/widget/SemFastScroller;->mOldChildCount:I

    .line 626
    sub-int v0, p2, p1

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 627
    .local v0, "hasMoreItems":Z
    :goto_13
    if-eqz v0, :cond_27

    iget v1, p0, Landroid/widget/SemFastScroller;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_27

    .line 628
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    .line 629
    .local v1, "firstVisibleItem":I
    invoke-direct {p0, v1, p1, p2}, Landroid/widget/SemFastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/SemFastScroller;->setThumbPos(F)V

    .line 632
    .end local v1    # "firstVisibleItem":I
    :cond_27
    invoke-direct {p0, p1, p2}, Landroid/widget/SemFastScroller;->updateLongList(II)V

    .line 634
    .end local v0    # "hasMoreItems":Z
    :cond_2a
    return-void
.end method

.method public blacklist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 1595
    iget v0, p0, Landroid/widget/SemFastScroller;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/widget/SemFastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_16

    .line 1598
    :cond_14
    const/4 v0, 0x0

    return-object v0

    .line 1596
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onScroll(III)V
    .registers 9
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .line 1055
    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1056
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->setState(I)V

    .line 1057
    return-void

    .line 1060
    :cond_b
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_1e
    iget v0, p0, Landroid/widget/SemFastScroller;->mState:I

    if-eq v0, v2, :cond_37

    .line 1061
    iget v0, p0, Landroid/widget/SemFastScroller;->mOldThumbPosition:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, v0, v3

    if-eqz v4, :cond_30

    .line 1062
    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->setThumbPos(F)V

    .line 1063
    iput v3, p0, Landroid/widget/SemFastScroller;->mOldThumbPosition:F

    goto :goto_37

    .line 1065
    :cond_30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SemFastScroller;->getPosFromItemCount(III)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->setThumbPos(F)V

    .line 1069
    :cond_37
    :goto_37
    iput-boolean v1, p0, Landroid/widget/SemFastScroller;->mScrollCompleted:Z

    .line 1072
    iget v0, p0, Landroid/widget/SemFastScroller;->mState:I

    if-eq v0, v2, :cond_43

    .line 1073
    invoke-direct {p0, v1}, Landroid/widget/SemFastScroller;->setState(I)V

    .line 1074
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->postAutoHide()V

    .line 1076
    :cond_43
    return-void
.end method

.method public blacklist onSectionsChanged()V
    .registers 2

    .line 1106
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SemFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 1107
    return-void
.end method

.method public blacklist onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 618
    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->updateLayout()V

    .line 619
    return-void
.end method

.method public blacklist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 17
    .param p1, "me"    # Landroid/view/MotionEvent;

    .line 1602
    move-object v0, p0

    iget-object v1, v0, Landroid/widget/SemFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1603
    .local v1, "container":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 1604
    .local v2, "top":I
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 1606
    .local v3, "bottom":I
    iget-object v4, v0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 1607
    .local v4, "trackImage":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    .line 1608
    .local v5, "min":F
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    .line 1610
    .local v6, "max":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    .line 1612
    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->isEnabled()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_21

    .line 1613
    return v8

    .line 1616
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x2

    const-string v13, "SemFastScroller"

    const/4 v14, 0x1

    packed-switch v7, :pswitch_data_1bc

    goto/16 :goto_1b9

    .line 1708
    :pswitch_31
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->cancelPendingDrag()V

    .line 1709
    iget v7, v0, Landroid/widget/SemFastScroller;->mState:I

    if-ne v7, v12, :cond_3b

    .line 1710
    invoke-direct {p0, v8}, Landroid/widget/SemFastScroller;->setState(I)V

    .line 1712
    :cond_3b
    iput v8, v0, Landroid/widget/SemFastScroller;->mEffectState:I

    .line 1713
    iput v9, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    .line 1715
    goto/16 :goto_1b9

    .line 1663
    :pswitch_41
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent() ACTION_MOVE.. mState= "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v0, Landroid/widget/SemFastScroller;->mState:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", mInitialTouchY="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v0, Landroid/widget/SemFastScroller;->mInitialTouchY:F

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    iget-wide v8, v0, Landroid/widget/SemFastScroller;->mPendingDrag:J

    cmp-long v8, v8, v10

    const-string v9, ", max="

    const-string v10, ", min="

    if-ltz v8, :cond_cf

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v11, v0, Landroid/widget/SemFastScroller;->mInitialTouchY:F

    sub-float/2addr v8, v11

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v11, v0, Landroid/widget/SemFastScroller;->mScaledTouchSlop:I

    int-to-float v11, v11

    cmpl-float v8, v8, v11

    if-lez v8, :cond_cf

    .line 1665
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->beginDrag()V

    .line 1666
    iget v8, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    int-to-float v11, v2

    cmpl-float v11, v8, v11

    if-lez v11, :cond_cf

    int-to-float v11, v3

    cmpg-float v8, v8, v11

    if-gez v8, :cond_cf

    .line 1667
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onTouchEvent() ACTION_MOVE 1 mScrollY="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    iget v8, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    int-to-float v11, v2

    add-float/2addr v11, v5

    cmpg-float v11, v8, v11

    if-gez v11, :cond_c7

    .line 1670
    int-to-float v8, v2

    add-float/2addr v8, v5

    iput v8, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    goto :goto_cd

    .line 1671
    :cond_c7
    cmpl-float v8, v8, v6

    if-lez v8, :cond_cd

    .line 1672
    iput v6, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    .line 1674
    :cond_cd
    :goto_cd
    iput v14, v0, Landroid/widget/SemFastScroller;->mEffectState:I

    .line 1680
    :cond_cf
    iget v8, v0, Landroid/widget/SemFastScroller;->mState:I

    if-ne v8, v12, :cond_1b9

    .line 1682
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v7}, Landroid/widget/SemFastScroller;->getPosFromMotionEvent(F)F

    move-result v7

    .line 1683
    .local v7, "pos":F
    iput v7, v0, Landroid/widget/SemFastScroller;->mOldThumbPosition:F

    .line 1684
    invoke-direct {p0, v7}, Landroid/widget/SemFastScroller;->setThumbPos(F)V

    .line 1687
    iget-boolean v8, v0, Landroid/widget/SemFastScroller;->mScrollCompleted:Z

    if-eqz v8, :cond_e7

    .line 1688
    invoke-direct {p0, v7}, Landroid/widget/SemFastScroller;->scrollTo(F)V

    .line 1691
    :cond_e7
    iget v8, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    int-to-float v11, v2

    cmpl-float v11, v8, v11

    if-lez v11, :cond_131

    int-to-float v11, v3

    cmpg-float v8, v8, v11

    if-gez v8, :cond_131

    .line 1692
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onTouchEvent() ACTION_MOVE 2 mScrollY="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    iget v8, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    int-to-float v9, v2

    add-float/2addr v9, v5

    cmpg-float v9, v8, v9

    if-gez v9, :cond_129

    .line 1695
    int-to-float v8, v2

    add-float/2addr v8, v5

    iput v8, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    goto :goto_12f

    .line 1696
    :cond_129
    cmpl-float v8, v8, v6

    if-lez v8, :cond_12f

    .line 1697
    iput v6, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    .line 1699
    :cond_12f
    :goto_12f
    iput v14, v0, Landroid/widget/SemFastScroller;->mEffectState:I

    .line 1702
    :cond_131
    return v14

    .line 1630
    .end local v7    # "pos":F
    :pswitch_132
    iget-wide v7, v0, Landroid/widget/SemFastScroller;->mPendingDrag:J

    cmp-long v7, v7, v10

    if-ltz v7, :cond_168

    .line 1632
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->beginDrag()V

    .line 1634
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v7}, Landroid/widget/SemFastScroller;->getPosFromMotionEvent(F)F

    move-result v7

    .line 1635
    .restart local v7    # "pos":F
    iput v7, v0, Landroid/widget/SemFastScroller;->mOldThumbPosition:F

    .line 1636
    invoke-direct {p0, v7}, Landroid/widget/SemFastScroller;->setThumbPos(F)V

    .line 1637
    invoke-direct {p0, v7}, Landroid/widget/SemFastScroller;->scrollTo(F)V

    .line 1638
    iput v14, v0, Landroid/widget/SemFastScroller;->mEffectState:I

    .line 1639
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onTouchEvent() ACTION_UP.. open() called with posY "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    .end local v7    # "pos":F
    :cond_168
    iget v7, v0, Landroid/widget/SemFastScroller;->mState:I

    if-ne v7, v12, :cond_1b9

    .line 1648
    iget-object v7, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1649
    iget-object v7, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1652
    invoke-direct {p0, v14}, Landroid/widget/SemFastScroller;->setState(I)V

    .line 1653
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->postAutoHide()V

    .line 1654
    iput v8, v0, Landroid/widget/SemFastScroller;->mEffectState:I

    .line 1655
    iput v9, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    .line 1657
    return v14

    .line 1618
    :pswitch_182
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-direct {p0, v8, v9}, Landroid/widget/SemFastScroller;->isPointInside(FF)Z

    move-result v8

    if-eqz v8, :cond_1b9

    .line 1619
    iget-object v8, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result v8

    if-nez v8, :cond_1b9

    .line 1620
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->beginDrag()V

    .line 1621
    iput v14, v0, Landroid/widget/SemFastScroller;->mEffectState:I

    .line 1622
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onTouchEvent() ACTION_DOWN.. open() called with posY "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    return v14

    .line 1721
    :cond_1b9
    :goto_1b9
    const/4 v7, 0x0

    return v7

    nop

    :pswitch_data_1bc
    .packed-switch 0x0
        :pswitch_182
        :pswitch_132
        :pswitch_41
        :pswitch_31
    .end packed-switch
.end method

.method public blacklist remove()V
    .registers 3

    .line 504
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 505
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 506
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 507
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 508
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 509
    return-void
.end method

.method public blacklist setAlwaysShow(Z)V
    .registers 3
    .param p1, "alwaysShow"    # Z

    .line 534
    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_a

    .line 535
    iput-boolean p1, p0, Landroid/widget/SemFastScroller;->mAlwaysShow:Z

    .line 537
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->onStateDependencyChanged(Z)V

    .line 539
    :cond_a
    return-void
.end method

.method public blacklist setEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEnabled() enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemFastScroller"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_23

    .line 517
    iput-boolean p1, p0, Landroid/widget/SemFastScroller;->mEnabled:Z

    .line 519
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->onStateDependencyChanged(Z)V

    .line 521
    :cond_23
    return-void
.end method

.method public blacklist setScrollBarStyle(I)V
    .registers 3
    .param p1, "style"    # I

    .line 572
    iget v0, p0, Landroid/widget/SemFastScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_9

    .line 573
    iput p1, p0, Landroid/widget/SemFastScroller;->mScrollBarStyle:I

    .line 575
    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->updateLayout()V

    .line 577
    :cond_9
    return-void
.end method

.method public blacklist setScrollbarPosition(I)V
    .registers 5
    .param p1, "position"    # I

    .line 587
    const/4 v0, 0x1

    if-nez p1, :cond_f

    .line 588
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 589
    move v1, v0

    goto :goto_e

    :cond_d
    const/4 v1, 0x2

    :goto_e
    move p1, v1

    .line 592
    :cond_f
    iget v1, p0, Landroid/widget/SemFastScroller;->mScrollbarPosition:I

    if-eq v1, p1, :cond_3d

    .line 593
    iput p1, p0, Landroid/widget/SemFastScroller;->mScrollbarPosition:I

    .line 594
    if-eq p1, v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    iput-boolean v0, p0, Landroid/widget/SemFastScroller;->mLayoutFromRight:Z

    .line 596
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewResId:[I

    aget v0, v1, v0

    .line 597
    .local v0, "previewResId":I
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 598
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 599
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Landroid/widget/SemFastScroller;->mColorPrimary:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 601
    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->updateLayout()V

    .line 603
    .end local v0    # "previewResId":I
    :cond_3d
    return-void
.end method

.method public blacklist setStyle(I)V
    .registers 9
    .param p1, "resId"    # I

    .line 442
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->FastScroll:[I

    const/4 v2, 0x0

    const v3, 0x10103f7

    invoke-virtual {v0, v2, v1, v3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 444
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 445
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_88

    .line 446
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 447
    .local v3, "index":I
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_90

    goto/16 :goto_85

    .line 461
    :pswitch_1d
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/SemFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 462
    goto :goto_85

    .line 479
    :pswitch_24
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/SemFastScroller;->mThumbMinWidth:I

    .line 480
    goto :goto_85

    .line 482
    :pswitch_2b
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/SemFastScroller;->mThumbMinHeight:I

    .line 483
    goto :goto_85

    .line 458
    :pswitch_32
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/SemFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 459
    goto :goto_85

    .line 449
    :pswitch_39
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/widget/SemFastScroller;->mOverlayPosition:I

    .line 450
    goto :goto_85

    .line 455
    :pswitch_40
    iget-object v5, p0, Landroid/widget/SemFastScroller;->mPreviewResId:[I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    const/4 v6, 0x1

    aput v4, v5, v6

    .line 456
    goto :goto_85

    .line 452
    :pswitch_4a
    iget-object v5, p0, Landroid/widget/SemFastScroller;->mPreviewResId:[I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v5, v4

    .line 453
    goto :goto_85

    .line 488
    :pswitch_53
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/widget/SemFastScroller;->mThumbPosition:I

    .line 489
    goto :goto_85

    .line 476
    :pswitch_5a
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/SemFastScroller;->mPreviewMinHeight:I

    .line 477
    goto :goto_85

    .line 473
    :pswitch_61
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/SemFastScroller;->mPreviewMinWidth:I

    .line 474
    goto :goto_85

    .line 485
    :pswitch_68
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/SemFastScroller;->mPreviewPadding:I

    .line 486
    goto :goto_85

    .line 467
    :pswitch_6f
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/SemFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    .line 468
    goto :goto_85

    .line 470
    :pswitch_76
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Landroid/widget/SemFastScroller;->mTextSize:F

    .line 471
    goto :goto_85

    .line 464
    :pswitch_7e
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/widget/SemFastScroller;->mTextAppearance:I

    .line 465
    nop

    .line 445
    .end local v3    # "index":I
    :goto_85
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 495
    .end local v2    # "i":I
    :cond_88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 497
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->updateAppearance()V

    .line 498
    return-void

    nop

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_76
        :pswitch_6f
        :pswitch_68
        :pswitch_61
        :pswitch_5a
        :pswitch_53
        :pswitch_4a
        :pswitch_40
        :pswitch_39
        :pswitch_32
        :pswitch_2b
        :pswitch_24
        :pswitch_1d
    .end packed-switch
.end method

.method public blacklist stop()V
    .registers 2

    .line 583
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->setState(I)V

    .line 584
    return-void
.end method

.method public blacklist updateLayout()V
    .registers 4

    .line 670
    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mUpdatingLayout:Z

    if-eqz v0, :cond_5

    .line 671
    return-void

    .line 673
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemFastScroller;->mUpdatingLayout:Z

    .line 675
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->updateContainerRect()V

    .line 677
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->layoutThumb()V

    .line 678
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->layoutTrack()V

    .line 680
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->updateOffsetAndRange()V

    .line 682
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemFastScroller;->mUpdatingLayout:Z

    .line 683
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 684
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/SemFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 685
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/SemFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 686
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/SemFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 687
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/SemFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 690
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 691
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 692
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 693
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 694
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/widget/SemFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 695
    return-void
.end method
