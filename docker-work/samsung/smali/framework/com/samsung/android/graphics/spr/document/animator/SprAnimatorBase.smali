.class public abstract Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;
.super Landroid/animation/ValueAnimator;
.source "SprAnimatorBase.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;
    }
.end annotation


# static fields
.field public static final blacklist INTERPOLATOR_TYPE_ACCELERATE:B = 0x2t

.field public static final blacklist INTERPOLATOR_TYPE_ACCELERATE_DECELERATE:B = 0x1t

.field public static final blacklist INTERPOLATOR_TYPE_ANTICIPATE:B = 0x3t

.field public static final blacklist INTERPOLATOR_TYPE_ANTICIPATE_OVERSHOOT:B = 0x4t

.field public static final blacklist INTERPOLATOR_TYPE_BACKEASEIN:B = 0xat

.field public static final blacklist INTERPOLATOR_TYPE_BACKEASEINOUT:B = 0xct

.field public static final blacklist INTERPOLATOR_TYPE_BACKEASEOUT:B = 0xbt

.field public static final blacklist INTERPOLATOR_TYPE_BOUNCE:B = 0x5t

.field public static final blacklist INTERPOLATOR_TYPE_BOUNCEEASEIN:B = 0xdt

.field public static final blacklist INTERPOLATOR_TYPE_BOUNCEEASEINOUT:B = 0xft

.field public static final blacklist INTERPOLATOR_TYPE_BOUNCEEASEOUT:B = 0xet

.field public static final blacklist INTERPOLATOR_TYPE_CIRCEASEIN:B = 0x10t

.field public static final blacklist INTERPOLATOR_TYPE_CIRCEASEINOUT:B = 0x12t

.field public static final blacklist INTERPOLATOR_TYPE_CIRCEASEOUT:B = 0x11t

.field public static final blacklist INTERPOLATOR_TYPE_CUBICEASEIN:B = 0x13t

.field public static final blacklist INTERPOLATOR_TYPE_CUBICEASEINOUT:B = 0x15t

.field public static final blacklist INTERPOLATOR_TYPE_CUBICEASEOUT:B = 0x14t

.field public static final blacklist INTERPOLATOR_TYPE_CYCLE:B = 0x6t

.field public static final blacklist INTERPOLATOR_TYPE_DECELERATE:B = 0x7t

.field public static final blacklist INTERPOLATOR_TYPE_ELASTICEASEIN:B = 0x16t

.field public static final blacklist INTERPOLATOR_TYPE_ELASTICEASEINOUT:B = 0x18t

.field public static final blacklist INTERPOLATOR_TYPE_ELASTICEASEOUT:B = 0x17t

.field public static final blacklist INTERPOLATOR_TYPE_EXPOEASEIN:B = 0x19t

.field public static final blacklist INTERPOLATOR_TYPE_EXPOEASEINOUT:B = 0x1bt

.field public static final blacklist INTERPOLATOR_TYPE_EXPOEASEOUT:B = 0x1at

.field public static final blacklist INTERPOLATOR_TYPE_LINEAR:B = 0x8t

.field public static final blacklist INTERPOLATOR_TYPE_OVERSHOOT:B = 0x9t

.field public static final blacklist INTERPOLATOR_TYPE_QUADEASEIN:B = 0x1ct

.field public static final blacklist INTERPOLATOR_TYPE_QUADEASEINOUT:B = 0x1et

.field public static final blacklist INTERPOLATOR_TYPE_QUADEASEOUT:B = 0x1dt

.field public static final blacklist INTERPOLATOR_TYPE_QUARTEASEIN:B = 0x1ft

.field public static final blacklist INTERPOLATOR_TYPE_QUARTEASEINOUT:B = 0x21t

.field public static final blacklist INTERPOLATOR_TYPE_QUARTEASEOUT:B = 0x20t

.field public static final blacklist INTERPOLATOR_TYPE_QUINTEASEIN:B = 0x22t

.field public static final blacklist INTERPOLATOR_TYPE_QUINTEASEINOUT:B = 0x24t

.field public static final blacklist INTERPOLATOR_TYPE_QUINTEASEOUT:B = 0x23t

.field public static final blacklist INTERPOLATOR_TYPE_QUINTOUT50:B = 0x28t

.field public static final blacklist INTERPOLATOR_TYPE_QUINTOUT80:B = 0x29t

