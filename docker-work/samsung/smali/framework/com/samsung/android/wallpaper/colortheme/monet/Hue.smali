.class interface abstract Lcom/samsung/android/wallpaper/colortheme/monet/Hue;
.super Ljava/lang/Object;
.source "ColorScheme.java"


# virtual methods
.method public abstract blacklist get(Lcom/android/internal/graphics/cam/Cam;)D
.end method

.method public blacklist getHueRotation(FLjava/util/List;)D
    .registers 12
    .param p1, "sourceHue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Landroid/util/Pair;",
            ">;)D"
        }
    .end annotation

    .line 53
    .local p2, "hueAndRotations":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair;>;"
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_c

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v1, p1, v1

    if-gez v1, :cond_c

    move v0, p1

    :cond_c
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 54
    .local v0, "sanitizedSourceHue":F
    const/4 v1, 0x0

    .line 55
    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    .line 56
    .local v2, "var5":I
    if-gt v1, v2, :cond_61

    .line 58
    :goto_1d
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    int-to-float v3, v3

    .line 59
    .local v3, "thisHue":F
    add-int/lit8 v4, v1, 0x1

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    int-to-float v4, v4

    .line 60
    .local v4, "nextHue":F
    cmpg-float v5, v3, v0

    if-gtz v5, :cond_5a

    cmpg-float v5, v0, v4

    if-gez v5, :cond_5a

    .line 61
    float-to-double v5, v0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->wrapDegreesDouble(D)D

    move-result-wide v5

    return-wide v5

    .line 64
    :cond_5a
    if-ne v1, v2, :cond_5d

    .line 65
    goto :goto_61

    .line 68
    :cond_5d
    nop

    .end local v3    # "thisHue":F
    .end local v4    # "nextHue":F
    add-int/lit8 v1, v1, 0x1

    .line 69
    goto :goto_1d

    .line 72
    :cond_61
    :goto_61
    float-to-double v3, p1

    return-wide v3
.end method
