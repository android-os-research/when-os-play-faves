.class public Lorg/apache/commons/lang3/math/IEEE754rUtils;
.super Ljava/lang/Object;
.source "IEEE754rUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static max(DD)D
    .registers 5

    .line 210
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_7

    return-wide p2

    .line 213
    :cond_7
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_e

    return-wide p0

    .line 216
    :cond_e
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static max(DDD)D
    .registers 6

    .line 197
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(DD)D

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static varargs max([D)D
    .registers 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "The Array must not be null"

    .line 152
    invoke-static {p0, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    array-length v1, p0

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v0

    :goto_f
    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Array cannot be empty."

    invoke-static {v1, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 156
    aget-wide v0, p0, v0

    .line 157
    :goto_18
    array-length v3, p0

    if-ge v2, v3, :cond_24

    .line 158
    aget-wide v3, p0, v2

    invoke-static {v3, v4, v0, v1}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(DD)D

    move-result-wide v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_24
    return-wide v0
.end method

.method public static max(FF)F
    .registers 3

    .line 244
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    return p1

    .line 247
    :cond_7
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_e

    return p0

    .line 250
    :cond_e
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static max(FFF)F
    .registers 3

    .line 231
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(FF)F

    move-result p0

    invoke-static {p0, p2}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(FF)F

    move-result p0

    return p0
.end method

.method public static varargs max([F)F
    .registers 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "The Array must not be null"

    .line 174
    invoke-static {p0, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    array-length v1, p0

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v0

    :goto_f
    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Array cannot be empty."

    invoke-static {v1, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 178
    aget v0, p0, v0

    .line 179
    :goto_18
    array-length v1, p0

    if-ge v2, v1, :cond_24

    .line 180
    aget v1, p0, v2

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(FF)F

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_24
    return v0
.end method

.method public static min(DD)D
    .registers 5

    .line 98
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_7

    return-wide p2

    .line 101
    :cond_7
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_e

    return-wide p0

    .line 104
    :cond_e
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static min(DDD)D
    .registers 6

    .line 85
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(DD)D

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static varargs min([D)D
    .registers 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "The Array must not be null"

    .line 40
    invoke-static {p0, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    array-length v1, p0

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v0

    :goto_f
    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Array cannot be empty."

    invoke-static {v1, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    aget-wide v0, p0, v0

    .line 45
    :goto_18
    array-length v3, p0

    if-ge v2, v3, :cond_24

    .line 46
    aget-wide v3, p0, v2

    invoke-static {v3, v4, v0, v1}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(DD)D

    move-result-wide v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_24
    return-wide v0
.end method

.method public static min(FF)F
    .registers 3

    .line 132
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    return p1

    .line 135
    :cond_7
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_e

    return p0

    .line 138
    :cond_e
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static min(FFF)F
    .registers 3

    .line 119
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(FF)F

    move-result p0

    invoke-static {p0, p2}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(FF)F

    move-result p0

    return p0
.end method

.method public static varargs min([F)F
    .registers 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "The Array must not be null"

    .line 62
    invoke-static {p0, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    array-length v1, p0

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v0

    :goto_f
    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Array cannot be empty."

    invoke-static {v1, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 66
    aget v0, p0, v0

    .line 67
    :goto_18
    array-length v1, p0

    if-ge v2, v1, :cond_24

    .line 68
    aget v1, p0, v2

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(FF)F

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_24
    return v0
.end method
