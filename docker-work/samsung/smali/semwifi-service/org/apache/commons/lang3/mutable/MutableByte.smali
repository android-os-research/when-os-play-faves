.class public Lorg/apache/commons/lang3/mutable/MutableByte;
.super Ljava/lang/Number;
.source "MutableByte.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/lang3/mutable/MutableByte;",
        ">;",
        "Lorg/apache/commons/lang3/mutable/Mutable<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5e85be21L


# instance fields
.field private value:B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method public constructor <init>(B)V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 78
    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p1

    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return-void
.end method


# virtual methods
.method public add(B)V
    .registers 3

    .line 189
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .registers 3

    .line 200
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return-void
.end method

.method public addAndGet(B)B
    .registers 3

    .line 233
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return p1
.end method

.method public addAndGet(Ljava/lang/Number;)B
    .registers 3

    .line 247
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return p1
.end method

.method public byteValue()B
    .registers 1

    .line 289
    iget-byte p0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 29
    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableByte;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableByte;->compareTo(Lorg/apache/commons/lang3/mutable/MutableByte;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/apache/commons/lang3/mutable/MutableByte;)I
    .registers 2

    .line 378
    iget-byte p0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    iget-byte p1, p1, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(BB)I

    move-result p0

    return p0
.end method

.method public decrement()V
    .registers 2

    .line 153
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return-void
.end method

.method public decrementAndGet()B
    .registers 2

    .line 177
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return v0
.end method

.method public doubleValue()D
    .registers 3

    .line 329
    iget-byte p0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    int-to-double v0, p0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 353
    instance-of v0, p1, Lorg/apache/commons/lang3/mutable/MutableByte;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 354
    iget-byte p0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableByte;

    invoke-virtual {p1}, Lorg/apache/commons/lang3/mutable/MutableByte;->byteValue()B

    move-result p1

    if-ne p0, p1, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public floatValue()F
    .registers 1

    .line 319
    iget-byte p0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    int-to-float p0, p0

    return p0
.end method

.method public getAndAdd(B)B
    .registers 3

    .line 260
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    add-int/2addr p1, v0

    int-to-byte p1, p1

    .line 261
    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return v0
.end method

.method public getAndAdd(Ljava/lang/Number;)B
    .registers 3

    .line 275
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    .line 276
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    add-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return v0
.end method

.method public getAndDecrement()B
    .registers 3

    .line 164
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    add-int/lit8 v1, v0, -0x1

    int-to-byte v1, v1

    .line 165
    iput-byte v1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return v0
.end method

.method public getAndIncrement()B
    .registers 3

    .line 130
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    .line 131
    iput-byte v1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return v0
.end method

.method public getValue()Ljava/lang/Byte;
    .registers 1

    .line 89
    iget-byte p0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 1

    .line 29
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableByte;->getValue()Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 366
    iget-byte p0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return p0
.end method

.method public increment()V
    .registers 2

    .line 119
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return-void
.end method

.method public incrementAndGet()B
    .registers 2

    .line 143
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return v0
.end method

.method public intValue()I
    .registers 1

    .line 299
    iget-byte p0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return p0
.end method

.method public longValue()J
    .registers 3

    .line 309
    iget-byte p0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    int-to-long v0, p0

    return-wide v0
.end method

.method public setValue(B)V
    .registers 2

    .line 98
    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .registers 2

    .line 109
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .registers 2

    .line 29
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableByte;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(B)V
    .registers 3

    .line 210
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    sub-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .registers 3

    .line 221
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    sub-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return-void
.end method

.method public toByte()Ljava/lang/Byte;
    .registers 1

    .line 339
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableByte;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 389
    iget-byte p0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
