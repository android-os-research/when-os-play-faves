.class public Landroid/graphics/drawable/PaintDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "PaintDrawable.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 33
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "color"    # I

    .line 35
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 36
    invoke-virtual {p0}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    return-void
.end method


# virtual methods
.method protected whitelist inflateTag(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z
    .registers 21
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "r"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 75
    move-object/from16 v0, p0

    const-string v1, "corners"

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 76
    sget-object v1, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 78
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 80
    .local v6, "radius":I
    int-to-float v7, v6

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 84
    const/4 v7, 0x1

    invoke-virtual {v1, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 86
    .local v8, "topLeftRadius":I
    const/4 v9, 0x2

    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    .line 88
    .local v10, "topRightRadius":I
    const/4 v11, 0x3

    invoke-virtual {v1, v11, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    .line 90
    .local v12, "bottomLeftRadius":I
    const/4 v13, 0x4

    invoke-virtual {v1, v13, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    .line 93
    .local v14, "bottomRightRadius":I
    if-ne v8, v6, :cond_3b

    if-ne v10, v6, :cond_3b

    if-ne v12, v6, :cond_3b

    if-eq v14, v6, :cond_5e

    .line 95
    :cond_3b
    const/16 v15, 0x8

    new-array v15, v15, [F

    int-to-float v13, v8

    aput v13, v15, v5

    int-to-float v5, v8

    aput v5, v15, v7

    int-to-float v5, v10

    aput v5, v15, v9

    int-to-float v5, v10

    aput v5, v15, v11

    int-to-float v5, v12

    const/4 v9, 0x4

    aput v5, v15, v9

    const/4 v5, 0x5

    int-to-float v9, v12

    aput v9, v15, v5

    const/4 v5, 0x6

    int-to-float v9, v14

    aput v9, v15, v5

    const/4 v5, 0x7

    int-to-float v9, v14

    aput v9, v15, v5

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    .line 102
    :cond_5e
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    return v7

    .line 105
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "radius":I
    .end local v8    # "topLeftRadius":I
    .end local v10    # "topRightRadius":I
    .end local v12    # "bottomLeftRadius":I
    .end local v14    # "bottomRightRadius":I
    :cond_62
    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-super/range {p0 .. p4}, Landroid/graphics/drawable/ShapeDrawable;->inflateTag(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z

    move-result v1

    return v1
.end method

.method public whitelist setCornerRadii([F)V
    .registers 4
    .param p1, "radii"    # [F

    .line 62
    const/4 v0, 0x0

    if-nez p1, :cond_d

    .line 63
    invoke-virtual {p0}, Landroid/graphics/drawable/PaintDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 64
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    goto :goto_15

    .line 67
    :cond_d
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, p1, v0, v0}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 69
    :cond_15
    :goto_15
    invoke-virtual {p0}, Landroid/graphics/drawable/PaintDrawable;->invalidateSelf()V

    .line 70
    return-void
.end method

.method public whitelist setCornerRadius(F)V
    .registers 5
    .param p1, "radius"    # F

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "radii":[F
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_12

    .line 47
    const/16 v1, 0x8

    new-array v0, v1, [F

    .line 48
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_12

    .line 49
    aput p1, v0, v2

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 52
    .end local v2    # "i":I
    :cond_12
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    .line 53
    return-void
.end method