.field public static final blacklist INTERPOLATOR_TYPE_SINEEASEIN:B = 0x25t

.field public static final blacklist INTERPOLATOR_TYPE_SINEEASEINOUT:B = 0x27t

.field public static final blacklist INTERPOLATOR_TYPE_SINEEASEOUT:B = 0x26t

.field public static final blacklist INTERPOLATOR_TYPE_SINEIN33:B = 0x2at

.field public static final blacklist INTERPOLATOR_TYPE_SINEINOUT33:B = 0x2bt

.field public static final blacklist INTERPOLATOR_TYPE_SINEINOUT50:B = 0x2ct

.field public static final blacklist INTERPOLATOR_TYPE_SINEINOUT60:B = 0x2dt

.field public static final blacklist INTERPOLATOR_TYPE_SINEINOUT70:B = 0x2et

.field public static final blacklist INTERPOLATOR_TYPE_SINEINOUT80:B = 0x2ft

.field public static final blacklist INTERPOLATOR_TYPE_SINEINOUT90:B = 0x30t

.field public static final blacklist INTERPOLATOR_TYPE_SINEOUT33:B = 0x31t

.field public static final blacklist REPEAT_MODE_RESTART:B = 0x2t

.field public static final blacklist REPEAT_MODE_REVERSE:B = 0x1t

.field public static final blacklist TYPE_ALPHA:B = 0x6t

.field public static final blacklist TYPE_FILL_COLOR:B = 0x5t

.field public static final blacklist TYPE_NONE:B = 0x0t

.field public static final blacklist TYPE_ROTATE:B = 0x3t

.field public static final blacklist TYPE_SCALE:B = 0x2t

.field public static final blacklist TYPE_STROKE_COLOR:B = 0x4t

.field public static final blacklist TYPE_TRANSLATE:B = 0x1t


# instance fields
.field private blacklist mInterpolatorAmplitude:F

.field private blacklist mInterpolatorCycle:F

.field private blacklist mInterpolatorOvershot:F

.field private blacklist mInterpolatorPeriod:F

.field private blacklist mInterpolatorType:B

.field protected final blacklist mIntrinsic:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;

.field public final blacklist mType:B


