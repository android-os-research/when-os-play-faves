.class public Lcom/android/internal/app/ChooserActivity$InvisibleRectView;
.super Landroid/widget/ImageView;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvisibleRectView"
.end annotation


# static fields
.field private static final blacklist OPACITY:I = 0x5a


# instance fields
.field private blacklist mInvisibleRect:Landroid/graphics/RectF;

.field private blacklist mOuterRect:Landroid/graphics/RectF;

.field private blacklist mPaint:Landroid/graphics/Paint;

.field private blacklist mPath:Landroid/graphics/Path;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 7636
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 7637
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 7640
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7641
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 7644
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7645
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->init()V

    .line 7646
    return-void
.end method

.method private blacklist init()V
    .registers 3

    .line 7625
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mPath:Landroid/graphics/Path;

    .line 7626
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mPaint:Landroid/graphics/Paint;

    .line 7627
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mInvisibleRect:Landroid/graphics/RectF;

    .line 7628
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mOuterRect:Landroid/graphics/RectF;

    .line 7630
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7631
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 7632
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7633
    return-void
.end method


# virtual methods
.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 7650
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 7651
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mOuterRect:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 7652
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mInvisibleRect:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 7653
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 7654
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 7655
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 7656
    return-void
.end method

.method public blacklist setInvisibleRect(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 7659
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mInvisibleRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 7660
    return-void
.end method

.method public blacklist setOuterRect(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 7663
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mOuterRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 7664
    return-void
.end method
