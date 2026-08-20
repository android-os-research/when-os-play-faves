.class public Lorg/apache/commons/lang3/mutable/MutableDouble;
.super Ljava/lang/Number;
.source "MutableDouble.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/lang3/mutable/MutableDouble;",
        ">;",
        "Lorg/apache/commons/lang3/mutable/Mutable<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5e9a330cL


# instance fields
.field private value:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method public constructor <init>(D)V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 53
    iput-wide p1, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 64
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 75
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 76
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-void
.end method


# virtual methods
.method public add(D)V
    .registers 5

    .line 206
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .registers 6

    .line 217
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-void
.end method

.method public addAndGet(D)D
    .registers 5

    .line 250
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-wide v0
.end method

.method public addAndGet(Ljava/lang/Number;)D
    .registers 6

    .line 264
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-wide v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 27
    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableDouble;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableDouble;->compareTo(Lorg/apache/commons/lang3/mutable/MutableDouble;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/apache/commons/lang3/mutable/MutableDouble;)I
    .registers 4

    .line 405
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    iget-wide p0, p1, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method public decrement()V
    .registers 5

    .line 170
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-void
.end method

.method public decrementAndGet()D
    .registers 5

    .line 194
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-wide v0
.end method

.method public doubleValue()D
    .registers 3

    .line 336
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 381
    instance-of v0, p1, Lorg/apache/commons/lang3/mutable/MutableDouble;

    if-eqz v0, :cond_18

    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableDouble;

    iget-wide v0, p1, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    .line 382
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide p0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public floatValue()F
    .registers 3

    .line 326
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    double-to-float p0, v0

    return p0
.end method

.method public getAndAdd(D)D
    .registers 5

    .line 277
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    add-double/2addr p1, v0

    .line 278
    iput-wide p1, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-wide v0
.end method

.method public getAndAdd(Ljava/lang/Number;)D
    .registers 6

    .line 292
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    .line 293
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-wide v0
.end method

.method public getAndDecrement()D
    .registers 5

    .line 181
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v2, v0, v2

    .line 182
    iput-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-wide v0
.end method

.method public getAndIncrement()D
    .registers 5

    .line 147
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v0

    .line 148
    iput-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-wide v0
.end method

.method public getValue()Ljava/lang/Double;
    .registers 3

    .line 87
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 1

    .line 27
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableDouble;->getValue()Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 5

    .line 392
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 p0, 0x20

    ushr-long v2, v0, p0

    xor-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public increment()V
    .registers 5

    .line 136
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-void
.end method

.method public incrementAndGet()D
    .registers 5

    .line 160
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-wide v0
.end method

.method public intValue()I
    .registers 3

    .line 306
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    double-to-int p0, v0

    return p0
.end method

.method public isInfinite()Z
    .registers 3

    .line 126
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    return p0
.end method

.method public isNaN()Z
    .registers 3

    .line 117
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    return p0
.end method

.method public longValue()J
    .registers 3

    .line 316
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public setValue(D)V
    .registers 3

    .line 96
    iput-wide p1, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .registers 4

    .line 107
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .registers 2

    .line 27
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableDouble;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(D)V
    .registers 5

    .line 227
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .registers 6

    .line 238
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-void
.end method

.method public toDouble()Ljava/lang/Double;
    .registers 3

    .line 346
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableDouble;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 416
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
