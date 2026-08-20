.class public Landroid/widget/ScrollBarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ScrollBarDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private greylist-max-o mAlpha:I

.field private greylist-max-o mAlwaysDrawHorizontalTrack:Z

.field private greylist-max-o mAlwaysDrawVerticalTrack:Z

.field private greylist-max-o mBoundsChanged:Z

.field private final blacklist mClickableThumbRect:Landroid/graphics/Rect;

.field private greylist-max-o mColorFilter:Landroid/graphics/ColorFilter;

.field private greylist-max-o mExtent:I

.field private greylist-max-o mHasSetAlpha:Z

.field private greylist-max-o mHasSetColorFilter:Z

.field private greylist-max-o mHorizontalThumb:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mHorizontalTrack:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mMutated:Z

.field private greylist-max-o mOffset:I

.field private greylist-max-o mRange:I

.field private greylist-max-o mRangeChanged:Z

.field private blacklist mSemParent:Landroid/view/View;

.field private greylist-max-o mVertical:Z

.field private greylist-max-p mVerticalThumb:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mVerticalTrack:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 64
    const/16 v0, 0xff

    iput v0, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ScrollBarDrawable;->mClickableThumbRect:Landroid/graphics/Rect;

    .line 79
    return-void
.end method

.method public constructor greylist <init>(Landroid/view/View;)V
    .registers 4
    .param p1, "parent"    # Landroid/view/View;

    .line 82
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 64
    const/16 v0, 0xff

    iput v0, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ScrollBarDrawable;->mClickableThumbRect:Landroid/graphics/Rect;

    .line 83
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mSemParent:Landroid/view/View;

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    return-void
.end method

.method private greylist-max-o drawThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "vertical"    # Z

    .line 238
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mClickableThumbRect:Landroid/graphics/Rect;

    .line 240
    .local v0, "clickableThumbRect":Landroid/graphics/Rect;
    iget-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mRangeChanged:Z

    if-nez v1, :cond_d

    iget-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    if-eqz v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x1

    .line 241
    .local v1, "changed":Z
    :goto_e
    if-eqz p5, :cond_3a

    .line 242
    iget-object v2, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_63

    .line 243
    iget-object v2, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    .line 244
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_36

    .line 245
    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p3

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, p3

    add-int/2addr v6, p4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 251
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 253
    iget-object v3, p0, Landroid/widget/ScrollBarDrawable;->mSemParent:Landroid/view/View;

    if-eqz v3, :cond_36

    .line 254
    iget-object v3, v3, Landroid/view/View;->mSemVerticalScrollbarRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 260
    :cond_36
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 261
    .end local v2    # "thumb":Landroid/graphics/drawable/Drawable;
    goto :goto_63

    .line 263
    :cond_3a
    iget-object v2, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_63

    .line 264
    iget-object v2, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    .line 265
    .restart local v2    # "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_60

    .line 266
    iget v3, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, p3

    add-int/2addr v5, p4

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 272
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 274
    iget-object v3, p0, Landroid/widget/ScrollBarDrawable;->mSemParent:Landroid/view/View;

    if-eqz v3, :cond_60

    .line 275
    iget-object v3, v3, Landroid/view/View;->mSemHorizontalScrollbarRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 281
    :cond_60
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 284
    .end local v2    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_63
    :goto_63
    return-void
.end method

