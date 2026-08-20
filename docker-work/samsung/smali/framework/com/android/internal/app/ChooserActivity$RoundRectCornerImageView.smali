.class public Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;
.super Landroid/widget/ImageView;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoundRectCornerImageView"
.end annotation


# instance fields
.field private blacklist mIsChecked:Z

.field private blacklist mPath:Landroid/graphics/Path;

.field private blacklist mRadius:I

.field private blacklist mRoundRectPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 7719
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 7713
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->mRadius:I

    .line 7714
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->mPath:Landroid/graphics/Path;

    .line 7715
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    .line 7720
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 7723
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7724
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 7727
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 7728
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 7732
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 7713
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->mRadius:I

    .line 7714
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->mPath:Landroid/graphics/Path;

    .line 7715
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    .line 7733
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->mRadius:I

    .line 7734
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10602e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 7736
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7737
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105009e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7738
    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->mIsChecked:Z

    .line 7739
    return-void
.end method

.method private blacklist updatePath(II)V
    .registers 14
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 7746
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 7747
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->getPaddingRight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 7748
    .local v0, "imageWidth":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 7749
    .local v1, "imageHeight":I
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v0

    int-to-float v6, v1

    iget v7, p0, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->mRadius:I

    int-to-float v8, v7

    int-to-float v9, v7

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v7, v8

    move v8, v9

    move-object v9, v10

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 7750
    return-void
.end method


# virtual methods
.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 7774
    const-class v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 7760
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->mRadius:I

    if-eqz v0, :cond_9

    .line 7761
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 7763
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 7764
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->getPaddingLeft()I

    move-result v0

    .line 7765
    .local v0, "x":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->getPaddingRight()I

    move-result v1

    .line 7766
    .local v1, "y":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 7767
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 7769
    .local v3, "height":I
    int-to-float v5, v0

    int-to-float v6, v1

    int-to-float v7, v2

    int-to-float v8, v3

    iget v4, p0, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->mRadius:I

    int-to-float v9, v4

    int-to-float v10, v4

    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 7770
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 7779
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 7780
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 7781
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->mIsChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 7782
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .line 7754
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 7755
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->updatePath(II)V

    .line 7756
    return-void
.end method

.method public blacklist semSetChecked(Z)V
    .registers 2
    .param p1, "checked"    # Z

    .line 7742
    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->mIsChecked:Z

    .line 7743
    return-void
.end method
