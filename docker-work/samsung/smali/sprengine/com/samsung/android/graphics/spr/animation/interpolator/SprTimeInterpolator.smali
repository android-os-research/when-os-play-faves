.class public Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;
.super Ljava/lang/Object;
.source "SprTimeInterpolator.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# static fields
.field static final DAY_MILLISECONDS:I = 0x5265c00

.field public static final DAY_TYPE:I = 0x1

.field static final WEEK_MILLISECONDS:I = 0x240c8400

.field public static final WEEK_TYPE:I = 0x2


# instance fields
.field private mDuration:I

.field private mPeriodType:I

.field private mQuotient:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mDuration:I

    .line 12
    iput v0, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mPeriodType:I

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mQuotient:I

    .line 17
    return-void
.end method

.method public constructor <init>(III)V
    .registers 5
    .param p1, "duration"    # I
    .param p2, "type"    # I
    .param p3, "quotient"    # I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mDuration:I

    .line 12
    iput v0, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mPeriodType:I

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mQuotient:I

    .line 20
    iput p1, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mDuration:I

    .line 21
    iput p2, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mPeriodType:I

    .line 22
    iput p3, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mQuotient:I

    .line 23
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 15
    .param p1, "input"    # F

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 40
    .local v0, "currentTime":J
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    .line 42
    .local v2, "now":J
    iget v4, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mPeriodType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_18

    .line 43
    const-wide/32 v6, 0x5265c00

    rem-long/2addr v2, v6

    goto :goto_22

    .line 45
    :cond_18
    const-wide/32 v6, 0xf731400

    sub-long v6, v2, v6

    const-wide/32 v8, 0x240c8400

    rem-long v2, v6, v8

    .line 48
    :goto_22
    iget v4, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mDuration:I

    int-to-long v6, v4

    rem-long v6, v2, v6

    .line 50
    .local v6, "tick":J
    iget v8, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mQuotient:I

    if-le v8, v5, :cond_31

    .line 51
    int-to-long v9, v8

    div-long v9, v6, v9

    int-to-long v11, v8

    mul-long v6, v9, v11

    .line 54
    :cond_31
    long-to-float v5, v6

    int-to-float v4, v4

    div-float/2addr v5, v4

    return v5
.end method

.method public setDuration(I)V
    .registers 2
    .param p1, "duration"    # I

    .line 26
    iput p1, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mDuration:I

    .line 27
    return-void
.end method

.method public setPeriodType(I)V
    .registers 2
    .param p1, "type"    # I

    .line 30
    iput p1, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mPeriodType:I

    .line 31
    return-void
.end method

.method public setQuotient(I)V
    .registers 2
    .param p1, "quotient"    # I

    .line 34
    iput p1, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mQuotient:I

    .line 35
    return-void
.end method
