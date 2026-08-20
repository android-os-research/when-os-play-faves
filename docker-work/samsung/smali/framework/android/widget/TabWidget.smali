.class public Landroid/widget/TabWidget;
.super Landroid/widget/LinearLayout;
.source "TabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TabWidget$OnTabSelectionChanged;,
        Landroid/widget/TabWidget$SemTabTouchListener;,
        Landroid/widget/TabWidget$TabClickListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final greylist-max-o mBounds:Landroid/graphics/Rect;

.field private blacklist mDefaultTextSize:F

.field private greylist-max-q mDrawBottomStrips:Z

.field private greylist-max-o mImposedTabWidths:[I

.field private greylist-max-o mImposedTabsHeight:I

.field private blacklist mIsThemeDeviceDefaultFamily:Z

.field private greylist-max-o mLeftStrip:Landroid/graphics/drawable/Drawable;

.field private blacklist mMaxFontScale:F

.field private greylist-max-o mRightStrip:Landroid/graphics/drawable/Drawable;

.field private greylist-max-q mSelectedTab:I

.field private greylist-max-o mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

.field private greylist-max-o mStripMoved:Z

.field private blacklist mTabTextColorStateList:Landroid/content/res/ColorStateList;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSelectedTab(Landroid/widget/TabWidget;)I
    .registers 1

    iget p0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectionChangedListener(Landroid/widget/TabWidget;)Landroid/widget/TabWidget$OnTabSelectionChanged;
    .registers 1

    iget-object p0, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTabTextColorStateList(Landroid/widget/TabWidget;)Landroid/content/res/ColorStateList;
    .registers 1

    iget-object p0, p0, Landroid/widget/TabWidget;->mTabTextColorStateList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNotSelectedColor(Landroid/widget/TabWidget;Landroid/content/res/ColorStateList;)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/TabWidget;->getNotSelectedColor(Landroid/content/res/ColorStateList;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSelectedColor(Landroid/widget/TabWidget;Landroid/content/res/ColorStateList;)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/TabWidget;->getSelectedColor(Landroid/content/res/ColorStateList;)I

    move-result p0

    return p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 117
    const v0, 0x1010083

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 122
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 125
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/TabWidget;->mBounds:Landroid/graphics/Rect;

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    .line 100
    iput v0, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    .line 106
    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Landroid/widget/TabWidget;->mDefaultTextSize:F

    .line 107
    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Landroid/widget/TabWidget;->mMaxFontScale:F

    .line 127
    sget-object v0, Lcom/android/internal/R$styleable;->TabWidget:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 129
    .local v0, "a":Landroid/content/res/TypedArray;
    sget-object v4, Lcom/android/internal/R$styleable;->TabWidget:[I

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v0

    move v7, p3

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Landroid/widget/TabWidget;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 132
    iget-boolean v2, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    .line 137
    nop

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-gt v2, v4, :cond_42

    move v2, v1

    goto :goto_43

    :cond_42
    move v2, v3

    .line 140
    .local v2, "isTargetSdkDonutOrLower":Z
    :goto_43
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v4

    .line 141
    .local v4, "hasExplicitLeft":Z
    if-eqz v4, :cond_50

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    goto :goto_65

    .line 143
    :cond_50
    if-eqz v2, :cond_5c

    .line 144
    const v5, 0x1080b15

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    goto :goto_65

    .line 146
    :cond_5c
    const v5, 0x1080b14

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 149
    :goto_65
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v6

    .line 150
    .local v6, "hasExplicitRight":Z
    if-eqz v6, :cond_73

    .line 151
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    goto :goto_88

    .line 152
    :cond_73
    if-eqz v2, :cond_7f

    .line 153
    const v5, 0x1080b17

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    goto :goto_88

    .line 155
    :cond_7f
    const v5, 0x1080b16

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 158
    :goto_88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 160
    invoke-virtual {p0, v1}, Landroid/widget/TabWidget;->setChildrenDrawingOrderEnabled(Z)V

    .line 163
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 164
    .local v5, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x11200b9

    invoke-virtual {v7, v8, v5, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 166
    iget v7, v5, Landroid/util/TypedValue;->data:I

    if-eqz v7, :cond_a2

    goto :goto_a3

    :cond_a2
    move v1, v3

    :goto_a3
    iput-boolean v1, p0, Landroid/widget/TabWidget;->mIsThemeDeviceDefaultFamily:Z

    .line 168
    if-eqz v1, :cond_d6

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v7, 0x0

    sget-object v8, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v7, v8, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 171
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    const/16 v7, 0x8f

    invoke-virtual {v1, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 173
    .local v7, "tabTextAppearnceId":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 175
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v8, v7, v9}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 177
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 178
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    if-eqz v5, :cond_d6

    .line 181
    iget v3, v5, Landroid/util/TypedValue;->data:I

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v3

    iput v3, p0, Landroid/widget/TabWidget;->mDefaultTextSize:F

    .line 185
    .end local v1    # "typedArray":Landroid/content/res/TypedArray;
    .end local v7    # "tabTextAppearnceId":I
    :cond_d6
    return-void
.end method

.method private blacklist getNotSelectedColor(Landroid/content/res/ColorStateList;)I
    .registers 4
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .line 775
    if-eqz p1, :cond_11

    .line 776
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    .line 777
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 776
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    .line 779
    :cond_11
    const/4 v0, -0x1

    return v0

    nop

    :array_14
    .array-data 4
        -0x10100a1
        -0x101009c
    .end array-data
.end method

.method private blacklist getSelectedColor(Landroid/content/res/ColorStateList;)I
    .registers 4
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .line 767
    if-eqz p1, :cond_11

    .line 768
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    .line 769
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 768
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    .line 771
    :cond_11
    const/4 v0, -0x1

    return v0

    nop

    :array_14
    .array-data 4
        0x10100a1
        0x101009e
    .end array-data
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .line 626
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_15

    .line 627
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 629
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 630
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 634
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_15
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 635
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 637
    invoke-virtual {p1}, Landroid/view/View;->getPointerIcon()Landroid/view/PointerIcon;

    move-result-object v1

    if-nez v1, :cond_2f

    .line 638
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 641
    :cond_2f
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 645
    new-instance v1, Landroid/widget/TabWidget$TabClickListener;

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/TabWidget$TabClickListener;-><init>(Landroid/widget/TabWidget;ILandroid/widget/TabWidget$TabClickListener-IA;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    iget-boolean v1, p0, Landroid/widget/TabWidget;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v1, :cond_62

    .line 648
    new-instance v1, Landroid/widget/TabWidget$SemTabTouchListener;

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/TabWidget$SemTabTouchListener;-><init>(Landroid/widget/TabWidget;ILandroid/widget/TabWidget$SemTabTouchListener-IA;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 650
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 651
    .local v0, "tabText":Landroid/widget/TextView;
    if-eqz v0, :cond_62

    .line 652
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TabWidget;->mTabTextColorStateList:Landroid/content/res/ColorStateList;

    .line 656
    .end local v0    # "tabText":Landroid/widget/TextView;
    :cond_62
    return-void
.end method

.method public whitelist childDrawableStateChanged(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 442
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-lez v0, :cond_11

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_11

    .line 444
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 446
    :cond_11
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    .line 447
    return-void
.end method

.method public whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 451
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 454
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 458
    :cond_a
    iget-boolean v0, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    if-nez v0, :cond_f

    .line 460
    return-void

    .line 463
    :cond_f
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 465
    .local v0, "selectedChild":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 466
    .local v1, "leftStrip":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 468
    .local v2, "rightStrip":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_22

    .line 469
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 471
    :cond_22
    if-eqz v2, :cond_2b

    .line 472
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 475
    :cond_2b
    iget-boolean v3, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    if-eqz v3, :cond_78

    .line 476
    iget-object v3, p0, Landroid/widget/TabWidget;->mBounds:Landroid/graphics/Rect;

    .line 477
    .local v3, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 478
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 479
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getHeight()I

    move-result v4

    .line 480
    .local v4, "myHeight":I
    const/4 v5, 0x0

    if-eqz v1, :cond_5a

    .line 481
    iget v6, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 482
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int v7, v4, v7

    iget v8, v3, Landroid/graphics/Rect;->left:I

    .line 481
    invoke-virtual {v1, v6, v7, v8, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 484
    :cond_5a
    if-eqz v2, :cond_76

    .line 485
    iget v6, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int v7, v4, v7

    .line 486
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getWidth()I

    move-result v8

    iget v9, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 485
    invoke-virtual {v2, v6, v7, v8, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 489
    :cond_76
    iput-boolean v5, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    .line 492
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .end local v4    # "myHeight":I
    :cond_78
    if-eqz v1, :cond_7d

    .line 493
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 495
    :cond_7d
    if-eqz v2, :cond_82

    .line 496
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 498
    :cond_82
    return-void
.end method

.method public whitelist focusCurrentTab(I)V
    .registers 4
    .param p1, "index"    # I

    .line 602
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 605
    .local v0, "oldTab":I
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 608
    if-eq v0, p1, :cond_e

    .line 609
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 611
    :cond_e
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 576
    const-class v0, Landroid/widget/TabWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist getChildDrawingOrder(II)I
    .registers 5
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 224
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 225
    return p2

    .line 229
    :cond_6
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_b

    .line 230
    return v0

    .line 231
    :cond_b
    if-lt p2, v0, :cond_10

    .line 232
    add-int/lit8 v0, p2, 0x1

    return v0

    .line 234
    :cond_10
    return p2
.end method

.method public whitelist getChildTabViewAt(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .line 309
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLeftStripDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 378
    iget-object v0, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getRightStripDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 417
    iget-object v0, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getTabCount()I
    .registers 2

    .line 318
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v0

    return v0
.end method

.method public whitelist isStripEnabled()Z
    .registers 2

    .line 437
    iget-boolean v0, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    return v0
.end method

.method greylist-max-o measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .line 242
    invoke-virtual {p0}, Landroid/widget/TabWidget;->isMeasureWithLargestChildEnabled()Z

    move-result v0

    if-nez v0, :cond_1b

    iget v0, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    if-ltz v0, :cond_1b

    .line 243
    iget-object v0, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    aget v0, v0, p2

    add-int/2addr v0, p4

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 245
    iget v0, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    .line 249
    :cond_1b
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 251
    return-void
.end method

.method greylist-max-o measureHorizontal(II)V
    .registers 19
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 255
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-nez v1, :cond_c

    .line 256
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    .line 257
    return-void

    .line 261
    :cond_c
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 262
    .local v1, "width":I
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 264
    .local v3, "unspecifiedWidth":I
    const/4 v4, -0x1

    iput v4, v0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    .line 265
    move/from16 v4, p2

    invoke-super {v0, v3, v4}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    .line 267
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v5, v1

    .line 268
    .local v5, "extraWidth":I
    if-lez v5, :cond_7d

    .line 269
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v6

    .line 271
    .local v6, "count":I
    const/4 v7, 0x0

    .line 272
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2a
    const/16 v9, 0x8

    if-ge v8, v6, :cond_3e

    .line 273
    invoke-virtual {v0, v8}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 274
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v9, :cond_39

    goto :goto_3b

    .line 275
    :cond_39
    add-int/lit8 v7, v7, 0x1

    .line 272
    .end local v10    # "child":Landroid/view/View;
    :goto_3b
    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    .line 278
    .end local v8    # "i":I
    :cond_3e
    if-lez v7, :cond_7d

    .line 279
    iget-object v8, v0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    if-eqz v8, :cond_47

    array-length v8, v8

    if-eq v8, v6, :cond_4b

    .line 280
    :cond_47
    new-array v8, v6, [I

    iput-object v8, v0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    .line 282
    :cond_4b
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4c
    if-ge v8, v6, :cond_7d

    .line 283
    invoke-virtual {v0, v8}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 284
    .restart local v10    # "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v9, :cond_59

    goto :goto_7a

    .line 285
    :cond_59
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 286
    .local v11, "childWidth":I
    div-int v12, v5, v7

    .line 287
    .local v12, "delta":I
    sub-int v13, v11, v12

    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 288
    .local v13, "newWidth":I
    iget-object v14, v0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    aput v13, v14, v8

    .line 290
    sub-int v14, v11, v13

    sub-int/2addr v5, v14

    .line 291
    add-int/lit8 v7, v7, -0x1

    .line 292
    iget v14, v0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    .line 282
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "childWidth":I
    .end local v12    # "delta":I
    .end local v13    # "newWidth":I
    :goto_7a
    add-int/lit8 v8, v8, 0x1

    goto :goto_4c

    .line 299
    .end local v6    # "count":I
    .end local v7    # "childCount":I
    .end local v8    # "i":I
    :cond_7d
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    .line 300
    return-void
.end method

.method public whitelist onFocusChange(Landroid/view/View;Z)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 688
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 582
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 583
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 584
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 585
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 193
    iget-boolean v0, p0, Landroid/widget/TabWidget;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v0, :cond_3f

    .line 194
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 195
    .local v0, "fontScale":F
    iget v1, p0, Landroid/widget/TabWidget;->mMaxFontScale:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1a

    .line 196
    iget v0, p0, Landroid/widget/TabWidget;->mMaxFontScale:F

    .line 199
    :cond_1a
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    .line 200
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    if-ge v2, v1, :cond_3f

    .line 201
    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    .line 202
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_3c

    .line 203
    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 204
    .local v4, "vTextView":Landroid/view/View;
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_3c

    .line 205
    move-object v5, v4

    check-cast v5, Landroid/widget/TextView;

    .line 206
    .local v5, "textView":Landroid/widget/TextView;
    iget v6, p0, Landroid/widget/TabWidget;->mDefaultTextSize:F

    mul-float/2addr v6, v0

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 200
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "vTextView":Landroid/view/View;
    .end local v5    # "textView":Landroid/widget/TextView;
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 211
    .end local v0    # "fontScale":F
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_3f
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 212
    return-void
.end method

.method public whitelist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 666
    invoke-virtual {p0}, Landroid/widget/TabWidget;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 667
    const/4 v0, 0x0

    return-object v0

    .line 669
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    .line 219
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 220
    return-void
.end method

.method public whitelist removeAllViews()V
    .registers 2

    .line 660
    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 661
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 662
    return-void
.end method

.method public whitelist setCurrentTab(I)V
    .registers 9
    .param p1, "index"    # I

    .line 528
    if-ltz p1, :cond_85

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_85

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    if-ne p1, v0, :cond_e

    goto/16 :goto_85

    .line 532
    :cond_e
    const/4 v1, -0x1

    const-string/jumbo v2, "sec-roboto-light"

    const v3, 0x1020587

    const v4, 0x1020016

    if-eq v0, v1, :cond_4d

    .line 533
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 535
    iget-boolean v0, p0, Landroid/widget/TabWidget;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v0, :cond_4d

    .line 536
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 538
    .local v0, "oldTabView":Landroid/view/View;
    if-eqz v0, :cond_4d

    .line 539
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 540
    .local v5, "oldTabTextView":Landroid/widget/TextView;
    if-eqz v5, :cond_42

    .line 541
    iget-object v6, p0, Landroid/widget/TabWidget;->mTabTextColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 542
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 544
    :cond_42
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/widget/SemTabDotLineView;

    .line 545
    .local v6, "oldSemTabDotLineView":Lcom/samsung/android/widget/SemTabDotLineView;
    if-eqz v6, :cond_4d

    .line 546
    invoke-virtual {v6, v1}, Lcom/samsung/android/widget/SemTabDotLineView;->setDrawState(Z)V

    .line 552
    .end local v0    # "oldTabView":Landroid/view/View;
    .end local v5    # "oldTabTextView":Landroid/widget/TextView;
    .end local v6    # "oldSemTabDotLineView":Lcom/samsung/android/widget/SemTabDotLineView;
    :cond_4d
    iput p1, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 553
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 554
    iput-boolean v1, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    .line 557
    iget-boolean v0, p0, Landroid/widget/TabWidget;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v0, :cond_84

    .line 558
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 559
    .local v0, "tabView":Landroid/view/View;
    if-eqz v0, :cond_84

    .line 560
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 561
    .local v4, "tabTextView":Landroid/widget/TextView;
    if-eqz v4, :cond_79

    .line 562
    iget-object v5, p0, Landroid/widget/TabWidget;->mTabTextColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 563
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 565
    :cond_79
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/widget/SemTabDotLineView;

    .line 566
    .local v2, "semTabDotLineView":Lcom/samsung/android/widget/SemTabDotLineView;
    if-eqz v2, :cond_84

    .line 567
    invoke-virtual {v2, v1}, Lcom/samsung/android/widget/SemTabDotLineView;->setDrawState(Z)V

    .line 572
    .end local v0    # "tabView":Landroid/view/View;
    .end local v2    # "semTabDotLineView":Lcom/samsung/android/widget/SemTabDotLineView;
    .end local v4    # "tabTextView":Landroid/widget/TextView;
    :cond_84
    return-void

    .line 529
    :cond_85
    :goto_85
    return-void
.end method

.method public whitelist setDividerDrawable(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 339
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    return-void
.end method

.method public whitelist setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 329
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 615
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 617
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    .line 618
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_14

    .line 619
    invoke-virtual {p0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 620
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 618
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 622
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method public whitelist setLeftStripDrawable(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 366
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 367
    return-void
.end method

.method public whitelist setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 351
    iput-object p1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 352
    invoke-virtual {p0}, Landroid/widget/TabWidget;->requestLayout()V

    .line 353
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 354
    return-void
.end method

.method public whitelist setRightStripDrawable(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 405
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    return-void
.end method

.method public whitelist setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 390
    iput-object p1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 391
    invoke-virtual {p0}, Landroid/widget/TabWidget;->requestLayout()V

    .line 392
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 393
    return-void
.end method

.method public whitelist setStripEnabled(Z)V
    .registers 2
    .param p1, "stripEnabled"    # Z

    .line 428
    iput-boolean p1, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    .line 429
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 430
    return-void
.end method

.method greylist-max-q setTabSelectionListener(Landroid/widget/TabWidget$OnTabSelectionChanged;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/TabWidget$OnTabSelectionChanged;

    .line 682
    iput-object p1, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    .line 683
    return-void
.end method
