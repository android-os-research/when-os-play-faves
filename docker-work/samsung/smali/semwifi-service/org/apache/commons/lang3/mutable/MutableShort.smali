.class public Lorg/apache/commons/lang3/mutable/MutableShort;
.super Ljava/lang/Number;
.source "MutableShort.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/lang3/mutable/MutableShort;",
        ">;",
        "Lorg/apache/commons/lang3/mutable/Mutable<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7f4d983fL


# instance fields
.field private value:S


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 78
    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p1

    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public constructor <init>(S)V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Number;)V
    .registers 3

    .line 200
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    add-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public add(S)V
    .registers 3

    .line 189
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public addAndGet(Ljava/lang/Number;)S
    .registers 3

    .line 247
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    add-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return p1
.end method

.method public addAndGet(S)S
    .registers 3

    .line 233
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 29
    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableShort;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableShort;->compareTo(Lorg/apache/commons/lang3/mutable/MutableShort;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/apache/commons/lang3/mutable/MutableShort;)I
    .registers 2

    .line 378
    iget-short p0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    iget-short p1, p1, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(SS)I

    move-result p0

    return p0
.end method

.method public decrement()V
    .registers 2

    .line 153
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public decrementAndGet()S
    .registers 2

    .line 177
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return v0
.end method

.method public doubleValue()D
    .registers 3

    .line 329
    iget-short p0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    int-to-double v0, p0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 353
    instance-of v0, p1, Lorg/apache/commons/lang3/mutable/MutableShort;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 354
    iget-short p0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableShort;

    invoke-virtual {p1}, Lorg/apache/commons/lang3/mutable/MutableShort;->shortValue()S

    move-result p1

    if-ne p0, p1, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public floatValue()F
    .registers 1

    .line 319
    iget-short p0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    int-to-float p0, p0

    return p0
.end method

.method public getAndAdd(Ljava/lang/Number;)S
    .registers 3

    .line 275
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 276
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    add-int/2addr p1, v0

    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return v0
.end method

.method public getAndAdd(S)S
    .registers 3

    .line 260
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/2addr p1, v0

    int-to-short p1, p1

    .line 261
    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return v0
.end method

.method public getAndDecrement()S
    .registers 3

    .line 164
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v1, v0, -0x1

    int-to-short v1, v1

    .line 165
    iput-short v1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return v0
.end method

.method public getAndIncrement()S
    .registers 3

    .line 130
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    .line 131
    iput-short v1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 1

    .line 29
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableShort;->getValue()Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/Short;
    .registers 1

    .line 89
    iget-short p0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 366
    iget-short p0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return p0
.end method

.method public increment()V
    .registers 2

    .line 119
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public incrementAndGet()S
    .registers 2

    .line 143
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return v0
.end method

.method public intValue()I
    .registers 1

    .line 299
    iget-short p0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return p0
.end method

.method public longValue()J
    .registers 3

    .line 309
    iget-short p0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    int-to-long v0, p0

    return-wide v0
.end method

.method public setValue(Ljava/lang/Number;)V
    .registers 2

    .line 109
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .registers 2

    .line 29
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableShort;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public setValue(S)V
    .registers 2

    .line 98
    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public shortValue()S
    .registers 1

    .line 289
    iget-short p0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return p0
.end method

.method public subtract(Ljava/lang/Number;)V
    .registers 3

    .line 221
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    sub-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public subtract(S)V
    .registers 3

    .line 210
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    sub-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public toShort()Ljava/lang/Short;
    .registers 1

    .line 339
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableShort;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 389
    iget-short p0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