# direct methods
.method protected constructor blacklist <init>(B)V
    .registers 3
    .param p1, "type"    # B

    .line 157
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 122
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorType:B

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorCycle:F

    .line 126
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorOvershot:F

    .line 128
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorAmplitude:F

    .line 129
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorPeriod:F

    .line 158
    iput-byte p1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mType:B

    .line 159
    iput-object p0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;

    .line 160
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist clone()Landroid/animation/Animator;
    .registers 2

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->clone()Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist clone()Landroid/animation/ValueAnimator;
    .registers 2

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->clone()Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clone()Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;
    .registers 2

    .line 258
    invoke-super {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->clone()Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;

    move-result-object v0

    return-object v0
.end method

.method public blacklist fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .registers 8
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorType:B

    .line 165
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v0

    .line 166
    .local v0, "size":I
    new-array v1, v0, [B

    .line 167
    .local v1, "data":[B
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->read([BII)I

    .line 169
    iget-byte v2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorType:B

    const/4 v3, 0x6

    if-ne v2, v3, :cond_25

    .line 170
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorCycle:F

    .line 171
    iget-byte v3, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorType:B

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolatorCycle(BF)V

    goto :goto_64

    .line 172
    :cond_25
    const/16 v3, 0xa

    if-lt v2, v3, :cond_3d

    const/16 v3, 0xb

    if-gt v2, v3, :cond_3d

    .line 174
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorOvershot:F

    .line 175
    iget-byte v3, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorType:B

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolatorBackEase(BF)V

    goto :goto_64

    .line 176
    :cond_3d
    const/16 v3, 0x16

    if-lt v2, v3, :cond_61

    const/16 v3, 0x17

    if-gt v2, v3, :cond_61

    .line 178
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorAmplitude:F

    .line 179
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorPeriod:F

    .line 180
    iget-byte v3, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorType:B

    iget v4, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorAmplitude:F

    invoke-virtual {p0, v3, v4, v2}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolatorElastic(BFF)V

    goto :goto_64

    .line 182
    :cond_61
    invoke-virtual {p0, v2}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(B)V

    .line 185
    :goto_64
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v2

    .line 187
    .local v2, "delay":I
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v3

    .line 189
    .local v3, "duration":I
    int-to-long v4, v2

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setStartDelay(J)V

    .line 190
    int-to-long v4, v3

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 191
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v4

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_92

    .line 201
    invoke-virtual {p0, v5}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setRepeatMode(I)V

    goto :goto_89

    .line 193
    :pswitch_80
    invoke-virtual {p0, v5}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setRepeatMode(I)V

    .line 194
    goto :goto_89

    .line 197
    :pswitch_84
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setRepeatMode(I)V

    .line 198
    nop

    .line 204
    :goto_89
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setRepeatCount(I)V

    .line 205
    return-void

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_84
        :pswitch_80
    .end packed-switch
.end method

.method public blacklist getSPRSize()I
    .registers 3

    .line 250
    iget-byte v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorType:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    .line 251
    const/16 v0, 0x16

    return v0

    .line 253
    :cond_8
    const/16 v0, 0x12

    return v0
.end method

.method public blacklist setInterpolator(B)V
    .registers 5
    .param p1, "interpolatorType"    # B

    .line 280
    packed-switch p1, :pswitch_data_1ea

    .line 425
    :pswitch_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected interpolatorType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :pswitch_1c
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineOut33;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineOut33;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 422
    goto/16 :goto_1e6

    .line 418
    :pswitch_26
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 419
    goto/16 :goto_1e6

    .line 415
    :pswitch_30
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 416
    goto/16 :goto_1e6

    .line 412
    :pswitch_3a
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut70;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 413
    goto/16 :goto_1e6

    .line 409
    :pswitch_44
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 410
    goto/16 :goto_1e6

    .line 406
    :pswitch_4e
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut50;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut50;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 407
    goto/16 :goto_1e6

    .line 403
    :pswitch_58
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 404
    goto/16 :goto_1e6

    .line 400
    :pswitch_62
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineIn33;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineIn33;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 401
    goto/16 :goto_1e6

    .line 397
    :pswitch_6c
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/QuintOut80;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 398
    goto/16 :goto_1e6

    .line 394
    :pswitch_76
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/QuintOut50;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/QuintOut50;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 395
    goto/16 :goto_1e6

    .line 391
    :pswitch_80
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseInOut;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 392
    goto/16 :goto_1e6

    .line 388
    :pswitch_8a
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseOut;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseOut;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 389
    goto/16 :goto_1e6

    .line 385
    :pswitch_94
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseIn;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseIn;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 386
    goto/16 :goto_1e6

    .line 382
    :pswitch_9e
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/QuintEaseInOut;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/QuintEaseInOut;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 383
    goto/16 :goto_1e6

    .line 379
    :pswitch_a8
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/QuintEaseOut;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 380
    goto/16 :goto_1e6

    .line 376
    :pswitch_b2
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/QuintEaseIn;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/QuintEaseIn;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 377
    goto/16 :goto_1e6

    .line 373
    :pswitch_bc
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/QuartEaseInOut;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/QuartEaseInOut;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 374
    goto/16 :goto_1e6

    .line 370
    :pswitch_c6
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/QuartEaseOut;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/QuartEaseOut;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 371
    goto/16 :goto_1e6

    .line 367
    :pswitch_d0
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/QuartEaseIn;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/QuartEaseIn;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 368
    goto/16 :goto_1e6

    .line 364
    :pswitch_da
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/QuadEaseInOut;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/QuadEaseInOut;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 365
    goto/16 :goto_1e6

    .line 361
    :pswitch_e4
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/QuadEaseOut;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/QuadEaseOut;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 362
    goto/16 :goto_1e6

    .line 358
    :pswitch_ee
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/QuadEaseIn;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/QuadEaseIn;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 359
    goto/16 :goto_1e6

    .line 355
    :pswitch_f8
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/ExpoEaseInOut;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/ExpoEaseInOut;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 356
    goto/16 :goto_1e6

    .line 352
    :pswitch_102
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/ExpoEaseOut;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/ExpoEaseOut;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 353
    goto/16 :goto_1e6

    .line 349
    :pswitch_10c
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/ExpoEaseIn;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/ExpoEaseIn;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 350
    goto/16 :goto_1e6

    .line 346
    :pswitch_116
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseInOut;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseInOut;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 347
    goto/16 :goto_1e6

    .line 343
    :pswitch_120
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 344
    goto/16 :goto_1e6

    .line 340
    :pswitch_12a
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseIn;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseIn;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 341
    goto/16 :goto_1e6

    .line 337
    :pswitch_134
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseInOut;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseInOut;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 338
    goto/16 :goto_1e6

    .line 334
    :pswitch_13e
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseOut;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseOut;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 335
    goto/16 :goto_1e6

    .line 331
    :pswitch_148
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 332
    goto/16 :goto_1e6

    .line 328
    :pswitch_152
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/CircEaseInOut;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/CircEaseInOut;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 329
    goto/16 :goto_1e6

    .line 325
    :pswitch_15c
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/CircEaseOut;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/CircEaseOut;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 326
    goto/16 :goto_1e6

    .line 322
    :pswitch_166
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/CircEaseIn;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/CircEaseIn;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 323
    goto/16 :goto_1e6

    .line 319
    :pswitch_170
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/BounceEaseInOut;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/BounceEaseInOut;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 320
    goto/16 :goto_1e6

    .line 316
    :pswitch_17a
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/BounceEaseOut;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/BounceEaseOut;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 317
    goto :goto_1e6

    .line 313
    :pswitch_183
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/BounceEaseIn;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/BounceEaseIn;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 314
    goto :goto_1e6

    .line 310
    :pswitch_18c
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseInOut;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseInOut;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 311
    goto :goto_1e6

    .line 307
    :pswitch_195
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseOut;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseOut;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 308
    goto :goto_1e6

    .line 304
    :pswitch_19e
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseIn;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseIn;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 305
    goto :goto_1e6

    .line 300
    :pswitch_1a7
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 301
    goto :goto_1e6

    .line 297
    :pswitch_1b0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 298
    goto :goto_1e6

    .line 294
    :pswitch_1b9
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 295
    goto :goto_1e6

    .line 291
    :pswitch_1c2
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 292
    goto :goto_1e6

    .line 288
    :pswitch_1cb
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 289
    goto :goto_1e6

    .line 285
    :pswitch_1d4
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 286
    goto :goto_1e6

    .line 282
    :pswitch_1dd
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 283
    nop

    .line 428
    :goto_1e6
    iput-byte p1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorType:B

    .line 429
    return-void

    nop

    :pswitch_data_1ea
    .packed-switch 0x1
        :pswitch_1dd
        :pswitch_3
        :pswitch_1d4
        :pswitch_1cb
        :pswitch_1c2
        :pswitch_3
        :pswitch_1b9
        :pswitch_1b0
        :pswitch_1a7
        :pswitch_19e
        :pswitch_195
        :pswitch_18c
        :pswitch_183
        :pswitch_17a
        :pswitch_170
        :pswitch_166
        :pswitch_15c
        :pswitch_152
        :pswitch_148
        :pswitch_13e
        :pswitch_134
        :pswitch_12a
        :pswitch_120
        :pswitch_116
        :pswitch_10c
        :pswitch_102
        :pswitch_f8
        :pswitch_ee
        :pswitch_e4
        :pswitch_da
        :pswitch_d0
        :pswitch_c6
        :pswitch_bc
        :pswitch_b2
        :pswitch_a8
        :pswitch_9e
        :pswitch_94
        :pswitch_8a
        :pswitch_80
        :pswitch_76
        :pswitch_6c
        :pswitch_62
        :pswitch_58
        :pswitch_4e
        :pswitch_44
        :pswitch_3a
        :pswitch_30
        :pswitch_26
        :pswitch_1c
    .end packed-switch
.end method

.method public blacklist setInterpolatorBackEase(BF)V
    .registers 6
    .param p1, "interpolatorType"    # B
    .param p2, "overshot"    # F

    .line 445
    packed-switch p1, :pswitch_data_3c

    .line 456
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected interpolatorType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :pswitch_1c
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseInOut;

    invoke-direct {v0, p2}, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseInOut;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 451
    goto :goto_37

    .line 453
    :pswitch_25
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseOut;

    invoke-direct {v0, p2}, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseOut;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 454
    goto :goto_37

    .line 447
    :pswitch_2e
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseIn;

    invoke-direct {v0, p2}, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseIn;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 448
    nop

    .line 459
    :goto_37
    iput-byte p1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorType:B

    .line 460
    iput p2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorOvershot:F

    .line 461
    return-void

    :pswitch_data_3c
    .packed-switch 0xa
        :pswitch_2e
        :pswitch_25
        :pswitch_1c
    .end packed-switch
.end method

.method public blacklist setInterpolatorCycle(BF)V
    .registers 6
    .param p1, "interpolatorType"    # B
    .param p2, "interpolatorCycle"    # F

    .line 432
    packed-switch p1, :pswitch_data_2a

    .line 437
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected interpolatorType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :pswitch_1c
    new-instance v0, Landroid/view/animation/CycleInterpolator;

    invoke-direct {v0, p2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 435
    nop

    .line 440
    iput-byte p1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorType:B

    .line 441
    iput p2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorCycle:F

    .line 442
    return-void

    :pswitch_data_2a
    .packed-switch 0x6
        :pswitch_1c
    .end packed-switch
.end method

.method public blacklist setInterpolatorElastic(BFF)V
    .registers 7
    .param p1, "interpolatorType"    # B
    .param p2, "amplitude"    # F
    .param p3, "period"    # F

    .line 464
    packed-switch p1, :pswitch_data_3e

    .line 475
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected interpolatorType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :pswitch_1c
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseInOut;

    invoke-direct {v0, p2, p3}, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseInOut;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 470
    goto :goto_37

    .line 472
    :pswitch_25
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;

    invoke-direct {v0, p2, p3}, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 473
    goto :goto_37

    .line 466
    :pswitch_2e
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseIn;

    invoke-direct {v0, p2, p3}, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseIn;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 467
    nop

    .line 478
    :goto_37
    iput-byte p1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorType:B

    .line 479
    iput p2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorAmplitude:F

    .line 480
    iput p3, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorPeriod:F

    .line 481
    return-void

    :pswitch_data_3e
    .packed-switch 0x16
        :pswitch_2e
        :pswitch_25
        :pswitch_1c
    .end packed-switch
.end method

.method public blacklist toSPR(Ljava/io/DataOutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    iget-byte v0, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorType:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 210
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 211
    .local v0, "bytestream":Ljava/io/ByteArrayOutputStream;
    iget-byte v1, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorType:B

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1a

    .line 212
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 213
    .local v1, "ostream":Ljava/io/DataOutputStream;
    iget v2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorCycle:F

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 214
    .end local v1    # "ostream":Ljava/io/DataOutputStream;
    goto :goto_46

    :cond_1a
    const/16 v2, 0xa

    if-lt v1, v2, :cond_2d

    const/16 v2, 0xb

    if-gt v1, v2, :cond_2d

    .line 216
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 217
    .restart local v1    # "ostream":Ljava/io/DataOutputStream;
    iget v2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorOvershot:F

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .end local v1    # "ostream":Ljava/io/DataOutputStream;
    goto :goto_45

    .line 218
    :cond_2d
    const/16 v2, 0x16

    if-lt v1, v2, :cond_45

    const/16 v2, 0x17

    if-gt v1, v2, :cond_45

    .line 220
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 221
    .restart local v1    # "ostream":Ljava/io/DataOutputStream;
    iget v2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorAmplitude:F

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 222
    iget v2, p0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mInterpolatorPeriod:F

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_46

    .line 218
    .end local v1    # "ostream":Ljava/io/DataOutputStream;
    :cond_45
    :goto_45
    nop

    .line 225
    :goto_46
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 226
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-lez v1, :cond_5a

    .line 227
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 230
    :cond_5a
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->getStartDelay()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 231
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->getDuration()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 232
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->getRepeatMode()I

    move-result v1

    const/4 v2, 0x2

    packed-switch v1, :pswitch_data_88

    .line 242
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_7f

    .line 238
    :pswitch_76
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 239
    goto :goto_7f

    .line 234
    :pswitch_7b
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 235
    nop

    .line 246
    :goto_7f
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->getRepeatCount()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 247
    return-void

    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_76
    .end packed-switch
.end method

.method public blacklist update(Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;)Z
    .registers 6
    .param p1, "parameter"    # Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    .line 268
    monitor-enter p0

    .line 269
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->getCurrentPlayTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_13

    iget-boolean v0, p1, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isLastFrame:Z

    if-eqz v0, :cond_10

    goto :goto_13

    .line 272
    :cond_10
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 270
    :cond_13
    :goto_13
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->updateValues(Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 274
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public abstract blacklist updateValues(Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;)Z
.end method
