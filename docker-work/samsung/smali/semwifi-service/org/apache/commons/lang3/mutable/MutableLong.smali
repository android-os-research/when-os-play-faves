.class public Lorg/apache/commons/lang3/mutable/MutableLong;
.super Ljava/lang/Number;
.source "MutableLong.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/lang3/mutable/MutableLong;",
        ">;",
        "Lorg/apache/commons/lang3/mutable/Mutable<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xeaa4a2677L


# instance fields
.field private value:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput-wide p1, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 78
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method


# virtual methods
.method public add(J)V
    .registers 5

    .line 189
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .registers 6

    .line 200
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public addAndGet(J)J
    .registers 5

    .line 233
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-wide v0
.end method

.method public addAndGet(Ljava/lang/Number;)J
    .registers 6

    .line 247
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-wide v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 29
    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableLong;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableLong;->compareTo(Lorg/apache/commons/lang3/mutable/MutableLong;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/apache/commons/lang3/mutable/MutableLong;)I
    .registers 4

    .line 368
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    iget-wide p0, p1, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-static {v0, v1, p0, p1}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public decrement()V
    .registers 5

    .line 153
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public decrementAndGet()J
    .registers 5

    .line 177
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-wide v0
.end method

.method public doubleValue()D
    .registers 3

    .line 319
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 343
    instance-of v0, p1, Lorg/apache/commons/lang3/mutable/MutableLong;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 344
    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableLong;

    invoke-virtual {p1}, Lorg/apache/commons/lang3/mutable/MutableLong;->longValue()J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-nez p0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public floatValue()F
    .registers 3

    .line 309
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    long-to-float p0, v0

    return p0
.end method

.method public getAndAdd(J)J
    .registers 5

    .line 260
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    add-long/2addr p1, v0

    .line 261
    iput-wide p1, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-wide v0
.end method

.method public getAndAdd(Ljava/lang/Number;)J
    .registers 6

    .line 275
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 276
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-wide v0
.end method

.method public getAndDecrement()J
    .registers 5

    .line 164
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    .line 165
    iput-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-wide v0
.end method

.method public getAndIncrement()J
    .registers 5

    .line 130
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 131
    iput-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/Long;
    .registers 3

    .line 89
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 1

    .line 29
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableLong;->getValue()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 5

    .line 356
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    const/16 p0, 0x20

    ushr-long v2, v0, p0

    xor-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public increment()V
    .registers 5

    .line 119
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public incrementAndGet()J
    .registers 5

    .line 143
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-wide v0
.end method

.method public intValue()I
    .registers 3

    .line 289
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    long-to-int p0, v0

    return p0
.end method

.method public longValue()J
    .registers 3

    .line 299
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-wide v0
.end method

.method public setValue(J)V
    .registers 3

    .line 98
    iput-wide p1, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .registers 4

    .line 109
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .registers 2

    .line 29
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableLong;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(J)V
    .registers 5

    .line 210
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .registers 6

    .line 221
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public toLong()Ljava/lang/Long;
    .registers 3

    .line 329
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableLong;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 379
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
