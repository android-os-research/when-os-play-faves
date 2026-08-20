.class public Landroid/test/ViewAsserts;
.super Ljava/lang/Object;
.source "ViewAsserts.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertBaselineAligned(Landroid/view/View;Landroid/view/View;)V
    .registers 6
    .param p0, "first"    # Landroid/view/View;
    .param p1, "second"    # Landroid/view/View;

    .line 125
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 126
    .local v0, "xy":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 127
    const/4 v1, 0x1

    aget v2, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getBaseline()I

    move-result v3

    add-int/2addr v2, v3

    .line 129
    .local v2, "firstTop":I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 130
    aget v1, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v3

    add-int/2addr v1, v3

    .line 132
    .local v1, "secondTop":I
    const-string v3, "views are not baseline aligned"

    invoke-static {v3, v2, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 133
    return-void
.end method

.method public static assertBottomAligned(Landroid/view/View;Landroid/view/View;)V
    .registers 6
    .param p0, "first"    # Landroid/view/View;
    .param p1, "second"    # Landroid/view/View;

    .line 217
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 218
    .local v0, "xy":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 219
    const/4 v1, 0x1

    aget v2, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 221
    .local v2, "firstBottom":I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 222
    aget v1, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    .line 224
    .local v1, "secondBottom":I
    const-string v3, "views are not bottom aligned"

    invoke-static {v3, v2, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 225
    return-void
.end method

.method public static assertBottomAligned(Landroid/view/View;Landroid/view/View;I)V
    .registers 8
    .param p0, "first"    # Landroid/view/View;
    .param p1, "second"    # Landroid/view/View;
    .param p2, "margin"    # I

    .line 236
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 237
    .local v0, "xy":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 238
    const/4 v1, 0x1

    aget v2, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 240
    .local v2, "firstBottom":I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 241
    aget v1, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    .line 243
    .local v1, "secondBottom":I
    sub-int v3, v2, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const-string v4, "views are not bottom aligned"

    invoke-static {v4, v3, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 244
    return-void
.end method

.method public static assertGroupContains(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 8
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;

    .line 348
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 349
    .local v0, "count":I
    const/4 v1, 0x0

    if-ltz v0, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    const-string v3, "Child count should be >= 0"

    invoke-static {v3, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 351
    const/4 v2, 0x0

    .line 352
    .local v2, "found":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v0, :cond_3c

    .line 353
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v4, p1, :cond_39

    .line 354
    if-nez v2, :cond_1d

    .line 355
    const/4 v2, 0x1

    goto :goto_39

    .line 357
    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "child "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is duplicated in parent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 352
    :cond_39
    :goto_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 362
    .end local v3    # "i":I
    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "group does not contain "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 363
    return-void
.end method

.method public static assertGroupIntegrity(Landroid/view/ViewGroup;)V
    .registers 5
    .param p0, "parent"    # Landroid/view/ViewGroup;

    .line 332
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 333
    .local v0, "count":I
    if-ltz v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    const-string v2, "child count should be >= 0"

    invoke-static {v2, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 335
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_28

    .line 336
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "group should not contain null children"

    invoke-static {v3, v2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 337
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-static {p0, v2}, Ljunit/framework/Assert;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 339
    .end local v1    # "i":I
    :cond_28
    return-void
.end method

.method public static assertGroupNotContains(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 7
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;

    .line 372
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 373
    .local v0, "count":I
    const/4 v1, 0x0

    if-ltz v0, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    const-string v3, "Child count should be >= 0"

    invoke-static {v3, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 375
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v0, :cond_37

    .line 376
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_34

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "child "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is found in parent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 375
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 380
    .end local v2    # "i":I
    :cond_37
    return-void
.end method

.method public static assertHasScreenCoordinates(Landroid/view/View;Landroid/view/View;II)V
    .registers 8
    .param p0, "origin"    # Landroid/view/View;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 107
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 108
    .local v1, "xy":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 110
    new-array v0, v0, [I

    .line 111
    .local v0, "xyRoot":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 113
    const/4 v2, 0x0

    aget v3, v1, v2

    aget v2, v0, v2

    sub-int/2addr v3, v2

    const-string v2, "x coordinate"

    invoke-static {v2, p2, v3}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 114
    const/4 v2, 0x1

    aget v3, v1, v2

    aget v2, v0, v2

    sub-int/2addr v3, v2

    const-string v2, "y coordinate"

    invoke-static {v2, p3, v3}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 115
    return-void
.end method

.method public static assertHorizontalCenterAligned(Landroid/view/View;Landroid/view/View;)V
    .registers 8
    .param p0, "reference"    # Landroid/view/View;
    .param p1, "test"    # Landroid/view/View;

    .line 291
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 292
    .local v1, "xy":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 293
    const/4 v2, 0x0

    aget v3, v1, v2

    .line 295
    .local v3, "referenceLeft":I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 296
    aget v2, v1, v2

    .line 298
    .local v2, "testLeft":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v0

    .line 299
    .local v4, "center":I
    sub-int v0, v2, v3

    .line 301
    .local v0, "delta":I
    const-string v5, "views are not horizontally center aligned"

    invoke-static {v5, v4, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 302
    return-void
.end method

.method public static assertLeftAligned(Landroid/view/View;Landroid/view/View;)V
    .registers 6
    .param p0, "first"    # Landroid/view/View;
    .param p1, "second"    # Landroid/view/View;

    .line 180
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 181
    .local v0, "xy":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 182
    const/4 v1, 0x0

    aget v2, v0, v1

    .line 184
    .local v2, "firstLeft":I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 185
    aget v1, v0, v1

    .line 187
    .local v1, "secondLeft":I
    const-string v3, "views are not left aligned"

    invoke-static {v3, v2, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 188
    return-void
.end method

.method public static assertLeftAligned(Landroid/view/View;Landroid/view/View;I)V
    .registers 8
    .param p0, "first"    # Landroid/view/View;
    .param p1, "second"    # Landroid/view/View;
    .param p2, "margin"    # I

    .line 199
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 200
    .local v0, "xy":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 201
    const/4 v1, 0x0

    aget v2, v0, v1

    .line 203
    .local v2, "firstLeft":I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 204
    aget v1, v0, v1

    .line 206
    .local v1, "secondLeft":I
    sub-int v3, v2, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const-string v4, "views are not left aligned"

    invoke-static {v4, v3, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 207
    return-void
.end method

.method public static assertOffScreenAbove(Landroid/view/View;Landroid/view/View;)V
    .registers 7
    .param p0, "origin"    # Landroid/view/View;
    .param p1, "view"    # Landroid/view/View;

    .line 87
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 88
    .local v1, "xy":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 90
    new-array v0, v0, [I

    .line 91
    .local v0, "xyRoot":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 93
    const/4 v2, 0x1

    aget v3, v1, v2

    aget v4, v0, v2

    sub-int/2addr v3, v4

    .line 95
    .local v3, "y":I
    if-gez v3, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    const-string v4, "view should have y location less than that of origin view"

    invoke-static {v4, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 97
    return-void
.end method

.method public static assertOffScreenBelow(Landroid/view/View;Landroid/view/View;)V
    .registers 8
    .param p0, "origin"    # Landroid/view/View;
    .param p1, "view"    # Landroid/view/View;

    .line 67
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 68
    .local v1, "xy":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 70
    new-array v0, v0, [I

    .line 71
    .local v0, "xyRoot":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 73
    const/4 v2, 0x1

    aget v3, v1, v2

    aget v4, v0, v2

    sub-int/2addr v3, v4

    .line 75
    .local v3, "y":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "view should have y location on screen greater than drawing height of origen view ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not greater than "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    if-le v3, v5, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v2, 0x0

    .line 75
    :goto_40
    invoke-static {v4, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 79
    return-void
.end method

.method public static assertOnScreen(Landroid/view/View;Landroid/view/View;)V
    .registers 9
    .param p0, "origin"    # Landroid/view/View;
    .param p1, "view"    # Landroid/view/View;

    .line 45
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 46
    .local v1, "xy":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 48
    new-array v0, v0, [I

    .line 49
    .local v0, "xyRoot":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 51
    const/4 v2, 0x1

    aget v3, v1, v2

    aget v4, v0, v2

    sub-int/2addr v3, v4

    .line 53
    .local v3, "y":I
    const/4 v4, 0x0

    if-ltz v3, :cond_16

    move v5, v2

    goto :goto_17

    :cond_16
    move v5, v4

    :goto_17
    const-string v6, "view should have positive y coordinate on screen"

    invoke-static {v6, v5}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 56
    nop

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-gt v3, v5, :cond_28

    goto :goto_29

    :cond_28
    move v2, v4

    .line 56
    :goto_29
    const-string v4, "view should have y location on screen less than drawing height of root view"

    invoke-static {v4, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 59
    return-void
.end method

.method public static assertRightAligned(Landroid/view/View;Landroid/view/View;)V
    .registers 6
    .param p0, "first"    # Landroid/view/View;
    .param p1, "second"    # Landroid/view/View;

    .line 143
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 144
    .local v0, "xy":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 145
    const/4 v1, 0x0

    aget v2, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 147
    .local v2, "firstRight":I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 148
    aget v1, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    .line 150
    .local v1, "secondRight":I
    const-string v3, "views are not right aligned"

    invoke-static {v3, v2, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 151
    return-void
.end method

.method public static assertRightAligned(Landroid/view/View;Landroid/view/View;I)V
    .registers 8
    .param p0, "first"    # Landroid/view/View;
    .param p1, "second"    # Landroid/view/View;
    .param p2, "margin"    # I

    .line 162
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 163
    .local v0, "xy":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 164
    const/4 v1, 0x0

    aget v2, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 166
    .local v2, "firstRight":I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 167
    aget v1, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    .line 169
    .local v1, "secondRight":I
    sub-int v3, v2, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const-string v4, "views are not right aligned"

    invoke-static {v4, v3, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 170
    return-void
.end method

.method public static assertTopAligned(Landroid/view/View;Landroid/view/View;)V
    .registers 6
    .param p0, "first"    # Landroid/view/View;
    .param p1, "second"    # Landroid/view/View;

    .line 254
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 255
    .local v0, "xy":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 256
    const/4 v1, 0x1

    aget v2, v0, v1

    .line 258
    .local v2, "firstTop":I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 259
    aget v1, v0, v1

    .line 261
    .local v1, "secondTop":I
    const-string v3, "views are not top aligned"

    invoke-static {v3, v2, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 262
    return-void
.end method

.method public static assertTopAligned(Landroid/view/View;Landroid/view/View;I)V
    .registers 8
    .param p0, "first"    # Landroid/view/View;
    .param p1, "second"    # Landroid/view/View;
    .param p2, "margin"    # I

    .line 273
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 274
    .local v0, "xy":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 275
    const/4 v1, 0x1

    aget v2, v0, v1

    .line 277
    .local v2, "firstTop":I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 278
    aget v1, v0, v1

    .line 280
    .local v1, "secondTop":I
    sub-int v3, v2, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const-string v4, "views are not top aligned"

    invoke-static {v4, v3, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 281
    return-void
.end method

.method public static assertVerticalCenterAligned(Landroid/view/View;Landroid/view/View;)V
    .registers 8
    .param p0, "reference"    # Landroid/view/View;
    .param p1, "test"    # Landroid/view/View;

    .line 312
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 313
    .local v1, "xy":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 314
    const/4 v2, 0x1

    aget v3, v1, v2

    .line 316
    .local v3, "referenceTop":I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 317
    aget v2, v1, v2

    .line 319
    .local v2, "testTop":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v0

    .line 320
    .local v4, "center":I
    sub-int v0, v2, v3

    .line 322
    .local v0, "delta":I
    const-string v5, "views are not vertically center aligned"

    invoke-static {v5, v4, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 323
    return-void
.end method
