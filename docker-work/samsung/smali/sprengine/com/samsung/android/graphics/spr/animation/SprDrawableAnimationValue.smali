.class public Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;
.super Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;
.source "SprDrawableAnimationValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;
    }
.end annotation


# instance fields
.field private final mAnimatingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/samsung/android/graphics/spr/document/SprDocument;)V
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "document"    # Lcom/samsung/android/graphics/spr/document/SprDocument;

    .line 37
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;-><init>(BLandroid/graphics/drawable/Drawable;Lcom/samsung/android/graphics/spr/document/SprDocument;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    .line 38
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 191
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 192
    iput-boolean v1, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mIsRunning:Z

    .line 193
    return-void

    .line 196
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 198
    .local v2, "now":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_75

    .line 199
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;

    .line 201
    .local v4, "animatorData":Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;
    iget-boolean v5, v4, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->isRunning:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_64

    .line 202
    const/4 v5, 0x0

    .line 204
    .local v5, "preDraw":Z
    iget-wide v7, v4, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->startTime:J

    iget-wide v9, v4, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->duration:J

    add-long/2addr v7, v9

    cmp-long v7, v2, v7

    if-lez v7, :cond_56

    .line 205
    invoke-virtual {p0, v4, v6}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->updateAnimatorData(Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;Z)Z

    move-result v5

    .line 207
    iget-object v7, v4, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->cancel()V

    .line 209
    iget v7, v4, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->repeatCount:I

    if-eqz v7, :cond_4e

    .line 210
    iget-object v7, v4, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 211
    iput-wide v2, v4, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->startTime:J

    .line 217
    iget v7, v4, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->repeatCount:I

    if-lez v7, :cond_5a

    .line 218
    iget v7, v4, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->repeatCount:I

    sub-int/2addr v7, v6

    iput v7, v4, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->repeatCount:I

    goto :goto_5a

    .line 213
    :cond_4e
    iget-object v7, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 214
    add-int/lit8 v0, v0, -0x1

    .line 215
    goto :goto_73

    .line 221
    :cond_56
    invoke-virtual {p0, v4, v1}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->updateAnimatorData(Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;Z)Z

    move-result v5

    .line 224
    :cond_5a
    :goto_5a
    if-eqz v5, :cond_63

    .line 225
    iget-object v7, v4, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->object:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    iget-object v8, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-virtual {v7, v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;)V

    .line 227
    .end local v5    # "preDraw":Z
    :cond_63
    goto :goto_73

    .line 228
    :cond_64
    iget-wide v7, v4, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->startTime:J

    cmp-long v5, v2, v7

    if-lez v5, :cond_73

    .line 229
    iget-object v5, v4, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 230
    iput-wide v2, v4, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->startTime:J

    .line 231
    iput-boolean v6, v4, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->isRunning:Z

    .line 198
    .end local v4    # "animatorData":Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;
    :cond_73
    :goto_73
    add-int/2addr v0, v6

    goto :goto_11

    .line 236
    .end local v0    # "i":I
    :cond_75
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_86

    .line 237
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mInterval:I

    int-to-long v4, v1

    add-long/2addr v4, v2

    invoke-virtual {v0, p0, v4, v5}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 240
    :cond_86
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 241
    return-void
.end method

.method public start()V
    .registers 12

    .line 42
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->start()V

    .line 44
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 48
    .local v0, "now":J
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getValueAnimationObjects()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_fc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 49
    .local v3, "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    const/4 v4, 0x0

    .line 50
    .local v4, "animator":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;
    const/4 v5, 0x0

    .line 51
    .local v5, "matrix":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;
    const/4 v6, 0x0

    .line 52
    .local v6, "fill":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
    const/4 v7, 0x0

    .line 54
    .local v7, "stroke":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
    iget-object v8, v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    .line 55
    .local v9, "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    iget-byte v10, v9, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    sparse-switch v10, :sswitch_data_102

    goto :goto_4e

    .line 57
    :sswitch_3e
    move-object v4, v9

    check-cast v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;

    .line 58
    goto :goto_4e

    .line 60
    :sswitch_42
    move-object v5, v9

    check-cast v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    .line 61
    goto :goto_4e

    .line 66
    :sswitch_46
    move-object v7, v9

    check-cast v7, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    goto :goto_4e

    .line 63
    :sswitch_4a
    move-object v6, v9

    check-cast v6, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    .line 64
    nop

    .line 69
    .end local v9    # "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    :goto_4e
    goto :goto_2c

    .line 70
    :cond_4f
    if-eqz v4, :cond_fa

    .line 71
    new-instance v8, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;-><init>(Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$1;)V

    .line 72
    .local v8, "animatorData":Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, v8, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->animatorSet:Landroid/animation/AnimatorSet;

    .line 73
    iget-object v9, v8, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->getAnimators()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 75
    const/4 v9, 0x0

    if-nez v6, :cond_95

    .line 76
    iget-boolean v10, v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->hasFillAnimation:Z

    if-eqz v10, :cond_75

    .line 77
    new-instance v10, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-direct {v10}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>()V

    move-object v6, v10

    goto :goto_7b

    .line 79
    :cond_75
    new-instance v10, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-direct {v10, v9, v9}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>(BI)V

    move-object v6, v10

    .line 82
    :goto_7b
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    .line 84
    :try_start_82
    invoke-virtual {v6}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
    :try_end_88
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_82 .. :try_end_88} :catch_8e

    move-object v6, v10

    .line 87
    nop

    .line 88
    invoke-virtual {v3, v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    goto :goto_95

    .line 85
    :catch_8e
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 90
    .end local v2    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_95
    :goto_95
    if-nez v7, :cond_c2

    .line 91
    iget-boolean v10, v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->hasStrokeAnimation:Z

    if-eqz v10, :cond_a2

    .line 92
    new-instance v9, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    invoke-direct {v9}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;-><init>()V

    move-object v7, v9

    goto :goto_a8

    .line 94
    :cond_a2
    new-instance v10, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    invoke-direct {v10, v9, v9}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;-><init>(BI)V

    move-object v7, v10

    .line 97
    :goto_a8
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    .line 99
    :try_start_af
    invoke-virtual {v7}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
    :try_end_b5
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_af .. :try_end_b5} :catch_bb

    move-object v7, v9

    .line 102
    nop

    .line 103
    invoke-virtual {v3, v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    goto :goto_c2

    .line 100
    :catch_bb
    move-exception v2

    .line 101
    .restart local v2    # "e":Ljava/lang/CloneNotSupportedException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 105
    .end local v2    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_c2
    :goto_c2
    if-nez v5, :cond_e2

    .line 107
    new-instance v9, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    invoke-direct {v9}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;-><init>()V

    move-object v5, v9

    .line 108
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    .line 110
    :try_start_d1
    invoke-virtual {v5}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    move-result-object v9
    :try_end_d5
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_d1 .. :try_end_d5} :catch_db

    move-object v5, v9

    .line 113
    nop

    .line 114
    invoke-virtual {v3, v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    goto :goto_e2

    .line 111
    :catch_db
    move-exception v2

    .line 112
    .restart local v2    # "e":Ljava/lang/CloneNotSupportedException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 117
    .end local v2    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_e2
    :goto_e2
    iput-object v5, v8, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->matrix:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    .line 118
    iput-object v6, v8, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->fillPaint:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    .line 119
    iput-object v7, v8, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->strokePaint:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    .line 120
    iput-object v3, v8, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->object:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 121
    iput-wide v0, v8, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->startTime:J

    .line 122
    iget v9, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->duration:I

    int-to-long v9, v9

    iput-wide v9, v8, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->duration:J

    .line 123
    iget v9, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->repeatCount:I

    iput v9, v8, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->repeatCount:I

    .line 125
    iget-object v9, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v3    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .end local v4    # "animator":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;
    .end local v5    # "matrix":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;
    .end local v6    # "fill":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
    .end local v7    # "stroke":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
    .end local v8    # "animatorData":Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;
    :cond_fa
    goto/16 :goto_16

    .line 129
    :cond_fc
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p0, v0, v1}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 130
    return-void

    :sswitch_data_102
    .sparse-switch
        0x20 -> :sswitch_4a
        0x23 -> :sswitch_46
        0x40 -> :sswitch_42
        0x61 -> :sswitch_3e
    .end sparse-switch
