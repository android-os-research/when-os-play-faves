.class public Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;
.super Landroid/view/View;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemPreviewIconView"
.end annotation


# instance fields
.field private blacklist mDrawPaint:Landroid/graphics/Paint;

.field private blacklist mDx:F

.field private blacklist mDy:F

.field private blacklist mHaveFrame:Z

.field private blacklist mHeight:I

.field private blacklist mMaskBitmap:Landroid/graphics/Bitmap;

.field private blacklist mScale:F

.field private blacklist mSourceBitmap:Landroid/graphics/Bitmap;

.field private blacklist mSourceMatrix:Landroid/graphics/Matrix;

.field private blacklist mWidth:I

.field private blacklist mXferPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 8769
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 8759
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mDx:F

    .line 8760
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mDy:F

    .line 8761
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mScale:F

    .line 8763
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mHaveFrame:Z

    .line 8770
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 8773
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8774
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 8777
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 8778
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 8781
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 8759
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mDx:F

    .line 8760
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mDy:F

    .line 8761
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mScale:F

    .line 8763
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mHaveFrame:Z

    .line 8783
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mXferPaint:Landroid/graphics/Paint;

    .line 8784
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 8785
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mDrawPaint:Landroid/graphics/Paint;

    .line 8786
    return-void
.end method

.method private blacklist configureBounds()V
    .registers 2

    .line 8845
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mSourceBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mHaveFrame:Z

    if-nez v0, :cond_d

    goto :goto_11

    .line 8848
    :cond_d
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->resizeBitmap()V

    .line 8849
    return-void

    .line 8846
    :cond_11
    :goto_11
    return-void
.end method

.method private blacklist resizeBitmap()V
    .registers 14

    .line 8852
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_72

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mSourceBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_9

    goto :goto_72

    .line 8856
    :cond_9
    const/4 v1, 0x0

    .local v1, "dx":F
    const/4 v2, 0x0

    .line 8858
    .local v2, "dy":F
    iget v3, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mWidth:I

    .line 8859
    .local v3, "dWidth":I
    iget v4, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mHeight:I

    .line 8860
    .local v4, "dHeight":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 8861
    .local v0, "maskWidth":I
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 8862
    .local v5, "maskHeight":I
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 8863
    .local v6, "srcWidth":I
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 8865
    .local v7, "srcHeight":I
    if-lez v3, :cond_71

    if-gtz v4, :cond_2a

    goto :goto_71

    .line 8869
    :cond_2a
    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_39

    .line 8870
    if-ne v3, v0, :cond_32

    if-eq v4, v5, :cond_39

    .line 8871
    :cond_32
    const/4 v9, 0x1

    invoke-static {v8, v3, v4, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 8875
    :cond_39
    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mSourceBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_70

    .line 8877
    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mSourceMatrix:Landroid/graphics/Matrix;

    if-nez v8, :cond_48

    .line 8878
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mSourceMatrix:Landroid/graphics/Matrix;

    .line 8881
    :cond_48
    const/4 v8, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    if-ge v6, v7, :cond_5f

    .line 8882
    int-to-float v10, v3

    int-to-float v11, v6

    div-float/2addr v10, v11

    iput v10, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mScale:F

    .line 8883
    int-to-float v11, v4

    int-to-float v12, v7

    mul-float/2addr v12, v10

    sub-float/2addr v11, v12

    mul-float v2, v11, v9

    .line 8884
    cmpl-float v8, v10, v8

    if-eqz v8, :cond_70

    .line 8885
    iput v2, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mDy:F

    goto :goto_70

    .line 8888
    :cond_5f
    int-to-float v10, v4

    int-to-float v11, v7

    div-float/2addr v10, v11

    iput v10, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mScale:F

    .line 8889
    int-to-float v11, v3

    int-to-float v12, v6

    mul-float/2addr v12, v10

    sub-float/2addr v11, v12

    mul-float v1, v11, v9

    .line 8890
    cmpl-float v8, v10, v8

    if-eqz v8, :cond_70

    .line 8891
    iput v1, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mDx:F

    .line 8895
    :cond_70
    :goto_70
    return-void

    .line 8866
    :cond_71
    :goto_71
    return-void

    .line 8853
    .end local v0    # "maskWidth":I
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v3    # "dWidth":I
    .end local v4    # "dHeight":I
    .end local v5    # "maskHeight":I
    .end local v6    # "srcWidth":I
    .end local v7    # "srcHeight":I
    :cond_72
    :goto_72
    return-void
.end method


# virtual methods
.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 8819
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 8821
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mSourceBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_c

    goto :goto_63

    .line 8825
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 8826
    .local v0, "drawBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 8828
    .local v1, "drawCanvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 8829
    .local v2, "sWidth":I
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 8830
    .local v3, "sHeight":I
    int-to-float v4, v2

    iget v5, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 8831
    .local v4, "dWidth":I
    int-to-float v6, v3

    mul-float/2addr v6, v5

    float-to-int v5, v6

    .line 8833
    .local v5, "dHeight":I
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 8834
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mSourceBitmap:Landroid/graphics/Bitmap;

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v8, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    iget v9, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mDx:F

    float-to-int v10, v9

    iget v11, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mDy:F

    float-to-int v12, v11

    float-to-int v9, v9

    add-int/2addr v9, v4

    float-to-int v11, v11

    add-int/2addr v11, v5

    invoke-direct {v8, v10, v12, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v9, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 8838
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 8839
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mMaskBitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mXferPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v8, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 8841
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 8842
    return-void

    .line 8822
    .end local v0    # "drawBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "drawCanvas":Landroid/graphics/Canvas;
    .end local v2    # "sWidth":I
    .end local v3    # "sHeight":I
    .end local v4    # "dWidth":I
    .end local v5    # "dHeight":I
    :cond_63
    :goto_63
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 8808
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 8809
    if-eqz p1, :cond_13

    .line 8810
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mHaveFrame:Z

    .line 8811
    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mWidth:I

    .line 8812
    sub-int v0, p5, p3

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mHeight:I

    .line 8813
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->configureBounds()V

    .line 8815
    :cond_13
    return-void
.end method

.method public blacklist setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 8795
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mSourceBitmap:Landroid/graphics/Bitmap;

    .line 8796
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->resizeBitmap()V

    .line 8797
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->invalidate()V

    .line 8798
    return-void
.end method

.method public blacklist setImageResource(I)V
    .registers 3
    .param p1, "resourceId"    # I

    .line 8801
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mSourceBitmap:Landroid/graphics/Bitmap;

    .line 8802
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->resizeBitmap()V

    .line 8803
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->invalidate()V

    .line 8804
    return-void
.end method

.method public blacklist setMaskImage(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 8789
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 8790
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->resizeBitmap()V

    .line 8791
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->invalidate()V

    .line 8792
    return-void
.end method