.method private greylist-max-o drawTrack(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "vertical"    # Z

    .line 220
    if-eqz p3, :cond_5

    .line 221
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    .local v0, "track":Landroid/graphics/drawable/Drawable;
    goto :goto_7

    .line 223
    .end local v0    # "track":Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    .line 226
    .restart local v0    # "track":Landroid/graphics/drawable/Drawable;
    :goto_7
    if-eqz v0, :cond_13

    .line 227
    iget-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    if-eqz v1, :cond_10

    .line 228
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 230
    :cond_10
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 232
    :cond_13
    return-void
.end method

.method private greylist-max-o propagateCurrentState(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 362
    if-eqz p1, :cond_25

    .line 363
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mMutated:Z

    if-eqz v0, :cond_9

    .line 364
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 367
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ScrollBarDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 368
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 370
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetAlpha:Z

    if-eqz v0, :cond_1c

    .line 371
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 374
    :cond_1c
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetColorFilter:Z

    if-eqz v0, :cond_25

    .line 375
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 378
    :cond_25
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 152
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v8, v6, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    .line 153
    .local v8, "vertical":Z
    iget v9, v6, Landroid/widget/ScrollBarDrawable;->mExtent:I

    .line 154
    .local v9, "extent":I
    iget v10, v6, Landroid/widget/ScrollBarDrawable;->mRange:I

    .line 156
    .local v10, "range":I
    const/4 v0, 0x1

    .line 157
    .local v0, "drawTrack":Z
    const/4 v1, 0x1

    .line 158
    .local v1, "drawThumb":Z
    if-lez v9, :cond_14

    if-gt v10, v9, :cond_11

    goto :goto_14

    :cond_11
    move v11, v0

    move v12, v1

    goto :goto_1f

    .line 159
    :cond_14
    :goto_14
    if-eqz v8, :cond_19

    iget-boolean v2, v6, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    goto :goto_1b

    :cond_19
    iget-boolean v2, v6, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    :goto_1b
    move v0, v2

    .line 160
    const/4 v1, 0x0

    move v11, v0

    move v12, v1

    .line 163
    .end local v0    # "drawTrack":Z
    .end local v1    # "drawThumb":Z
    .local v11, "drawTrack":Z
    .local v12, "drawThumb":Z
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollBarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 164
    .local v13, "r":Landroid/graphics/Rect;
    iget v0, v13, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, v13, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, v13, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->quickReject(FFFF)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 165
    return-void

    .line 168
    :cond_36
    if-eqz v11, :cond_3b

    .line 169
    invoke-direct {v6, v7, v13, v8}, Landroid/widget/ScrollBarDrawable;->drawTrack(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    .line 172
    :cond_3b
    if-eqz v12, :cond_6e

    .line 173
    if-eqz v8, :cond_44

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_48

    :cond_44
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_48
    move v14, v0

    .line 174
    .local v14, "scrollBarLength":I
    if-eqz v8, :cond_50

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_54

    :cond_50
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_54
    move v15, v0

    .line 175
    .local v15, "thickness":I
    nop

    .line 176
    invoke-static {v14, v15, v9, v10}, Lcom/android/internal/widget/ScrollBarUtils;->getThumbLength(IIII)I

    move-result v5

    .line 177
    .local v5, "thumbLength":I
    iget v0, v6, Landroid/widget/ScrollBarDrawable;->mOffset:I

    .line 178
    invoke-static {v14, v5, v9, v10, v0}, Lcom/android/internal/widget/ScrollBarUtils;->getThumbOffset(IIIII)I

    move-result v16

    .line 181
    .local v16, "thumbOffset":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move/from16 v3, v16

    move v4, v5

    move/from16 v17, v5

    .end local v5    # "thumbLength":I
    .local v17, "thumbLength":I
    move v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/widget/ScrollBarDrawable;->drawThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V

    .line 183
    .end local v14    # "scrollBarLength":I
    .end local v15    # "thickness":I
    .end local v16    # "thumbOffset":I
    .end local v17    # "thumbLength":I
    :cond_6e
    return-void
.end method

.method public whitelist getAlpha()I
    .registers 2

    .line 431
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    return v0
.end method

.method public greylist-max-o getAlwaysDrawHorizontalTrack()Z
    .registers 2

    .line 131
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    return v0
.end method

.method public greylist-max-o getAlwaysDrawVerticalTrack()Z
    .registers 2

    .line 121
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    return v0
.end method

.method public whitelist getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 455
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public blacklist getHorizontalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 324
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getHorizontalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 317
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getOpacity()I
    .registers 2

    .line 460
    const/4 v0, -0x3

    return v0
.end method

.method public greylist-max-o getSize(Z)I
    .registers 4
    .param p1, "vertical"    # Z

    .line 381
    const/4 v0, 0x0

    if-eqz p1, :cond_15

    .line 382
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_14

    .line 383
    :cond_c
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 382
    :cond_14
    :goto_14
    return v0

    .line 385
    :cond_15
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_26

    .line 386
    :cond_1e
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 385
    :cond_26
    :goto_26
    return v0
.end method

.method public blacklist getVerticalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 310
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getVerticalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 303
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 465
    invoke-virtual {p0}, Landroid/widget/ScrollBarDrawable;->invalidateSelf()V

    .line 466
    return-void
.end method

.method public whitelist isStateful()Z
    .registers 2

    .line 193
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2e

    :cond_a
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    .line 194
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2e

    :cond_14
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1e

    .line 195
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2e

    :cond_1e
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_28

    .line 196
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 197
    :cond_28
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_2e
    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    .line 193
    :goto_31
    return v0
.end method

.method public bridge synthetic whitelist mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 46
    invoke-virtual {p0}, Landroid/widget/ScrollBarDrawable;->mutate()Landroid/widget/ScrollBarDrawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist mutate()Landroid/widget/ScrollBarDrawable;
    .registers 2

    .line 392
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mMutated:Z

    if-nez v0, :cond_29

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_29

    .line 393
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    .line 394
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 396
    :cond_11
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    .line 397
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 399
    :cond_18
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1f

    .line 400
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 402
    :cond_1f
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_26

    .line 403
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 405
    :cond_26
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mMutated:Z

    .line 407
    :cond_29
    return-object p0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 187
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    .line 189
    return-void
.end method

.method protected whitelist onStateChange([I)Z
    .registers 4
    .param p1, "state"    # [I

    .line 202
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    .line 203
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d

    .line 204
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 206
    :cond_d
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_16

    .line 207
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 209
    :cond_16
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1f

    .line 210
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 212
    :cond_1f
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_28

    .line 213
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 215
    :cond_28
    return v0
.end method

.method public whitelist scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 5
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 470
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/ScrollBarDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 471
    return-void
.end method

.method public whitelist setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .line 412
    iput p1, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetAlpha:Z

    .line 415
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 416
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 418
    :cond_c
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    .line 419
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 421
    :cond_13
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    .line 422
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 424
    :cond_1a
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_21

    .line 425
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 427
    :cond_21
    return-void
.end method

.method public greylist-max-o setAlwaysDrawHorizontalTrack(Z)V
    .registers 2
    .param p1, "alwaysDrawTrack"    # Z

    .line 99
    iput-boolean p1, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    .line 100
    return-void
.end method

.method public greylist-max-o setAlwaysDrawVerticalTrack(Z)V
    .registers 2
    .param p1, "alwaysDrawTrack"    # Z

    .line 111
    iput-boolean p1, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    .line 112
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 436
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetColorFilter:Z

    .line 439
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 440
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 442
    :cond_c
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    .line 443
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 445
    :cond_13
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    .line 446
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 448
    :cond_1a
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_21

    .line 449
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 451
    :cond_21
    return-void
.end method

.method public greylist-max-p setHorizontalThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .line 344
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 345
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 348
    :cond_8
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 349
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    .line 350
    return-void
.end method

.method public greylist-max-o setHorizontalTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .line 353
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 354
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 357
    :cond_8
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 358
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    .line 359
    return-void
.end method

.method public greylist-max-o setParameters(IIIZ)V
    .registers 7
    .param p1, "range"    # I
    .param p2, "offset"    # I
    .param p3, "extent"    # I
    .param p4, "vertical"    # Z

    .line 135
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    const/4 v1, 0x1

    if-eq v0, p4, :cond_9

    .line 136
    iput-boolean p4, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    .line 138
    iput-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    .line 141
    :cond_9
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    if-ne v0, p1, :cond_15

    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    if-ne v0, p2, :cond_15

    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    if-eq v0, p3, :cond_1d

    .line 142
    :cond_15
    iput p1, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    .line 143
    iput p2, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    .line 144
    iput p3, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    .line 146
    iput-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mRangeChanged:Z

    .line 148
    :cond_1d
    return-void
.end method

.method public greylist-max-p setVerticalThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .line 291
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 292
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 295
    :cond_8
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 296
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    .line 297
    return-void
.end method

.method public greylist-max-o setVerticalTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .line 331
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 332
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 335
    :cond_8
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 336
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    .line 337
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollBarDrawable: range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 481
    iget-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    if-eqz v1, :cond_30

    const-string v1, " V"

    goto :goto_32

    :cond_30
    const-string v1, " H"

    :goto_32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    return-object v0
.end method

.method public whitelist unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 475
    invoke-virtual {p0, p2}, Landroid/widget/ScrollBarDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 476
    return-void
.end method
