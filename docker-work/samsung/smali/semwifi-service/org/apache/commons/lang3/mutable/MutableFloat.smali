.class public Lorg/apache/commons/lang3/mutable/MutableFloat;
.super Ljava/lang/Number;
.source "MutableFloat.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/lang3/mutable/MutableFloat;",
        ">;",
        "Lorg/apache/commons/lang3/mutable/Mutable<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x158f131a2L


# instance fields
.field private value:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 53
    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 64
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 76
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void
.end method


# virtual methods
.method public add(F)V
    .registers 3

    .line 206
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .registers 3

    .line 217
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    add-float/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void
.end method

.method public addAndGet(F)F
    .registers 3

    .line 250
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return v0
.end method

.method public addAndGet(Ljava/lang/Number;)F
    .registers 3

    .line 264
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    add-float/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 27
    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableFloat;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableFloat;->compareTo(Lorg/apache/commons/lang3/mutable/MutableFloat;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/apache/commons/lang3/mutable/MutableFloat;)I
    .registers 2

    .line 406
    iget p0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    iget p1, p1, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public decrement()V
    .registers 3

    .line 170
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void
.end method

.method public decrementAndGet()F
    .registers 3

    .line 194
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return v0
.end method

.method public doubleValue()D
    .registers 3

    .line 336
    iget p0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 383
    instance-of v0, p1, Lorg/apache/commons/lang3/mutable/MutableFloat;

    if-eqz v0, :cond_16

    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableFloat;

    iget p1, p1, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 384
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    iget p0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    if-ne p1, p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public floatValue()F
    .registers 1

    .line 326
    iget p0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return p0
.end method

.method public getAndAdd(F)F
    .registers 3

    .line 277
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    add-float/2addr p1, v0

    .line 278
    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return v0
.end method

.method public getAndAdd(Ljava/lang/Number;)F
    .registers 3

    .line 292
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 293
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    add-float/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return v0
.end method

.method public getAndDecrement()F
    .registers 3

    .line 181
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v0, v1

    .line 182
    iput v1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return v0
.end method

.method public getAndIncrement()F
    .registers 3

    .line 147
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    .line 148
    iput v1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return v0
.end method

.method public getValue()Ljava/lang/Float;
    .registers 1

    .line 87
    iget p0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 1

    .line 27
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableFloat;->getValue()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 394
    iget p0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    return p0
.end method

.method public increment()V
    .registers 3

    .line 136
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void
.end method

.method public incrementAndGet()F
    .registers 3

    .line 160
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return v0
.end method

.method public intValue()I
    .registers 1

    .line 306
    iget p0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    float-to-int p0, p0

    return p0
.end method

.method public isInfinite()Z
    .registers 1

    .line 126
    iget p0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    return p0
.end method

.method public isNaN()Z
    .registers 1

    .line 117
    iget p0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    return p0
.end method

.method public longValue()J
    .registers 3

    .line 316
    iget p0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    float-to-long v0, p0

    return-wide v0
.end method

.method public setValue(F)V
    .registers 2

    .line 96
    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .registers 2

    .line 107
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .registers 2

    .line 27
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableFloat;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(F)V
    .registers 3

    .line 227
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .registers 3

    .line 238
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void
.end method

.method public toFloat()Ljava/lang/Float;
    .registers 1

    .line 346
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableFloat;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 417
    iget p0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
