.class public Lcom/android/server/wm/utils/InsetUtils;
.super Ljava/lang/Object;
.source "InsetUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4

    .line 63
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 64
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 65
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 66
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public static insetsBetweenFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 10

    if-nez p1, :cond_6

    .line 83
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    .line 86
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 87
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 88
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    .line 89
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    .line 90
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    .line 91
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    .line 92
    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 88
    invoke-virtual {p2, v2, v4, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static rotateInsets(Landroid/graphics/Rect;I)V
    .registers 5

    if-eqz p1, :cond_45

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2e

    const/4 v0, 0x3

    if-ne p1, v0, :cond_17

    .line 52
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_45

    .line 55
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown rotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_2e
    iget p1, p0, Landroid/graphics/Rect;->right:I

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_45

    .line 46
    :cond_3a
    iget p1, p0, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_45
    :goto_45
    return-void
.end method
