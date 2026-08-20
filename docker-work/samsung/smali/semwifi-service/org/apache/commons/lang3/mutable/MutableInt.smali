.class public Lorg/apache/commons/lang3/mutable/MutableInt;
.super Ljava/lang/Number;
.source "MutableInt.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/lang3/mutable/MutableInt;",
        ">;",
        "Lorg/apache/commons/lang3/mutable/Mutable<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x77401786b8L


# instance fields
.field private value:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method


# virtual methods
.method public add(I)V
    .registers 3

    .line 189
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .registers 3

    .line 200
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public addAndGet(I)I
    .registers 3

    .line 233
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return v0
.end method

.method public addAndGet(Ljava/lang/Number;)I
    .registers 3

    .line 247
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 29
    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableInt;->compareTo(Lorg/apache/commons/lang3/mutable/MutableInt;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/apache/commons/lang3/mutable/MutableInt;)I
    .registers 2

    .line 368
    iget p0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    iget p1, p1, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(II)I

    move-result p0

    return p0
.end method

.method public decrement()V
    .registers 2

    .line 153
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public decrementAndGet()I
    .registers 2

    .line 177
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return v0
.end method

.method public doubleValue()D
    .registers 3

    .line 319
    iget p0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    int-to-double v0, p0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 343
    instance-of v0, p1, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 344
    iget p0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {p1}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result p1

    if-ne p0, p1, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public floatValue()F
    .registers 1

    .line 309
    iget p0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    int-to-float p0, p0

    return p0
.end method

.method public getAndAdd(I)I
    .registers 3

    .line 260
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/2addr p1, v0

    .line 261
    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return v0
.end method

.method public getAndAdd(Ljava/lang/Number;)I
    .registers 3

    .line 275
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 276
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return v0
.end method

.method public getAndDecrement()I
    .registers 3

    .line 164
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v1, v0, -0x1

    .line 165
    iput v1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return v0
.end method

.method public getAndIncrement()I
    .registers 3

    .line 130
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v1, v0, 0x1

    .line 131
    iput v1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return v0
.end method

.method public getValue()Ljava/lang/Integer;
    .registers 1

    .line 89
    iget p0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 1

    .line 29
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableInt;->getValue()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 356
    iget p0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return p0
.end method

.method public increment()V
    .registers 2

    .line 119
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public incrementAndGet()I
    .registers 2

    .line 143
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return v0
.end method

.method public intValue()I
    .registers 1

    .line 289
    iget p0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return p0
.end method

.method public longValue()J
    .registers 3

    .line 299
    iget p0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public setValue(I)V
    .registers 2

    .line 98
    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .registers 2

    .line 109
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .registers 2

    .line 29
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableInt;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(I)V
    .registers 3

    .line 210
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .registers 3

    .line 221
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public toInteger()Ljava/lang/Integer;
    .registers 1

    .line 329
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 379
    iget p0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