.end method

.method public stop()V
    .registers 4

    .line 134
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->stop()V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;

    .line 137
    .local v1, "animatorData":Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;
    iget-object v2, v1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 138
    .end local v1    # "animatorData":Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;
    goto :goto_9

    .line 139
    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    return-void
.end method

.method public update()V
    .registers 4

    .line 144
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->update()V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;

    .line 147
    .local v1, "animatorData":Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->updateAnimatorData(Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;Z)Z

    .line 148
    .end local v1    # "animatorData":Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;
    goto :goto_9

    .line 149
    :cond_1a
    return-void
.end method

.method public updateAnimatorData(Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;Z)Z
    .registers 9
    .param p1, "animatorData"    # Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;
    .param p2, "isLastFrame"    # Z

    .line 152
    iget-object v0, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iput-boolean p2, v0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isLastFrame:Z

    .line 153
    iget-object v0, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget-object v1, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget-object v2, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget-object v4, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedStrokeColor:Z

    iput-boolean v5, v3, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedFillColor:Z

    iput-boolean v5, v2, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedTranslate:Z

    iput-boolean v5, v1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedRotate:Z

    iput-boolean v5, v0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedScale:Z

    .line 154
    iget-object v0, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget-object v1, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->object:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    iget v1, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->alpha:F

    iput v1, v0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->alpha:F

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "preDraw":Z
    iget-object v1, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 158
    .local v2, "animator":Landroid/animation/Animator;
    move-object v3, v2

    check-cast v3, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;

    iget-object v4, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    invoke-virtual {v3, v4}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->update(Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 159
    const/4 v0, 0x1

    .line 161
    .end local v2    # "animator":Landroid/animation/Animator;
    :cond_44
    goto :goto_2c

    .line 163
    :cond_45
    iget-object v1, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->matrix:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;->reset()V

    .line 164
    iget-object v1, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget-boolean v1, v1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedScale:Z

    if-eqz v1, :cond_67

    .line 165
    iget-object v1, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->matrix:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    iget-object v1, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->scaleX:F

    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v3, v3, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->scaleY:F

    iget-object v4, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->scalePivotX:F

    iget-object v5, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v5, v5, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->scalePivotY:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 169
    :cond_67
    iget-object v1, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget-boolean v1, v1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedRotate:Z

    if-eqz v1, :cond_80

    .line 170
    iget-object v1, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->matrix:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    iget-object v1, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->rotateDegree:F

    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v3, v3, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->rotatePivotX:F

    iget-object v4, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->rotatePivotY:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 173
    :cond_80
    iget-object v1, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget-boolean v1, v1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedTranslate:Z

    if-eqz v1, :cond_95

    .line 174
    iget-object v1, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->matrix:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    iget-object v1, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->translateDx:F

    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v3, v3, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->translateDy:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 178
    :cond_95
    iget-object v1, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget-boolean v1, v1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedFillColor:Z

    if-eqz v1, :cond_a3

    .line 179
    iget-object v1, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->fillPaint:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    iget-object v2, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->fillColor:I

    iput v2, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->color:I

    .line 181
    :cond_a3
    iget-object v1, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget-boolean v1, v1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedStrokeColor:Z

    if-eqz v1, :cond_b1

    .line 182
    iget-object v1, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->strokePaint:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    iget-object v2, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->strokeColor:I

    iput v2, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    .line 184
    :cond_b1
    iget-object v1, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->object:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    iget-object v2, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->alpha:F

    iput v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->alpha:F

    .line 186
    return v0
.end method
